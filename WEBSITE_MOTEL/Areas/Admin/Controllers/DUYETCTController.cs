using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.Mvc;
using System.Net.Mail;
using WEBSITE_MOTEL.Models;
using System.Net;

namespace WEBSITE_MOTEL.Areas.Admin.Controllers
{
    public class DUYETCTController : Controller
    {
        // GET: Admin/DUYETCT
        TimNhaTroDataContext data = new TimNhaTroDataContext();
        public ActionResult CTApprove(int? page, string strSearch)
        {
            if (Session["Admin"] == null || Session["Admin"].ToString() == "")
            {
                return Redirect("~/Admin/Home/Login");
            }
            ViewData["strSearch"] = strSearch;

            int iSize = 5;
            int iPageNum = (page ?? 1);
            if (!string.IsNullOrEmpty(strSearch))
            {
                var ct = (from a in data.TAIKHOANs
                          join b in data.CHUTROs on a.Id equals b.Id_TaiKhoan
                          join c in data.ANH_CCCDs on a.Id equals c.IdTaiKhoan
                          where b.TrangThai == 0
                          select new TaiKhoan()
                          {
                              sId = a.Id,
                              sTaiKhoanCT = a.TaiKhoan,
                              sMatKhauCT = a.MatKhau,
                              sHotenCT = a.HoTen,
                              sCCCD = a.CCCD,
                              sDiaChi = a.DiaChi,
                              sTrangThai = (int)b.TrangThai,
                              sEmailCT = a.Email,
                              sNgaySinh = (DateTime)a.NgaySinh,
                              sSDTCT = a.SDT,
                              sidcardphoto = c.IdCardPhoto,
                              sidcardphoto2 = c.IdCardPhoto2,
                          });
                return View(ct.OrderByDescending(n => n.sTrangThai == 0).ToPagedList(iPageNum, iSize));
            }
            else
            {
                var ct = (from a in data.TAIKHOANs
                          join b in data.CHUTROs on a.Id equals b.Id_TaiKhoan
                          join c in data.ANH_CCCDs on a.Id equals c.IdTaiKhoan
                          where b.TrangThai == 0
                          select new TaiKhoan()
                          {
                              sId = a.Id,
                              sTaiKhoanCT = a.TaiKhoan,
                              sMatKhauCT = a.MatKhau,
                              sHotenCT = a.HoTen,
                              sCCCD = a.CCCD,
                              sDiaChi = a.DiaChi,
                              sTrangThai = (int)b.TrangThai,
                              sEmailCT = a.Email,
                              sNgaySinh = (DateTime)a.NgaySinh,
                              sSDTCT = a.SDT,
                              sidcardphoto = c.IdCardPhoto,
                              sidcardphoto2 = c.IdCardPhoto2,
                          });
                return View(ct.OrderByDescending(n => n.sTrangThai == 0).ToPagedList(iPageNum, iSize));
            }
        }
        public void SendEmail(string emailpost)
        {
            // Tạo đối tượng SmtpClient với thông tin cấu hình
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.EnableSsl = true;
            smtpClient.Credentials = new NetworkCredential("luongminhtam0710@gmail.com", "minhtam710");

            // Tạo đối tượng MailMessage với thông tin người gửi và người nhận
            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("luongminhtam0710@gmail.com");
            mailMessage.To.Add("recipient@example.com");
            mailMessage.Subject = "Subject of the email";
            mailMessage.Body = "Body of the email";

            // Gửi email
            smtpClient.Send(mailMessage);
        }
        public ActionResult DuyetCT(int id)
        {
            CHUTRO CT = data.CHUTROs.FirstOrDefault(p => p.TrangThai == 0);
            TAIKHOAN tk = data.TAIKHOANs.Where(n => n.Id == id).FirstOrDefault();
            if (CT != null)
            {
                CT.TrangThai = 1;
                data.SubmitChanges();
                //string senderEmail = "luongminhtam0710@gmail@minhtam710.com";
                //string senderPassword = "minhtam710";
                //string receiverEmail = tk.Email;
                //string subject = "Admin duyệt bài";
                //string body = "Tài khoản của bạn đã được duyệt. Bây giờ bạn có thể vào trang web với tư cách chủ trọ." +
                //    "Trân trọng.";

                //bool isEmailSent = EmailHelper.SendEmail(senderEmail, senderPassword, receiverEmail, subject, body);
                //if (isEmailSent)
                //{
                //    // Gửi thành công, thực hiện các hành động khác nếu cần
                //    ViewBag.Message = "Email sent successfully.";
                //}
                //else
                //{
                //    // Gửi thất bại, xử lý lỗi nếu có
                //    ViewBag.Error = "Error sending email.";
                //}

                //TempData["Message"] = "Duyệt thành công!";
            }
            return RedirectToAction("CTApprove");

        }
        public ActionResult BoDuyetCT(int id)
        {
            var anhcccd = data.ANH_CCCDs.Where(p => p.IdTaiKhoan == id);
            data.ANH_CCCDs.DeleteAllOnSubmit(anhcccd);
            data.SubmitChanges();
            var chutros = data.CHUTROs.Where(p => p.Id_TaiKhoan == id);
            data.CHUTROs.DeleteAllOnSubmit(chutros);
            data.SubmitChanges();
            var tk = data.TAIKHOANs.SingleOrDefault(p => p.Id == id);
            if (tk != null)
            {
                data.TAIKHOANs.DeleteOnSubmit(tk);
                data.SubmitChanges();
                ViewBag.ThongBao = "Xóa tài khoản thành công";
            }
            return RedirectToAction("CTApprove");
        }
    }
}