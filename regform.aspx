<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regform.aspx.cs" Inherits="project_weather.regform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    
    <div>
    <center>
        <asp:Panel ID="Panel1" runat="server"  width="700px" height="800px">
       
       <br><br><br><br>
        
        <form id="form1" runat="server">
        <br><br>
        <asp:Label ID="Label1" runat="server" Text="user name: "></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>

        <br><br>        
        
        <asp:Label ID="Label2" runat="server" Text="password: "></asp:Label><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <br><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="retype password: "></asp:Label><asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="password is wrong"></asp:CompareValidator>
        <br><br>       
        <asp:Label ID="Label4" runat="server" Text="mob. number: "></asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ErrorMessage="*" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>             
        <br><br>     
        <asp:Label ID="Label6" runat="server" Text="gender: "></asp:Label><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">male</asp:ListItem>
            <asp:ListItem>female</asp:ListItem>
        </asp:DropDownList>     
        <br><br>       
        <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" 
            runat="server" Text="reset" onclick="Button2_Click" />  
        <br><br>
        <asp:Label ID="Label7" runat="server"></asp:Label>
        
        
        </form>
        





        </asp:Panel>
        </center>
     
    </div>
    
</body>
</html>
