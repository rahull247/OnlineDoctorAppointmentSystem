<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DoctorDetails.aspx.cs" Inherits="DocOnline.DoctorDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center><h1>Your Details</h1></center>
<center>
<table cellpadding="7px" cellspacing="2px">
<tr>
<td>
<h2 align="left">
Doctor Name:-
</h2>
</td>
<td>
<h2>
<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
</h2>
</td>
</tr>
<tr>
<td>
<h2 align="left">
Doctor Type:-
</h2>
</td>
<td>
<h2>
<asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
</h2>
</td>
</tr>

<tr>
<td>
<h2 align="left">
Doctor Gender:-
</h2>
</td>
<td>
<h2>
<asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
</h2>
</td>
</tr>
<tr>
<td>
<h2 align="left">
Doctor Mobile No:-
</h2>
</td>
<td>
<h2>
<asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
</h2>
</td>
</tr>    
</table>
</center>
<center>
<asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/PatientEditButton.png" 
        PostBackUrl="~/DoctorUpdateDetails.aspx" />
</center>

</asp:Content>
