﻿using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WEBSITE_MOTEL.Models;

namespace WEBSITE_MOTEL.Areas.Admin.Controllers
{
    public class QLDUYETPHONGController : Controller
    {
        TimNhaTroDataContext data = new TimNhaTroDataContext();
        // GET: Admin/QLDUYETPHONG
        public ActionResult RoomApprove(int? page, string strSearch)
        {
            if (Session["Admin"] == null || Session["Admin"].ToString() == "")
            {
                return Redirect("~/Admin/Home/Login");
            }
            ViewData["strSearch"] = strSearch;

            int iSize = 5;
            int iPageNum = (page ?? 1);

            var query = from a in data.BAIDANGs
                        join b in data.CHUTROs on a.Id_ChuTro equals b.Id
                        join c in data.IMAGEs on a.Id equals c.Id_PhongTro
                        join e in data.TAIKHOANs on b.Id_TaiKhoan equals e.Id
                        where a.TrangThai == 4
                        select new RoomDetail()
                        {
                            sMa = a.Id,
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
                            sTenKV = a.KhuVuc
                        };

            return View(query.OrderByDescending(n => n.sTrangThai == 4).ToPagedList(iPageNum, iSize));
        }

        [HttpPost]
        public ActionResult RoomApprove()
        {
            BAIDANG phong = data.BAIDANGs.FirstOrDefault(p => p.TrangThai == 4);

            if (phong == null)
            {
                return HttpNotFound();
            }

            return View(phong);
        }

        public ActionResult DuyetPhong(int id)
        {
            BAIDANG phong = data.BAIDANGs.FirstOrDefault(p => p.Id == id && p.TrangThai == 4);

            if (phong != null)
            {
                phong.TrangThai = 1;
                data.SubmitChanges();
                TempData["Message"] = "Duyệt phòng thành công!";
            }

            return RedirectToAction("RoomApprove");
        }

        public ActionResult TuChoiPhong(int id)
        {
            var phong = data.BAIDANGs.SingleOrDefault(p => p.Id == id);

            if (phong != null)
            {
                // Xóa phòng được từ chối khỏi bảng BAIDANG_DUYET
                data.BAIDANGs.DeleteOnSubmit(phong);
                data.SubmitChanges();
                ViewBag.ThongBao = "Từ chối phòng thành công";
            }

            return RedirectToAction("RoomApprove");
        }
    }
}