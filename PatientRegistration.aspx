<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPager.Master" AutoEventWireup="true" CodeBehind="PatientRegistration.aspx.cs" Inherits="DocOnline.PatientRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.Table1
{
    margin-left:16%;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1 style="color: #800080">Patient Registration</h1></center>
<center>
<table class= "Table1" cellpadding="5px" cellspacing="6px">
 <tr>
     <td>

        <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Name:-" 
             Font-Bold="False"></asp:Label>
    
    </td>
     <td align="Left">

        <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="150px" required></asp:TextBox>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Only Characters Allowed !" 
            ForeColor="Red" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>

    </td>
 </tr>
 <tr>
     <td>

        <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
             Text="Blood Group:-" Font-Bold="False"></asp:Label>
    
    </td>
     <td align="Left">

         <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="157px">
             <asp:ListItem>Select</asp:ListItem>
             <asp:ListItem Value="A+">A+</asp:ListItem>
             <asp:ListItem>B+</asp:ListItem>
             <asp:ListItem>AB+</asp:ListItem>
             <asp:ListItem>O+</asp:ListItem>
             <asp:ListItem>O-</asp:ListItem>
             <asp:ListItem>AB-</asp:ListItem>
             <asp:ListItem>B-</asp:ListItem>
             <asp:ListItem>A-</asp:ListItem>
         </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="DropDownList1" ErrorMessage="Select Blood Group !" 
             ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </td>
 </tr>
 <tr>
     <td>

        <asp:Label ID="Label5" runat="server" style="font-weight: 700" 
             Text="Gender:-"></asp:Label>
    
    </td>
     <td align="Left">

         <asp:RadioButton ID="RadioButton1" runat="server" GroupName="GenderRadio" 
             Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:RadioButton ID="RadioButton2" runat="server" GroupName="GenderRadio" 
             Text="Female" />

    </td>
 </tr>
 <tr>
    <td>

        <asp:Label ID="Label3" runat="server" style="font-weight: 700" Text="Address:-"></asp:Label>

    </td>
    <td align="Left">

        <asp:TextBox ID="TextBox2" runat="server" Height="57px" Width="150px" required 
            TextMode="MultiLine"></asp:TextBox>

    </td>
 </tr>
 <tr>
    <td>

        <asp:Label ID="Label4" runat="server" style="font-weight: 700" 
            Text="Mobile No:-"></asp:Label>

    </td>
    <td align="Left">

        <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="150px" required 
            TextMode="Phone"></asp:TextBox>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ErrorMessage="Enter Valid Mobile No !" ControlToValidate="TextBox3" 
            ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

    </td>
 </tr>
 <tr>
     
    <td style="font-weight: 700">

        Email Id:-</td>
    <td align="Left">

        <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="150px" required></asp:TextBox>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ErrorMessage="Enter Valid Email Id !" ControlToValidate="TextBox4" 
            ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

    </td>
 </tr>
 <tr>
    <td style="font-weight: 700">

        Username:-</td>
    <td align="Left">

        <asp:TextBox ID="TextBox5" runat="server" Height="24px" Width="150px" required></asp:TextBox>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ErrorMessage="Only 7 Characters Allowed !" ForeColor="Red" 
            ValidationExpression="^[\s\S]{0,7}$" ControlToValidate="TextBox5"></asp:RegularExpressionValidator>

    </td>
 </tr>
 <tr>
    <td style="font-weight: 700">

        Password:-</td>
    <td align="Left">

        <asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="150px" required 
            TextMode="Password"></asp:TextBox>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
            ErrorMessage="Only 8 Characters Allowed !" ControlToValidate="TextBox6" 
            ForeColor="Red" ValidationExpression="^[\s\S]{0,8}$"></asp:RegularExpressionValidator>

    </td>
 </tr>
 <tr>
    <td style="font-weight: 700">

        Confirm Password:-</td>
    <td align="Left">

        <asp:TextBox ID="TextBox7" runat="server" Height="24px" Width="150px" required 
            TextMode="Password"></asp:TextBox>

        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
            ErrorMessage="Password does not match !" ForeColor="Red"></asp:CompareValidator>
        <br />

    </td>
 </tr>
</table>
</center>
<center>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Images/Submit.png" onclick="ImageButton1_Click" />
</center><br />
<center>
    <asp:Label ID="Label6" runat="server" ForeColor="Lime" Font-Size="Large" 
        style="font-weight: 700"></asp:Label>
</center>

</asp:Content>
