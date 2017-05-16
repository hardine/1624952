using System;

namespace CampingGears
{
    public partial class AdminViewProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated && (User.Identity.Name.Equals("Admin")))
            {

            }else
            {
                Response.Redirect("default.aspx");
            }
        }
        protected void add_click(object sender, EventArgs e)
        {
            Response.Redirect("ProductDetails.aspx");
        }
    }
}