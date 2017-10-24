<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="project_weather.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>smart live weather</title>
    <link rel="stylesheet" href="pract/css/style.css"/>
    
    <script src="jquery-3.2.1.js" type="text/javascript"></script>
   
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="jquery-3.1.0.min.js" type="text/javascript"></script>
    
    <script type="text/javascript">
        $(document).ready(function () {

            $("#Panel9").mouseenter(function () {
                $("#Panel9").animate({ fontSize: '35px' }, 200)
					        .animate({ fontSize: '30px' }, 200)

            });



            $("#Panel3").mouseenter(function () {
                $("#Panel3").animate({ fontSize: '35px' }, 200)
					        .animate({ fontSize: '30px' }, 200)

            });

            $("#Panel5").mouseenter(function () {
                $("#Panel5").animate({ fontSize: '35px' }, 200)
					        .animate({ fontSize: '30px' }, 200)

            });

            $("#Panel6").mouseenter(function () {
                $("#Panel6").animate({ fontSize: '35px' }, 200)
					        .animate({ fontSize: '30px' }, 200)
            });

            $("#Panel7").mouseenter(function () {
                $("#Panel7").animate({ fontSize: '35px' }, 200)
					        .animate({ fontSize: '30px' }, 200)
            });



            $("#Button1").mouseenter(function () {
                $("#Button1").animate({ fontSize: '35px' }, 200)
					        .animate({ fontSize: '30px' }, 200)
                            .css('background-color', '#77B900')
            });

            $("#Button1").mouseleave(function () {
                $("#Button1").css('background-color', '#FF6347')
            });


            $("#Button2").mouseenter(function () {
                $("#Button2").animate({ fontSize: '35px' }, 200)
					        .animate({ fontSize: '30px' }, 200)
                            .css('background-color', '#77B900')
            });

            $("#Button2").mouseleave(function () {
                $("#Button2").css('background-color', '#FF6347')
            });


            $("#Button3").mouseenter(function () {
                $("#Button3").animate({ fontSize: '35px' }, 200)
					        .animate({ fontSize: '30px' }, 200)
                            .css('background-color', '#77B900')
            });

            $("#Button3").mouseleave(function () {
                $("#Button3").css('background-color', '#FF6347')
            });


            $("#Button4").mouseenter(function () {
                $("#Button4").animate({ fontSize: '35px' }, 200)
					        .animate({ fontSize: '30px' }, 200)
                            .css('background-color', '#77B900')
            });

            $("#Button4").mouseleave(function () {
                $("#Button4").css('background-color', '#FF6347')
            });
    

        });
    
    </script>

</head>



<body style="background-color: #8FD5FA">  
    <form id="form1" runat="server"  class="form-group">
   
    <div>   
        <asp:Panel ID="Panel1" runat="server">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/LOGO/logo1(png).png" 
                Width="1343px" />
        </asp:Panel>  
    </div>


    <div>
     <center>  
        <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" BackColor="#FF0C7346" style="background-color:opacity:.8;">
            <asp:Label ID="Label1" runat="server" Text="Enter city name" Font-Size="50px" 
                style="font-family:Bookman Old Style" ForeColor="#FF17ECD1"></asp:Label>
            <asp:TextBox  ID="TextBox1" runat="server" Font-Size="40px" Height="70px" 
                Width="300px" style="font-family:Bookman Old Style; margin-top:30px" class="form-control"></asp:TextBox>
            
            
            <asp:Button ID="Button1" runat="server" Text="Get live weather" Font-Size="30px" 
                style="font-family:Bookman Old Style; margin-top:30px; width:300px; height:60px; background-color:#FF6347" 
                class="form-control" onclick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Login" Font-Size="30px" 
                style="font-family:Bookman Old Style; margin-top:30px; width:230px; height:60px; background-color:#FF6347" 
                class="form-control" onclick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text="Registration" Font-Size="30px" 
                style="font-family:Bookman Old Style; margin-top:30px; width:230px; height:60px; background-color:#FF6347" 
                class="form-control" onclick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" Text="Logout" Font-Size="30px" 
                style="font-family:Bookman Old Style; margin-top:30px; width:230px; height:60px; background-color:#FF6347" 
                class="form-control" onclick="Button4_Click"/>
            
            <br>
         
         </asp:Panel>
        </center>
    </div>
    <br><br>


    <center>
    <div style="width:600px"><center style="background-color:Black; opacity:.7;" width="60px">  
    <asp:Panel ID="Panel4" runat="server" Font-Size="30px" style="padding:20px; cellspacing:20px;">
        
        <asp:Panel ID="Panel9" runat="server" BackColor="#FF11EE8D" BorderStyle="Solid" Width="500px" height="130px" Font-Size="30px" class="form-control">
            <asp:Label ID="Label19" runat="server" Text="WELCOME: "  Font-Bold="True" ForeColor="#99FFCC"></asp:Label>
            <asp:Label ID="Label30" runat="server" Text="Label" ></asp:Label>
        </asp:Panel>
        <br>  
        <asp:Panel ID="Panel3" runat="server" BackColor="#FF11EE8D" BorderStyle="Solid" Width="500px"  height="180px" Font-Size="30px" class="form-control">
            <asp:Label ID="Label27" runat="server" Text="PLACE DETAILS" Font-Bold="True" ForeColor="#99FFCC"></asp:Label>
            <br style="background-color: #FF0066">
            <asp:Label ID="Label2" runat="server" Text="CITY: "></asp:Label><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br>
            <asp:Label ID="Label4" runat="server" Text="COUNTRY: "></asp:Label><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><br>
        </asp:Panel>
        <br>  
        <asp:Panel ID="Panel5" runat="server" BackColor="#FF11EE8D" BorderStyle="Solid" Width="500px" height="280px" Font-Size="30px" class="form-control">
            <asp:Label ID="Label26" runat="server" Text="TEMPRETURE DETAILS" Font-Bold="True" ForeColor="#99FFCC"></asp:Label><br>
            <asp:Label ID="Label6" runat="server" Text="DAY: "></asp:Label><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label><br>
            <asp:Label ID="Label8" runat="server" Text="NIGHT: "></asp:Label><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label><br>
            <asp:Label ID="Label10" runat="server" Text="MIN: "></asp:Label><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label><br>
            <asp:Label ID="Label12" runat="server" Text="MAX: "></asp:Label><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label><br>  
        </asp:Panel>
        <br>  
        <asp:Panel ID="Panel6" runat="server" BackColor="#FF11EE8D" BorderStyle="Solid" Width="500px" height="270px" Font-Size="30px" class="form-control">  
            <asp:Label ID="Label28" runat="server" Text="WEATHER DETAILS" Font-Bold="True" ForeColor="#99FFCC"></asp:Label><br>
            <asp:Label ID="Label14" runat="server" Text="OVERALL WEATHER: "></asp:Label><asp:Label ID="Label15" runat="server" Text="Label"></asp:Label><br>
            <asp:Label ID="Label16" runat="server" Text="CURRENT WEATHER: "></asp:Label><asp:Label ID="Label17" runat="server" Text="Label"></asp:Label><br>
            <asp:Label ID="Label18" runat="server" Text="CONDITION: "></asp:Label><asp:Image ID="Image2" runat="server" /><br>
        </asp:Panel>
        <br>  
        <asp:Panel ID="Panel7" runat="server" BackColor="#FF11EE8D" BorderStyle="Solid" Width="500px" height="270px" Font-Size="30px" class="form-control">
            <asp:Label ID="Label29" runat="server" Text="OTHER DETAILS" Font-Bold="True" ForeColor="#99FFCC"></asp:Label><br>
            <asp:Label ID="Label20" runat="server" Text="WIND SPEED: "></asp:Label><asp:Label ID="Label21" runat="server" Text="Label"></asp:Label><br>
            <asp:Label ID="Label22" runat="server" Text="CLOUD: "></asp:Label><asp:Label ID="Label23" runat="server" Text="Label"></asp:Label><br>
            <asp:Label ID="Label24" runat="server" Text="RAIN VOLUME: "></asp:Label><asp:Label ID="Label25" runat="server" Text="Label"></asp:Label><br>
        </asp:Panel>
       

        </asp:Panel>
       
        
    </div>
    </center>
  
    </form>


    


  
</body>

</html>
