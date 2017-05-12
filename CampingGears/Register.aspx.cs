using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace CampingGears
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("DBConnection");
            //create user store and user manager
            var UserStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(UserStore);
            //check for password
            if (pword.Text.Equals(cpword.Text)) { 
            //Create User
            var user = new IdentityUser() { UserName = uname.Text };
            IdentityResult result = manager.Create(user, pword.Text);
                if (result.Succeeded)
                {
                    erralert.Text = "User " + uname.Text + " is successfully created, please login to proceed.";
                }
                else
                {
                    erralert.Text = "An Error has occured: " + result.Errors.FirstOrDefault();
                }
            }
            else
            {
                erralert.Text = "Password and Confirm Password do not match!";
            }
            
        }
    }
}