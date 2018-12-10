<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientUpdateDetails.aspx.cs" Inherits="DocOnline.PatientUpdateDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center><h1>Update Details</h1></center>
<center>
<table cellpadding="7px" cellspacing="2px">
<tr>
<td>
<h2 align="Left">
Patient Name:-
</h2>
</td>
<td>
<h2 Align="left">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</h2>
</td>
<td>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Only Character Allowed !" 
        ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td>
<h2 align="Left">
Patient Gender:-
</h2>
</td>
<td align="left">
<asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="RadioBtn"/> &nbsp;&nbsp; 
<asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="RadioBtn"/>
</td>
</tr>
<tr>
<td>
<h2 align="Left">
Patient Address:-
</h2>
</td>
<td>
<h2 Align="left">
    <asp:TextBox ID="TextBox3" runat="server" Height="46px" TextMode="MultiLine"></asp:TextBox>
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
<h2 Align="left">
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>A+</asp:ListItem>
        <asp:ListItem>B+</asp:ListItem>
        <asp:ListItem>AB+</asp:ListItem>
        <asp:ListItem>O+</asp:ListItem>
        <asp:ListItem>O-</asp:ListItem>
        <asp:ListItem>AB-</asp:ListItem>
        <asp:ListItem>B-</asp:ListItem>
        <asp:ListItem>A-</asp:ListItem>
    </asp:DropDownList>
</h2>
</td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Select Blood Group !" ForeColor="Red" InitialValue="Select" 
        SetFocusOnError="True" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
<h2 align="Left">
Patient Mobile No:-
</h2>
</td>
<td>
<h2 Align="left">
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</h2>
</td>
<td>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Enter Valid Mobile No!" 
        ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
</td>
</tr> 
</table>
</center>
<center>
<asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/UpdateBtn.png" onclick="ImageButton1_Click" />

&nbsp;

<asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/Images/CancelBtn.png" Height="50px" 
        PostBackUrl="~/PatientDetails.aspx" CausesValidation="False" />
&nbsp;
</center>
<center>
<asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
</center>
</asp:Content>
