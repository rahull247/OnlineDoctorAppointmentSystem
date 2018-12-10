<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="AddPrescription.aspx.cs" Inherits="DocOnline.AddPrescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1 style="color: #6600FF">Add Prescription Here</h1></center>
<center>
<table cellpadding="5px"  cellspacing="5px">
<tr>
<td><h2>Enter Appointment Id:-</h2></td>
<td align="left"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>
</tr>
<tr>
<td><h2 align="left">Write Precription:-</h2></td>
<td align="left"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </td>
</tr>
<tr>
<td><h2 align="left">Enter Note:-</h2></td>
<td><asp:TextBox ID="TextBox3" runat="server" Height="51px" TextMode="MultiLine" 
        Width="178px"></asp:TextBox> </td>
</tr>
</table>
</center>
<center><asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" 
        Font-Size="15pt" onclick="Button1_Click" Width="96px" /></center>
<center><asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></center>
</asp:Content>
