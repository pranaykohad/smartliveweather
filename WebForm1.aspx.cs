using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Net;
using System.Web.Script.Serialization;
using System.Net.NetworkInformation;

namespace project_weather
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e){


            Label3.Text = "";
            Label5.Text = "";

            Label7.Text = "";
            Label9.Text = "";
            Label11.Text = "";
            Label13.Text = "";

            Label15.Text = "";
            Label17.Text = "";

            Image2.ImageUrl = "";

            Label21.Text = "";
            Label23.Text = "";
            Label25.Text = "";
            
            if (Session["user_info"] == null)
                Label30.Text = "<br>PLEASE REGISTER / LOGIN";
            if (Session["user_info"] != null)
                Label30.Text = Session["user_info"].ToString();

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            string api_key = "6b1888b43222b4c55157f223e7bb5f12";
            string c;
            c = TextBox1.Text.ToString();

            if (c == "")
                c = "pune";

            string url = string.Format("http://api.openweathermap.org/data/2.5/forecast/daily?q={0}&units=metric&appid={1}", c, api_key);
            

          
                using (WebClient client = new WebClient())
                {

                string json = client.DownloadString(url);

                if (json == null)
                    Response.Write("<script>alert('check the internet connnection');</script>");
                else
                {
                    WeatherInfo weatherinfo = (new JavaScriptSerializer()).Deserialize<WeatherInfo>(json);

                    Label3.Text = weatherinfo.city.name;
                    Label5.Text = weatherinfo.city.country;

                    Label7.Text = weatherinfo.list[0].temp.day.ToString() + " C";
                    Label9.Text = weatherinfo.list[0].temp.night.ToString() + " C";
                    Label11.Text = weatherinfo.list[0].temp.min.ToString() + " C";
                    Label13.Text = weatherinfo.list[0].temp.max.ToString() + " C";

                    Label15.Text = weatherinfo.list[0].weather[0].main.ToString();
                    Label17.Text = weatherinfo.list[0].weather[0].description.ToString();

                    Image2.ImageUrl = string.Format("http://openweathermap.org/img/w/{0}.png", weatherinfo.list[0].weather[0].icon);

                    Label21.Text = weatherinfo.list[0].speed.ToString() + " m/s";
                    Label23.Text = weatherinfo.list[0].clouds.ToString() + " %";
                    Label25.Text = weatherinfo.list[0].rain.ToString() + " in last 3 hrs";
                }
           
            
             }
           

        }


        public class WeatherInfo
        {
            public City city { get; set; }
            public List<List> list { get; set; }
        }

        public class City
        {
            public string name { get; set; }
            public string country { get; set; }
        }

        public class Temp
        {
            public double min { get; set; }
            public double max { get; set; }
            public double day { get; set; }
            public double night { get; set; }
        }

        public class Weather
        {
            public string main { get; set; }
            public string description { get; set; }
            public string icon { get; set; }

        }

        public class List
        {
            public Temp temp { get; set; }
            public double pressure { get; set; }
            public int humidity { get; set; }
            public List<Weather> weather { get; set; }
            public double speed { get; set; }
            public int clouds { get; set; }
            public double rain { get; set; }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("~/loginform.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("~/regform.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["user_info"] == null)
                Label30.Text = "please login/register";

            if (Session["user_info"] != null)
            {
                Session.Clear();
                Server.Transfer("~/WebForm1.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/loginform.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/regform.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Session["user_info"] == null)
                Label30.Text = "please login/register";

            if (Session["user_info"] != null)
            {
                Session.Clear();
                Server.Transfer("~/WebForm1.aspx");
            }
        }

        protected void Page_Error(object sender, EventArgs e)
        {

            Exception ex = Server.GetLastError();
            Class1 c1 = new Class1();
            int c = c1.log(ex);
            Server.ClearError();
        }
    }
}