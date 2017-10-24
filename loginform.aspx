<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginform.aspx.cs" Inherits="project_weather.loginform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <br><br><br><br>
    
    
    
    <div>
    <center>
        <asp:Panel ID="Panel1" runat="server" width="300px" height="200px">
        <form id="form1" runat="server">
        <br><br>
            <asp:Label ID="Label1" runat="server" Text="user name: "></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br><br>
            <asp:Label ID="Label2" runat="server" Text="password: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator><br><br>
            <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp<asp:Button ID="Button2" runat="server" Text="resset" />
            <br><br><asp:Label ID="Label3" runat="server"></asp:Label>
            </form>
        </asp:Panel>
    </center> 
    </div>

    
</body>
</html>
