using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingGears
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["ProductID"];
            string filename = productId + ".jpg";
            //for missing alternate text and dimension
            CurrentImage.ImageUrl = "~/ProductImages/" + filename;
        }

        protected void submitbutton_Click(object sender, EventArgs e)
        {
            //code to check correct file tyoe
            //get the id from the query string (keeping it as a string is ok in this case)
            string productId = Request.QueryString["ProductID"];
            string filename = productId + ".png";
            string savelocation = Server.MapPath("~/ProductImages/" + filename);
            ImageFileUploadControl.SaveAs(savelocation);

            Lerroralert.Text = "Image successfully uploaded! at "+ savelocation;
        }
    }
}