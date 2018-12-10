<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DoctorUpdateDetails.aspx.cs" Inherits="DocOnline.DoctorUpdateDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1>Update Details</h1></center>
<center>
<table cellpadding="7px" cellspacing="2px">
<tr>
<td>
<h2 align="Left">
    Doctor Name:-
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
    Doctor Gender:-
</h2>
</td>
<td align="left">
<asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="RadioBtn" 
        Checked="True"/> &nbsp;&nbsp; 
<asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="RadioBtn"/>
</td>
<td>
    &nbsp;</td>
</tr>
<tr>
<td>
<h2 align="Left">
    Doctor Type:-
</h2>
</td>
<td>
<h2 Align="left">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
    </asp:DropDownList>
</h2>
</td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Select Doctor Type!" ForeColor="Red" InitialValue="Select" 
        ControlToValidate="DropDownList1" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>
<h2 align="Left">
    Doctor Mobile No:- 
</h2>
</td>
<td>
<h2 Align="left">
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</h2>
</td>
<td>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Enter Valid Mobile No!" 
        ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
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
        PostBackUrl="~/DoctorDetails.aspx" CausesValidation="False" />
</center>
<center>
<asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
</center>

</asp:Content>
