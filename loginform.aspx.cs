using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

namespace project_weather
{
    public partial class loginform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string n = TextBox1.Text.ToString();
            string p = TextBox2.Text.ToString();


          

           if (Authenticate_user(n, p))
          {


              //Server.Transfer("~/WebForm1.aspx");
                    Session["user_info"] = TextBox1.Text; 
                    FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, true);

          }
          else
                    Label3.Text = "credentials are wrong OR you are not registered!!!";
           
                 
             
        }

        protected bool Authenticate_user(String un, String pass)
        {
            String cs = "data source='pranay_kohad\\sqlexpress'; database=smart_live_database; integrated security=SSPI";

            SqlConnection conn = new SqlConnection(cs);
            conn.Open();
            SqlCommand sql = new SqlCommand();
            sql.CommandText = "select * from reg_table where USER_NAME=@n and PASSWORD=@p";

            sql.Parameters.AddWithValue("@n", un);
            sql.Parameters.AddWithValue("@p", pass);

            sql.Connection = conn;


            SqlDataReader sdr = sql.ExecuteReader();

            bool a = false;

            while (sdr.Read())
            {
                if (un == Convert.ToString(sdr["USER_NAME"]) && pass == Convert.ToString(sdr["PASSWORD"]))
                {
                    a = true;
                }
                else
                    a = false; 
            }

            return a;
        }

        protected void Page_Error(object sender, EventArgs e)
        {

            Exception ex = Server.GetLastError();
            Server.ClearError();
            Class1 c1 = new Class1();
            int c = c1.log(ex);
            
        }
    }
}