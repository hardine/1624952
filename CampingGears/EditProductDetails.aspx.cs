using System;
using System.Data.SqlClient;

namespace CampingGears
{
    public partial class EditProductDetails : System.Web.UI.Page
    {
        SqlCommand sqlcmd;
        SqlConnection myConnection;
        string productId;
        string uprodName;
        string ucategory;
        string udescrip;
        string uinstock;
        string uprodprice;
        protected void Page_Load(object sender, EventArgs e)
        {
            opendbconnection();
            productId = Request.QueryString["ProductID"];
            
            if ((productId == "") || (productId == null))
            {
                CurrentImage.ImageUrl = "~/ProductImages/default.png";
            }
            else
            {
                string filename = productId + ".png";
                CurrentImage.ImageUrl = "~/ProductImages/" + filename;
            }

            if (string.IsNullOrWhiteSpace(stock.Text))
            {
                productName.Text = Request.QueryString["ProductName"];
                categorydropdown.SelectedValue = Request.QueryString["Category"];
                description.Text = Request.QueryString["Description"];
                stock.Text = Request.QueryString["Stock"];
                Price.Text = Request.QueryString["price"];
            }
        }
        public void opendbconnection()
        {
            myConnection = new SqlConnection("Data Source=SQL2016.FSE.Network;" +
                                   "Initial Catalog=db_1624952_camping_gears;" +
                                   "Persist Security Info=True; " +
                                   "User ID=user_db_1624952_camping_gears;" +
                                   "Password = p@55word; " +
                                   "connection timeout=30");
            try
            {
                myConnection.Open();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
        protected void back_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminViewProduct.aspx");
        }


        protected void editproduct_button_Click(object sender, EventArgs e)
        {
            uprodName = productName.Text;
            ucategory = categorydropdown.SelectedValue.ToString();
            udescrip = description.Text;
            uinstock = stock.Text;
            uprodprice = Price.Text;

            string query = "UPDATE[Product] SET[ProductName] = '" + uprodName +
               "',[Category] =" + ucategory + ",[Description]='" + udescrip +
               "',[Stock]=2" + ",[price]=" + uprodprice + " WHERE [ProductID] =" + productId + "";
            sqlcmd = new SqlCommand(query, myConnection);
            sqlcmd.ExecuteNonQuery();
            refreshvalue();
            Lerroralert.Text = "Details for this product is successfully Updated!";
        }

        public void refreshvalue()
        {
            productName.Text = uprodName;
            categorydropdown.SelectedValue = ucategory;
            description.Text = udescrip;
            stock.Text= uinstock;
            Price.Text= uprodprice;
        }

        protected void submitbutton_Click(object sender, EventArgs e)
        {
            string filename = productId + ".png";
            string savelocation = Server.MapPath("~/ProductImages/" + filename);
            ImageFileUploadControl.SaveAs(savelocation);
        }
    }
}