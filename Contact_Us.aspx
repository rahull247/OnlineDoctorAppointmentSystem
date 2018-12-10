<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPager.Master" AutoEventWireup="true" CodeBehind="Contact_Us.aspx.cs" Inherits="DocOnline.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .style3
        {
            width: 100%;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="margin-left:50px">
    <br />
    <h1 style="box-sizing: border-box; margin: 0px 0px 20px; font-size: 36px; font-family: Cabin, &quot;Helvetica Neue&quot;, sans-serif; font-weight: 400; line-height: inherit; color: rgb(76, 59, 118); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-stretch: inherit; padding: 0px; border: 0px; letter-spacing: 0.5px; text-align: left; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
        Contact Us</h1>
    <p style="box-sizing: border-box; margin: 0px 0px 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: Raleway, sans-serif; padding: 0px; border: 0px; color: rgb(51, 51, 51); letter-spacing: 0.5px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
        Please share your contact information along with you specific questions or 
        comments and we will get back to you within the next few hours.</p>
    <table class="style3">
        <tr>
            <td >
                Name :-</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="putbox" required></asp:TextBox>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Only Character Allowed!" 
                    ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td >
                Email :-</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="putbox" TextMode="SingleLine" required></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Valid Email ID!" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td >
                Phone :-</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="putbox" required></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Valid Phone No!" 
                    ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td >
                Area :-</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="putbox" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
                Comment :-</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" CssClass="comment" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="submit-btn" 
                    onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                    style="font-size: x-large"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
