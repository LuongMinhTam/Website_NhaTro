﻿using System.Web;
using System.Web.Mvc;

namespace WEBSITE_MOTEL
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
