using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEBSITE_MOTEL.Models
{
    public class DangBai_CT
    {
        public int sId_NhaTro { get; set; }
        public int sId_ChuTro { get; set; }
        public string sTenNhaTro { get; set; }
        public string sKhuVuc { get; set; }
        public string sDiaChi { get; set; }
        public int SId_Phong { get; set; }
        public string sTenPhongTro { get; set; }
        public double sGiaCa { get; set; }
        public double sTienDien { get; set; }
        public double sTienNuoc { get; set; }
        public double sTienRac { get; set; }
        public double sTienInternet { get; set; }
        public double sTienGuiXe { get; set; }
        public int sTrangThai { get; set; }

    }
}