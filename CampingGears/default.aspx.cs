using System;
using System.Data.SqlClient;

namespace CampingGears
{
    public partial class home : System.Web.UI.Page
    {
        SqlCommand sqlcmd;
        SqlConnection myConnection;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Tent = "1.png";
            string sleepingbag = "2.png";
            string knife = "5.png";
            string boots = "6.png";

            Image1.ImageUrl = "~/ProductImages/" + Tent;
            Image2.ImageUrl = "~/ProductImages/" + sleepingbag;
            Image3.ImageUrl = "~/ProductImages/" + knife;
            Image4.ImageUrl = "~/ProductImages/" + boots;
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
        protected void search_button_Click(object sender, EventArgs e)
        {
            string productName = Request.QueryString["ProductName"];
            string query = "SELECT * FROM [Product] WHERE [ProductName] LIKE '%" + productName + "%'";
            sqlcmd = new SqlCommand(query, myConnection);
            //sqlcmd.ExecuteNonQuery();
            using (SqlDataReader dr = sqlcmd.ExecuteReader())
            {
                while (dr.Read())
                {
                    string treatment = dr[0].ToString();
                }
            }
        }
    }
}