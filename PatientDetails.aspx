<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientDetails.aspx.cs" Inherits="DocOnline.PatientDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style> 
p.test {
    width: 15em; 
   word-wrap: break-word;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center><h1>Your Details</h1></center>
<center>
<table cellpadding="7px" cellspacing="2px">
<tr>
<td>
<h2 align="Left">
Patient Name:-
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
<h2 align="Left">
Patient Gender:-
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
<h2 align="Left">
Patient Address:-
</h2>
</td>
<td>
<h2>
<p class="test">
<asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
</p>
</h2>
</td>
</tr>
<tr>
<td>
<h2 align="Left">
Patient BloodGroup:-
</h2>
</td>
<td>
<h2>
<asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
</h2>
</td>
</tr>
<tr>
<td>
<h2 align="Left">
Patient Mobile NO:-
</h2>
</td>
<td>
<h2>
<asp:Label ID="Label5" runat="server" Text="Label" ForeColor="Blue"></asp:Label>
</h2>
</td>
</tr> 
</table>
</center>
<center>
<asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/PatientEditButton.png" 
        PostBackUrl="~/PatientUpdateDetails.aspx" />
</center>
</asp:Content>
