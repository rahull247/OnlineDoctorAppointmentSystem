<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DoctorAppShow.aspx.cs" Inherits="DocOnline.DoctorAppShow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center><h2 style="color: #FF00FF">Your Appointments Here</h2></center>
<center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="AppId" HeaderText="Appointment Id" />
            <asp:BoundField DataField="Patient_Name" HeaderText="Patient Name" />
            <asp:BoundField DataField="AppDate" HeaderText="Appointment Date" />
            <asp:BoundField DataField="Timeslot" HeaderText="Appointment Time" />
            <asp:BoundField DataField="Prec" HeaderText="Precristion" />
            <asp:BoundField DataField="Note" HeaderText="Note" />
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
</center>
</asp:Content>
