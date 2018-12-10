<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoardMaster.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="DocOnline.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.Addadminbtn
{
    margin-left:270px;
    margin-top:50px;
    
}
.Adddoctorbtn
{
    margin-left:200px;
}
.Hello
{   
 vertical-align:top;
 margin-left:20px;
}
.User
{
 vertical-align:top;
 margin-right:40px;
   
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Images/Add Admin.png" CssClass="Addadminbtn" 
         PostBackUrl="~/AdminAddDashboard.aspx"/>
        <asp:ImageButton ID="ImageButton2" runat="server" CssClass="Adddoctorbtn" 
         Height="53px" ImageUrl="~/Images/Add Doctor.png" Width="304px" 
         PostBackUrl="~/AddDocDashboard.aspx" />
    <asp:Label ID="Label1" runat="server" Text="Hello:" CssClass="Hello" 
            Font-Bold="True" Font-Size="Larger"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Red" CssClass="User"
             Font-Size="Larger"></asp:Label>
</asp:Content>
