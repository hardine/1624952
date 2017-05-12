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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addproduct_button_Click(object sender, EventArgs e)
        {
            SqlConnection myConnection = new SqlConnection("server=Hardine;" +
                                         "Trusted_Connection=True;" +
                                         "database=db_CampingGears; " +
                                         "connection timeout=30");

            //try
            //{
            //    myConnection.Open();
            //}
            //catch (Exception e)
            //{
            //    Console.WriteLine(e.ToString());
            //}
            SqlCommand myCommand = new SqlCommand("INSERT INTO table (Column1, Column2) " +
                                     "Values ('string', 1)", myConnection);
            myCommand.ExecuteNonQuery();
            string a = productName.Text;
         
        }
    }
}