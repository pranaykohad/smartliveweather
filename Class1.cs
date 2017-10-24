using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data.SqlClient;

namespace project_weather
{
    public class Class1
    {

        public int log(Exception e)
        {


            int check = 0;

            StringBuilder sb = new StringBuilder();

            do
            {
                sb.Append(e.GetType().Name + Environment.NewLine);
                sb.Append(e.Message + Environment.NewLine);
                sb.Append(e.StackTrace + Environment.NewLine);

                e = e.InnerException;
            } while (e != null);


            String cs = "data source='pranay_kohad\\sqlexpress'; database=personal_database; integrated security=SSPI";
            SqlConnection conn = new SqlConnection(cs);
            SqlCommand sql = new SqlCommand("log_entry", conn);



            sql.CommandType = System.Data.CommandType.StoredProcedure;
            
            
            SqlParameter para = new SqlParameter("@m", sb.ToString());
            sql.Parameters.Add(para);

            conn.Open();
            int ans = sql.ExecuteNonQuery();

            conn.Close();


            if (ans == 1)
                check = 1;

            return check;
        }
    }
}