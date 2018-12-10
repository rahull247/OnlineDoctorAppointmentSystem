<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientAppCancel.aspx.cs" Inherits="DocOnline.PatientAppCancel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <center><h2>Patient Appointment Cancel</h2></center>
 <center>
 <table cellpadding="3px" cellspacing="3px">
 <tr><td>
 <center>
 <table cellpadding="3px" cellspacing="3px">
 <tr>
 <td>
 <h3>Enter Appointment ID:-</h3>
 </td>
 <td>
 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
 </td>
 <td>
     <asp:Button ID="Button1" runat="server" Text="Delete" BackColor="#FF3300" 
         BorderStyle="None" Width="70px" onclick="Button1_Click" />
 </td>
 </tr>
</table>
 </center>
<center>

    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Enter Valid Appointment ID !" 
        ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{5}"></asp:RegularExpressionValidator>

</center>
</td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td><asp:Label ID="MessegeLabel" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label></td></tr>
<tr>
<td>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="Vertical" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="Appointment Id" DataField="AppId" />
            <asp:BoundField HeaderText="Appointment Date" DataField="AppDate" />
            <asp:BoundField HeaderText="Appointment Time" DataField="Timeslot" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</td>
</tr>
</table>
</center>
</asp:Content>
