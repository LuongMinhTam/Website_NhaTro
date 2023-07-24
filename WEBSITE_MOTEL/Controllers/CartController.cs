using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;
using System.Web.UI;
using WEBSITE_MOTEL.Models;
using Microsoft.Win32;

namespace WEBSITE_MOTEL.Controllers
{
    public class CartController : Controller
    {
        TimNhaTroDataContext data = new TimNhaTroDataContext();
        // GET: Cart
        public ActionResult Index()
        {
            return View();
        }
        public TAIKHOAN GetAcc()
        {
            TAIKHOAN tk = (TAIKHOAN)Session["TaiKhoan"];
            return tk;
        }
        public ActionResult CartP(int? page)
        {
            if (Session["TaiKhoan"] == null || Session["TaiKhoan"].ToString() == "")
            {
                return Redirect("~/User/DangNhap");
            }

            else
            {
                TAIKHOAN tk = GetAcc();
                var idnd = data.NGUOIDUNGs.SingleOrDefault(n => n.Id_TaiKhoan == tk.Id);
                int iSize = 4;
                int iPageNum = (page ?? 1);
                var phong = (from a in data.BAIDANGs
                             join b in data.CHUTROs on a.Id_ChuTro equals b.Id
                             join c in data.IMAGEs on a.Id equals c.Id_PhongTro  
                             join e in data.TAIKHOANs on b.Id_TaiKhoan equals e.Id
                             join g in data.DONHANGs on a.Id equals g.Id_Phong
                             where (idnd.Id == g.Id_NguoiDung)
                             select new RoomDetail()
                             {
                                 sMa = g.IdDH,
                                 sTenPhong = a.TenPhong,
                                 sHoTen = e.HoTen,
                                 
                                 sDienTich = (int)a.DienTich,
                                 sSoluong = (int)a.SoLuong,
                                 sAnhBia = a.AnhBia,
                                 sMoTa = a.MoTa,
                                 dNgayCapNhat = (DateTime)a.Ngay,
                                 dGiaCa = (double)a.GiaCa,
                                 sSDT = e.SDT,
                                 sEmail = e.Email,
                                 sUrl_Path = c.Url_Path,
                                 sUrl_Path2 = c.Url_Path2,
                                 sUrl_Path3 = c.Url_Path3,
                                 sUrl_Path4 = c.Url_Path4,
                                 sDiaChi = a.Diachi,
                                 sDien = (double)a.Dien,
                                 sNuoc = (double)a.Nuoc,
                                 sGuiXe = (double)a.GuiXe,
                                 sInternet = (double)a.Internet,
                                 sDoiTuong = (byte)a.Doituong,
                                 sTrangThai = (byte)a.TrangThai,
                                 sTenKV = a.KhuVuc,
                             });
                return View(phong.ToList().OrderByDescending(n => n.dNgayCapNhat).ToPagedList(iPageNum, iSize));
            }
        }
       
        [HttpPost]
        public JsonResult Delete(int maDH)
        {
            try
            {
                var dh = data.DONHANGs.SingleOrDefault(d => d.IdDH == maDH);
                data.DONHANGs.DeleteOnSubmit(dh);
                data.SubmitChanges();
                return Json(new { code = 200, msg = "Xóa phòng thành công." }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { code = 500, msg = "Xóa phòng thất bại. Lỗi " + ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult PhongDaThue()
        {
            TAIKHOAN tk = GetAcc();
            var phongdathue = (from a in data.NHATROs
                           join b in data.PHONGTROs on a.Id equals b.Id_NhaTro
                           join c in data.BAIDANGs on b.Id equals c.Id_Phong
                           join d in data.DONHANGs on c.Id equals d.Id_Phong
                           join e in data.NGUOIDUNGs on d.Id_NguoiDung equals e.Id
                           where e.Id_TaiKhoan == tk.Id && c.TrangThai == 3
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
            return View(phongdathue);
        }
        public ActionResult BaoCao(int id)
        {
            var phongdathue = data.PHONGTROs.Where(n => n.Id == id).FirstOrDefault();
            return View(phongdathue);
        }
        [HttpPost]
        public ActionResult BaoCao(FormCollection form,int id)
        {
            TAIKHOAN tk = GetAcc();
            var nguoidung = data.NGUOIDUNGs.Where(n => n.Id_TaiKhoan == tk.Id).FirstOrDefault();
            BAOCAO bc = new BAOCAO();
            
            bc.Id_PhongTro = id;
            bc.Id_NguoiDung = (int)nguoidung.Id;
            bc.NoiDung = form["sNoiDung"];
            bc.TrangThai = 1;
            data.BAOCAOs.InsertOnSubmit(bc);
            data.SubmitChanges();
            return RedirectToAction("PhongDaThue", new {id = id});
        }
    }
}