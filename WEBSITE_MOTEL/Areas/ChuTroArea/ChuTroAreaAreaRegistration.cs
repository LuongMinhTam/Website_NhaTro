using System.Web.Mvc;

namespace WEBSITE_MOTEL.Areas.ChuTroArea
{
    public class ChuTroAreaAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "ChuTroArea";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "ChuTroArea_default",
                "ChuTroArea/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}