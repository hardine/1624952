using Microsoft.AspNet.Identity;
using System;
using System.Web;

namespace CampingGears
{
    public partial class index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logoff_click(object sender, EventArgs e)
        {
            var AutheticationManager = HttpContext.Current.GetOwinContext().Authentication;
            AutheticationManager.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            Response.Redirect("default.aspx");
        }

    }
}