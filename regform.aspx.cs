using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project_weather
{
    public partial class regform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

                string name = TextBox1.Text.ToString();
                string password = TextBox2.Text.ToString();
                string r_password = TextBox3.Text.ToString();
                string mob_number = TextBox4.Text.ToString();
                string gender = DropDownList1.SelectedValue.ToString();
               

                String cs = "data source='pranay_kohad\\sqlexpress'; database=smart_live_database; integrated security=SSPI";

                SqlConnection conn = new SqlConnection(cs);
                conn.Open();
                SqlCommand sql = new SqlCommand();
                sql.CommandText = "insert into reg_table values (@name , @password , @r_password , @mob_number , @gender , null)";
                
                sql.Parameters.AddWithValue("@name", name);
                sql.Parameters.AddWithValue("@password", password);
                sql.Parameters.AddWithValue("@r_password", r_password);
                sql.Parameters.AddWithValue("@mob_number", mob_number);
                sql.Parameters.AddWithValue("@gender", gender);

                
                sql.Connection = conn;    

            
                int a = sql.ExecuteNonQuery();
            

                Server.Transfer("~/loginform.aspx");
              
                if(a==0){

                    Label7.Text = "some error";
                    Label7.ForeColor = System.Drawing.Color.Red;
                }
            }

            protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
            {
                if (e.Day.IsOtherMonth)
                    e.Day.IsSelectable = false;
            }

            protected void Button2_Click(object sender, EventArgs e)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
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
