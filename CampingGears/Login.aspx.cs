using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;

namespace CampingGears
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("camping_gears");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(Lusername.Text, Lpassword.Text);

            if(user != null){

                if (Lusername.Text.Equals ("Admin")|| (Lusername.Text.Equals("admin")))
                {
                    LogUserIn(userManager, user);
                    Response.Redirect("AdminViewProduct.aspx");
                }else
                {
                    LogUserIn(userManager, user);
                    Response.Redirect("default.aspx");
                }

            }
            else{

                Lerroralert.Text = "Invalid username or password.";
            }

        }

        private void LogUserIn(UserManager<IdentityUser>usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
        }
    }
}