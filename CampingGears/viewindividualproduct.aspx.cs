using System;
using System.Data.SqlClient;

namespace CampingGears
{
    public partial class viewindividualproduct : System.Web.UI.Page
    {
        SqlCommand sqlcmd;
        SqlConnection myConnection;
        string productId;
        string uprodName;
        string udescrip;
        string uinstock;
        string uprodprice;
        protected void Page_Load(object sender, EventArgs e)
        {
            opendbconnection();
            callspecificproduct();
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
            Response.Redirect("Default.aspx");
        }

        public void callproduct()
        {
            string ReturnedProductName = null;
            string productID = "2";
            string query = "SELECT * FROM [Product] WHERE [ProductID] =" + productID;
            sqlcmd = new SqlCommand(query, myConnection);
            if (sqlcmd.ExecuteScalar() == null)
            {
                ReturnedProductName = Convert.ToString(sqlcmd.ExecuteScalar());
            }

            if ((ReturnedProductName != null) || (ReturnedProductName != ""))
            {

            }
        }

        public void callspecificproduct()
        {
            productId = Request.QueryString["ProductID"];
            string query = "SELECT * FROM [Product] WHERE [ProductID] =" + productId;
            string prodname = "", desc = "";
            int stck = 0;
            float prce = 0;
            using (var command = new SqlCommand(query, myConnection))
            {
                using (var reader = command.ExecuteReader())
                {
                    //Check the reader has data:
                    if (reader.Read())
                    {
                        prodname = reader.GetString(reader.GetOrdinal("ProductName"));
                        desc = reader.GetString(reader.GetOrdinal("Description"));
                        stck = reader.GetOrdinal("Stock");
                        prce = reader.GetOrdinal("price");
                    }
                }
            }
            productName.Text = prodname;
            description.Text = desc;
            stock.Text = stck.ToString();
            Price.Text = Convert.ToString(prce);

            // load image
            string filename = productId + ".png";
            CurrentImage.ImageUrl = "~/ProductImages/" + filename;
        }
        protected void addtocart_button_Click(object sender, EventArgs e)
        {
            uprodName = productName.Text;
            udescrip = description.Text;
            uinstock = stock.Text;
            uprodprice = Price.Text;

            string query = "UPDATE[Product] SET[Flag] = 1 WHERE [ProductID] =" + productId + "";
            sqlcmd = new SqlCommand(query, myConnection);
            sqlcmd.ExecuteNonQuery();
            Lerroralert.Text = "Successfully added to Shoping Cart!";
        }

    }
}