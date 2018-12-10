
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPager.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DocOnline.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
 
  .Doctorroundbtn
  {
   margin-left:120px;
   margin-right:100px;
  }
  .Patientroundbtn
  {
   margin-left:100px;
    
  }
  .Adminroundbtn
  {
   margin-right:10px;
   margin-right:50px;    
  }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="margin-left:100px; margin-right:100px; margin-top:40px;"> 
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/Adminbtn.png" CssClass="Adminroundbtn" 
            PostBackUrl="~/AdminLogin.aspx" />
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/Images/Doctorbtn.png" CssClass="Doctorroundbtn" 
            PostBackUrl="~/DoctorLogin.aspx" />
    <asp:ImageButton ID="ImageButton3" runat="server" 
        ImageUrl="~/Images/Patientbtn.png" CssClass="Patientroundbtn" 
            PostBackUrl="~/PatientLogin.aspx" />
   </p>
</asp:Content>
