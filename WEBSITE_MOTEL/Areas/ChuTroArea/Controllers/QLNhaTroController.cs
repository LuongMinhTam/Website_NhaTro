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
    public class QLNhaTroController : Controller
    {
        TimNhaTroDataContext data = new TimNhaTroDataContext();
        // GET: ChuTroArea/QLNhaTro
        public ActionResult NhaTro()
        {
            var nhatro = data.NHATROs.ToList();
            return View(nhatro);
        }
        public ActionResult PhongTro(int id) 
        {
            var phongtro = data.PHONGTROs.Where(n => n.Id_NhaTro == id).ToList();

            return View(phongtro);
        }
        public TAIKHOAN GetAcc()
        {
            TAIKHOAN tk = (TAIKHOAN)Session["TaiKhoan"];
            return tk;
        }
        public ActionResult BaoCaoCuaCT(int id)
        {
            var baocao = (from a in data.BAOCAOs
                          join b in data.NGUOIDUNGs on a.Id_NguoiDung equals b.Id
                          join c in data.PHONGTROs on a.Id_PhongTro equals c.Id
                          join d in data.TAIKHOANs on b.Id_TaiKhoan equals d.Id
                          where a.Id_PhongTro == id
                          select new
                          {
                              c.TenNhaTro, a.NoiDung, d.HoTen
                          }).FirstOrDefault();

            ViewBag.TenNhaTro = baocao.TenNhaTro;
            ViewBag.NoiDung = baocao.NoiDung;
            ViewBag.HoTen = baocao.HoTen;

            return View();
        }
        public ActionResult ThemNhaTro()
        { 
            return View(); 
        }

        [HttpPost]
        public ActionResult ThenNhaTro(FormCollection form)
        {
            TAIKHOAN tk = (TAIKHOAN)Session["TaiKhoan"];
            var chutro = data.CHUTROs.Where(n => n.Id_TaiKhoan == tk.Id).FirstOrDefault();
            NHATRO nt = new NHATRO();

            nt.Id_ChuTro = chutro.Id;
            nt.TenNhaTro = form["sTenNhaTro"];
            nt.KhuVuc = form["sTenKhuVuc"];
            nt.DiaChi = form["sDiaChi"];
            ViewBag.tennhatro = nt.TenNhaTro.ToString();
            ViewBag.khuvuc = nt.KhuVuc.ToString();
            ViewBag.diachi = nt.DiaChi.ToString();
            data.NHATROs.InsertOnSubmit(nt);
            data.SubmitChanges();
            return RedirectToAction("NhaTro");
        }
        public ActionResult AddNhaTro()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult AddNhaTro(FormCollection f)
        {
            TAIKHOAN tk = (TAIKHOAN)Session["TaiKhoan"];
            var chutro = data.CHUTROs.Where(n => n.Id_TaiKhoan == tk.Id).FirstOrDefault();
            NHATRO nt = new NHATRO();

            nt.Id_ChuTro = chutro.Id;
            nt.TenNhaTro = f["sTenNhaTro"];
            nt.KhuVuc = f["sTenKhuVuc"];
            nt.DiaChi = f["sDiaChi"];
            ViewBag.tennhatro = nt.TenNhaTro.ToString();
            ViewBag.khuvuc = nt.KhuVuc.ToString();
            ViewBag.diachi = nt.DiaChi.ToString();
            data.NHATROs.InsertOnSubmit(nt);
            data.SubmitChanges();
            return RedirectToAction("NhaTro", "QLNhaTro");
        }
    }
}