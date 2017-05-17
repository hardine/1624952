using System;

namespace CampingGears
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["ProductID"];
            if ((productId=="" )||(productId == null)){
                CurrentImage.ImageUrl = "~/ProductImages/default.png";
            }
            else{ 
            string filename = productId + ".png";
            CurrentImage.ImageUrl = "~/ProductImages/" + filename;
            }
        }

        protected void submitbutton_Click(object sender, EventArgs e)
        {
            //code to check correct file tyoe
            //get the id from the query string (keeping it as a string is ok in this case)
            string productId = Request.QueryString["ProductID"];
            string filename = productId + ".png";
            string savelocation = Server.MapPath("~/ProductImages/" + filename);
            ImageFileUploadControl.SaveAs(savelocation);

            Lerroralert.Text = "Image successfully uploaded!";
        }

        protected void back_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminViewProduct.aspx");
        }
    }
}