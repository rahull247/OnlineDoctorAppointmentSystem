<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPager.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="DocOnline.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
.BtnLogin
{
    position:fixed;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1 style="margin-left:45%; margin-right:40%;">Admin Login</h1>
<table style="margin-left:45%; width: 200px;" cellpadding="9px" cellspacing="5px">
 <tr>
   <td>
       <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
     </td>
    </tr>
 
 <tr>
   <td>
       <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="156px" placeholder="Username" style="text-align:center" required></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
           ControlToValidate="TextBox1" ErrorMessage="Only 5 character allowed !" 
           ForeColor="Red" ValidationExpression="^[\s\S]{0,8}$"></asp:RegularExpressionValidator>
     </td>
    </tr>
    <tr>
   <td>
       <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="156px" 
            TextMode="Password" placeholder="Password" style="text-align:center" required></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
           ControlToValidate="TextBox2" ErrorMessage="Only 8 character allowed !" 
           ForeColor="Red" ValidationExpression="^[\s\S]{0,8}$"></asp:RegularExpressionValidator>
     </td>
    </tr id="BtnLogin">
    <tr>
   <td>
      <center> 
          <asp:ImageButton ID="ImageButton1" runat="server" Height="46px" 
              ImageUrl="~/Images/Loginbtn.png" Width="144px" 
              onclick="ImageButton1_Click" />
       </center>
    </td>
    </tr>
    <td>
      <center> 
          <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" 
              NavigateUrl="~/ForgetPassword.aspx">Forget Password??</asp:HyperLink>
       </center>
    </td>
    <tr>
     <td>
      <center> 
          <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Red" 
              NavigateUrl="~/AdminRegistration.aspx">Registration For Admin</asp:HyperLink>
       </center>
    </td>
    </tr>
</table>
</asp:Content>
