<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPager.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="DocOnline.ForgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center><h1><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp Password Recovery</h1></center>
<center>
<table cellpadding="2px" cellspacing="2px">
<tr>
<td><h2><asp:Label ID="Label6" runat="server" Text=""></asp:Label></h2></td>
<td><asp:TextBox ID="TextBox1" runat="server" Width="186px"></asp:TextBox></td>
</tr>
</table>
</center>
<center>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/Submit.png" onclick="ImageButton1_Click" /><br /><br />
<table cellpadding="2px" cellspacing="2px">    
 <tr>
    <td><h2><asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label> </h2></td>
    <td><h2><asp:Label ID="Label2" runat="server" Text=""></asp:Label></h2></td>
</tr>
 <tr>
    <td><h2><asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label> </h2></td>
    <td><h2><asp:Label ID="Label3" runat="server" Text=""></asp:Label></h2></td>
</tr>
    
</table>
</center>
</asp:Content>
