using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WEBSITE_MOTEL.Models;
using System.IO;
using System.Data.Linq.SqlClient;
using System.Security.Cryptography.X509Certificates;
using System.Web.Security;

namespace WEBSITE_MOTEL.Areas.ChuTroArea.Controllers
{
    public class QLBaiDangController : Controller
    {
        // GET: ChuTroArea/QLBaiDang
        TimNhaTroDataContext data = new TimNhaTroDataContext();
        public ActionResult Index()
        {
            UpdateExpiredBAIDANGstatus();
            TAIKHOAN tk = (TAIKHOAN)Session["TaiKhoan"];
            var chutro = data.CHUTROs.SingleOrDefault(n => n.Id_TaiKhoan == tk.Id);
            var baidang = data.BAIDANGs.Where(n => n.Id_ChuTro == chutro.Id && n.TrangThai != 4).ToList();
            return View(baidang);
        }
        private void UpdateExpiredBAIDANGstatus()
        {
            // Lấy danh sách các phòng trọ đã hết hạn
            var expiredPhongTroList = data.BAIDANGs.Where(p => p.Ngay.GetValueOrDefault().AddMonths(3) < DateTime.Today && p.TrangThai == 1).ToList();

            // Cập nhật trạng thái của các phòng trọ đã hết hạn
            foreach (var phongTro in expiredPhongTroList)
            {
                phongTro.TrangThai = 0;
            }

            // Lưu thay đổi vào database
            data.SubmitChanges();
        }
        public ActionResult DangLai(int id)
        {
            // Thực hiện cập nhật trạng thái của phòng trọ có id tương ứng
            TAIKHOAN tk = (TAIKHOAN)Session["TaiKhoan"];
            var phongTro = data.BAIDANGs.SingleOrDefault(pt => pt.Id == id);

            if (phongTro != null)
            {
                phongTro.TrangThai = 1;
                phongTro.Ngay = DateTime.Now;
                data.SubmitChanges();
                TempData["Message"] = "Đăng lại tin thành công!";
            }

            // Chuyển hướng về trang quản lý
            return RedirectToAction("QLBaiDang");
        }

        public ActionResult NgungDang(int id)
        {
            // Thực hiện cập nhật trạng thái của phòng trọ có id tương ứng
            var phongTro = data.BAIDANGs.SingleOrDefault(pt => pt.Id == id);
            if (phongTro != null)
            {
                phongTro.TrangThai = 0;
                phongTro.Ngay = null;
                data.SubmitChanges();
                TempData["Message"] = "Ngừng đăng tin thành công!";
            }

            // Chuyển hướng về trang quản lý
            return RedirectToAction("QLBaiDang");
        }

        [HttpPost]
        public ActionResult DangLaiAjax(int id)
        {
            var phongTro = data.BAIDANGs.SingleOrDefault(pt => pt.Id == id);
            if (phongTro != null)
            {
                phongTro.TrangThai = 1;
                data.SubmitChanges();
                return Json(new { success = true, message = "Đăng lại tin thành công!" });
            }
            return Json(new { success = false, message = "Không tìm thấy phòng trọ có mã số tương ứng!" });
        }

        [HttpPost]
        public ActionResult NgungDangAjax(int id)
        {
            var phongTro = data.BAIDANGs.SingleOrDefault(pt => pt.Id == id);
            if (phongTro != null)
            {
                phongTro.TrangThai = 0;
                data.SubmitChanges();
                return Json(new { success = true, message = "Ngừng đăng tin thành công!" });
            }
            return Json(new { success = false, message = "Không tìm thấy phòng trọ có mã số tương ứng!" });
        }

        public ActionResult Xoa(int id)
        {
            // Lấy thông tin phòng trọ cần xóa
            var phongTro = data.BAIDANGs.SingleOrDefault(pt => pt.Id == id);
            if (phongTro == null)
            {
                TempData["Message"] = "Không tìm thấy phòng trọ có mã số tương ứng!";
                return RedirectToAction("QLBaiDang");
            }

            // Xóa phòng trọ
            data.BAIDANGs.DeleteOnSubmit(phongTro);
            data.SubmitChanges();

            TempData["Message"] = "Xóa phòng trọ thành công!";
            return RedirectToAction("QLBaiDang");
        }

        [HttpPost]
        public ActionResult XoaAjax(int id)
        {
            // Lấy thông tin phòng trọ cần xóa
            var phongTro = data.BAIDANGs.SingleOrDefault(pt => pt.Id == id);
            if (phongTro != null)
            {
                try
                {
                    data.BAIDANGs.DeleteOnSubmit(phongTro);
                    data.SubmitChanges();
                    return Json(new
                    {
                        success = true,
                        message = "Xóa phòng trọ thành công!"
                    });
                }
                catch (Exception ex)
                {
                    return Json(new
                    {
                        success = false,
                        message = "Lỗi xóa phòng trọ: " + ex.Message
                    });
                }
            }
            return Json(new
            {
                success = false,
                message = "Không tìm thấy phòng trọ có mã số tương ứng!"
            });
        }

        public ActionResult DuyetPhong(int id)
        {
            // Thực hiện cập nhật trạng thái của phòng trọ có id tương ứng
            var phongTro = data.BAIDANGs.SingleOrDefault(pt => pt.Id == id);
            if (phongTro != null && phongTro.TrangThai == 2)
            {
                phongTro.TrangThai = 3;
                phongTro.Ngay = DateTime.Now;
                data.SubmitChanges();
                TempData["Message"] = "Duyệt phòng thành công!";
            }

            // Chuyển hướng về trang quản lý
            return RedirectToAction("QLBaiDang");
        }

        [HttpPost]
        public ActionResult DuyetPhongAjax(int id)
        {
            var phongTro = data.BAIDANGs.SingleOrDefault(pt => pt.Id == id);
            if (phongTro != null && phongTro.TrangThai == 2)
            {
                phongTro.TrangThai = 3;
                data.SubmitChanges();
                return Json(new { success = true, message = "Duyệt phòng thành công!" });
            }
            return Json(new { success = false, message = "Lỗi không duyệt được phòng!" });
        }
        public ActionResult BoDuyetPhong(int id)
        {
            // Thực hiện cập nhật trạng thái của phòng trọ có id tương ứng
            var phongTro = data.BAIDANGs.SingleOrDefault(pt => pt.Id == id);
            if (phongTro != null && phongTro.TrangThai == 2)
            {
                phongTro.TrangThai = 1;
                phongTro.Ngay = DateTime.Now;
                data.SubmitChanges();
                TempData["Message"] = "Bỏ duyệt phòng thành công!";
            }

            // Chuyển hướng về trang quản lý
            return RedirectToAction("QLBaiDang");
        }
        [HttpPost]
        public ActionResult BoDuyetPhongAjax(int id)
        {
            var phongTro = data.BAIDANGs.SingleOrDefault(pt => pt.Id == id);
            if (phongTro != null && phongTro.TrangThai == 2)
            {
                phongTro.TrangThai = 1;
                data.SubmitChanges();
                return Json(new { success = true, message = "Bỏ duyệt phòng thành công!" });
            }
            return Json(new { success = false, message = "Bỏ duyệt phòng không thành công!" });
        }
        [HttpGet]
        public ActionResult KiemTraNguoiThue(int id)
        {
            var nguoithue = (from a in data.BAIDANGs
                             join b in data.DONHANGs on a.Id equals b.Id_Phong
                             join c in data.NGUOIDUNGs on b.Id_NguoiDung equals c.Id
                             join d in data.TAIKHOANs on c.Id_TaiKhoan equals d.Id
                             join e in data.ANH_CCCDs on d.Id equals e.IdTaiKhoan
                             
                             where a.Id == id
                             select new NguoiDung()
                             {
                                 sId = d.Id,
                                 sHotenND = d.HoTen,
                                 sSDTND = d.SDT,
                                 sEmailND = d.Email,
                                 sCCCD1 = e.IdCardPhoto,
                                 sCCCD2 = e.IdCardPhoto2,
                                 sTaiKhoanND = d.TaiKhoan,
                                 sMatKhauND = d.MatKhau
                             }).FirstOrDefault();


            return View(nguoithue);
        }
        [HttpGet]
        public ActionResult DangBai(int id)
        {
            var dangbai = (from a in data.NHATROs
                           join b in data.PHONGTROs on a.Id equals b.Id_NhaTro
                           where a.Id == id
                           select new DangBai_CT()
                           {
                               sId_NhaTro = (int)a.Id,
                               sTenNhaTro = a.TenNhaTro,
                               sDiaChi = a.DiaChi,
                               sKhuVuc = a.KhuVuc,
                               sId_ChuTro = (int)a.Id_ChuTro,
                               SId_Phong = (int)b.Id, 
                               sTenPhongTro = b.TenNhaTro,
                               sGiaCa = (double)b.GiaCa,
                               sTienDien = (double)b.TienDien,
                               sTienNuoc = (double)b.TienNuoc,
                               sTienRac = (double)b.TienRac,
                               sTienInternet = (double)b.TienInternet,
                               sTienGuiXe = (double)b.TienGuiXe,
                               sTrangThai = (int)b.TrangThai
                           }).ToList();
           return View(dangbai);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult DangBai(int id,BAIDANG phong, FormCollection f, HttpPostedFileBase[] fFileUpLoad, IMAGE images, CHUTRO chutro, TAIKHOAN taikhoan)
        {

            if (fFileUpLoad == null)
            {

                ViewBag.ThongBao = "Hay chon anh bia";

                ViewBag.TenPhong = f["sTieuDe"];
                ViewBag.MoTa = f["sMoTa"];
                ViewBag.DienTich = f["sDienTich"];
                ViewBag.SoLuong = int.Parse(f["iSoLuong"]);
                ViewBag.GiaCa = decimal.Parse(f["mGiaCa"]);

                return View();

            }
            else
            {
                if (ModelState.IsValid)
                {
                    int dem = 0;
                    foreach (HttpPostedFileBase file in fFileUpLoad)
                    {
                        if (file != null || file.ContentLength > 0)
                        {
                            var sFileName = Path.GetFileName(file.FileName);
                            dem++;
                            if (dem == 1)
                            {
                                phong.AnhBia = sFileName;
                            }
                            else if (dem == 2)
                            {
                                images.Url_Path = sFileName;
                            }
                            else if (dem == 3)
                            {
                                images.Url_Path2 = sFileName;
                            }
                            else if (dem == 4)
                            {
                                images.Url_Path3 = sFileName;
                            }
                            else if (dem == 5)
                            {
                                images.Url_Path4 = sFileName;
                            }
                            var path = Path.Combine(Server.MapPath("~/Images"), sFileName);
                            if (!System.IO.File.Exists(path))
                            {
                                System.IO.File.Delete(path);
                                file.SaveAs(path);
                            }
                            else
                            {
                                file.SaveAs(path);
                            }
                        }
                    }

                    phong.Id_ChuTro = chutro.Id;
                    phong.TenPhong = f["sTieuDe"];
                    phong.MoTa = f["sMoTa"].Replace("<p>", "").Replace("</p>", "\n");

                    images.Id_PhongTro = phong.Id;

                    phong.DienTich = int.Parse(f["sDienTich"]);
                    phong.Ngay = Convert.ToDateTime(f["dNgayCapNhat"]);
                    /* phong.SoLuong = int.Parse(f["iSoLuong"]);*/
                    phong.GiaCa = decimal.Parse(f["mGiaCa"]);
                    phong.Dien = decimal.Parse(f["sDien"]);
                    phong.Nuoc = decimal.Parse(f["sNuoc"]);
                    phong.Internet = decimal.Parse(f["sInternet"]);
                    phong.GuiXe = decimal.Parse(f["sGuiXe"]);
                    phong.Diachi = f["sDiaChi"];
                    phong.SoLuong = int.Parse(f["sSoLuong"]);
                    phong.Doituong = byte.Parse(f["sDoiTuong"]);
                    phong.TrangThai = byte.Parse(f["sTrangThai"]);
                    phong.Map = f["sMap"];
                    /*   chutro.HoTen = f["sHoTen"];*/
                    taikhoan.SDT = f["sSDT"];
                    phong.KhuVuc = f["sKhuVuc"];
                    phong.Id_ChuTro = int.Parse(f["sid"]);
                    phong.Id_Phong = id;
                    data.BAIDANGs.InsertOnSubmit(phong);
                    data.SubmitChanges();
                    images.Id_PhongTro = phong.Id;
                    data.IMAGEs.InsertOnSubmit(images);
                    data.SubmitChanges();
                    return RedirectToAction("Index");
                }
                return View();
            }
        }
        public ActionResult XemChiTiet(int id)
        {
            var baidang = (from a in data.BAIDANGs
                          join b in data.CHUTROs on a.Id_ChuTro equals b.Id
                          join c in data.IMAGEs on a.Id equals c.Id_PhongTro
                          join d in data.TAIKHOANs on b.Id_TaiKhoan equals d.Id
                          where a.Id == id
                          select new RoomDetail()
                          {
                              sMa = (int)a.Id,
                              sTenPhong = a.TenPhong,
                              /*sHoTen = b.HoTen,*/
                              sTenKV = a.KhuVuc,
                              sDienTich = (int)a.DienTich,
                              sSoluong = (int)a.SoLuong,
                              sAnhBia = a.AnhBia,
                              sMoTa = a.MoTa,
                              dNgayCapNhat = (DateTime)a.Ngay,
                              dGiaCa = (double)a.GiaCa,
                              sSDT = d.SDT,
                              sEmail = d.Email,
                              sUrl_Path = c.Url_Path,
                              sUrl_Path2 = c.Url_Path2,
                              sUrl_Path3 = c.Url_Path3,
                              sUrl_Path4 = c.Url_Path4,
                              sIDCT = (int)a.Id_ChuTro,
                          }).FirstOrDefault();

            return View(baidang);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult XemChiTiet(int id,BAIDANG bai, FormCollection f, HttpPostedFileBase[] fFileUpLoad, IMAGE images, CHUTRO chutro, TAIKHOAN taikhoan, PHONGTRO phong)
        {
             bai = data.BAIDANGs.Where(n => n.Id == id).FirstOrDefault();
             images = data.IMAGEs.Where(n=> n.Id_PhongTro == id).FirstOrDefault();
            var baidang = (from a in data.BAIDANGs
                           join b in data.CHUTROs on a.Id_ChuTro equals b.Id
                           join c in data.IMAGEs on a.Id equals c.Id_PhongTro
                           join d in data.TAIKHOANs on b.Id_TaiKhoan equals d.Id
                           where a.Id == id
                           select new RoomDetail()
                           {
                               sMa = (int)a.Id,
                               sTenPhong = a.TenPhong,
                               /*sHoTen = b.HoTen,*/
                               sTenKV = a.KhuVuc,
                               sDienTich = (int)a.DienTich,
                               sSoluong = (int)a.SoLuong,
                               sAnhBia = a.AnhBia,
                               sMoTa = a.MoTa,
                               dNgayCapNhat = (DateTime)a.Ngay,
                               dGiaCa = (double)a.GiaCa,
                               sSDT = d.SDT,
                               sEmail = d.Email,
                               sDien = (double)a.Dien,
                               sNuoc =(double) a.Nuoc,
                               sInternet = (double)a.Internet,
                               sGuiXe = (double)a.GuiXe,
                               sUrl_Path = c.Url_Path,
                               sUrl_Path2 = c.Url_Path2,
                               sUrl_Path3 = c.Url_Path3,
                               sUrl_Path4 = c.Url_Path4,
                               sIDCT = (int)a.Id_ChuTro,
                           }).FirstOrDefault();
            if (ModelState.IsValid)
            {
                int dem = 0;
                foreach (HttpPostedFileBase file in fFileUpLoad)
                {
                    if (file != null || file.ContentLength > 0)
                    {
                        var sFileName = Path.GetFileName(file.FileName);
                        dem++;
                        if (dem == 1)
                        {
                            bai.AnhBia = sFileName;
                        }
                        else if (dem == 2)
                        {
                            images.Url_Path = sFileName;
                        }
                        else if (dem == 3)
                        {
                            images.Url_Path2 = sFileName;
                        }
                        else if (dem == 4)
                        {
                            images.Url_Path3 = sFileName;
                        }
                        else if (dem == 5)
                        {
                            images.Url_Path4 = sFileName;
                        }
                        var path = Path.Combine(Server.MapPath("~/Images"), sFileName);
                        if (!System.IO.File.Exists(path))
                        {
                            System.IO.File.Delete(path);
                            file.SaveAs(path);
                        }
                        else
                        {
                            file.SaveAs(path);
                        }
                    }
                    
                }
                bai.TenPhong = f["sTieuDe"];
                bai.MoTa = f["sMoTa"].Replace("<p>", "").Replace("</p>", "\n");

                bai.DienTich = int.Parse(f["sDienTich"]);
                /* phong.SoLuong = int.Parse(f["iSoLuong"]);*/
                bai.GiaCa = decimal.Parse(f["mGiaCa"]);
                bai.Dien = decimal.Parse(f["sDien"]);
                bai.Nuoc = decimal.Parse(f["sNuoc"]);
                bai.Internet = decimal.Parse(f["sInternet"]);
                bai.GuiXe = decimal.Parse(f["sGuiXe"]);
                bai.Diachi = f["sDiaChi"];
                bai.SoLuong = int.Parse(f["sSoLuong"]);
                /*   chutro.HoTen = f["sHoTen"];*/
                taikhoan.SDT = f["sSDT"];
                bai.KhuVuc = f["sKhuVuc"];
                data.SubmitChanges(); 
                return RedirectToAction("XemChiTiet",new {id = id});
            } return View(baidang);
        }
        public ActionResult DangBai_NhaTro()
        {
            var nhatro = data.NHATROs.ToList();
            return View(nhatro);
        }
        public ActionResult DangBai_PhongTro()
        {
            var phongtro = data.PHONGTROs.ToList();
            return View(phongtro);
        }
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            Session["TaiKhoan"] = null;
            return View(@"~\Views\User\DangNhap.cshtml");
        }
    }
}