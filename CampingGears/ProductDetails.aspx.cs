using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingGears
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        SqlCommand sqlcmd;
        SqlDataAdapter adapter;
        SqlConnection myConnection;
        protected void Page_Load(object sender, EventArgs e)
        {
            openconnection();
        }

        public void openconnection()
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
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
    }
        protected void back_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminViewProduct.aspx");
        }
        protected void addproduct_button_Click(object sender, EventArgs e)
        {
            string prodName = productName.Text;
            string category = categorydropdown.SelectedValue.ToString();
            string descrip = description.Text;
            string instock = stock.Text;
            string prodprice = Price.Text;

            sqlcmd = new SqlCommand("INSERT INTO [Product] ([ProductName], [Category], [Description], [Flag], [Stock], [price], [Image])"+
                            "Values ('"+ prodName + "',"+ category + ",'"+ descrip + "',0,"+ instock + ","+ prodprice + ",null)", myConnection);
            sqlcmd.ExecuteNonQuery();
            Lerroralert.Text = "product "+prodName+" is successfully Created!";

        }
    }
}