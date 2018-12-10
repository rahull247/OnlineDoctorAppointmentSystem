<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientBooking.aspx.cs" Inherits="DocOnline.PatientBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center><h1 style="color: #800080">Patient Appointment Booking</h1></center>
<center>
<table cellpadding="4px" cellspacing="4px">
<tr>
  <td>
    <h2 align="left">
        Patient Name:-
    </h2>
  </td>
  <td>
    <h3>
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#0066FF"></asp:Label>
    </h3>
  </td>
  <td>
        &nbsp;&nbsp;&nbsp;
  </td>
</tr>
<tr>
  <td>
    <h2 align="left">
        Appointment Id:-
    </h2>
  </td>
  <td>
    <h3>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </h3>
  </td>
  <td>
        &nbsp;&nbsp;&nbsp;
  </td>
</tr>
<tr>
  <td>
    <h2 align="left">
        Doctor Type:-
    </h2>
  </td>
  <td>
    <h3>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="110px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            AutoPostBack="True" Height="20px">
        </asp:DropDownList>
    </h3>
  </td>
  <td>
        &nbsp;&nbsp;&nbsp;
  </td>
</tr>
<tr>
  <td>
    <h2 align="left">
        Doctor Name:-
    </h2>
  </td>
  <td>
    <h3>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="110px">
        </asp:DropDownList>
    </h3>
  </td>
  <td>
        &nbsp;&nbsp;&nbsp;
  </td>
</tr>
<tr>
  <td>
    <h2 align="left">
        Appointement Date:-
    </h2>
  </td>
  <td>
    <h3>
        <asp:TextBox ID="TextBox1" runat="server" Height="22px"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1"
            runat="server" Height="27px" ImageUrl="~/Images/Calender.png" 
            style="margin-top: 0px" Width="30px" onclick="ImageButton1_Click" />

        <asp:Calendar ID="Calendar1" runat="server" Visible="False" BackColor="White" 
            BorderColor="Black" DayNameFormat="Shortest" Font-Names="Algerian" 
            Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" 
            ShowNextPrevMonth="False" TitleFormat="Month" Width="400px" 
            onselectionchanged="Calendar1_SelectionChanged" 
            ondayrender="Calendar1_DayRender">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                ForeColor="#333333" Height="10pt" />
            <DayStyle Width="14%" />
            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                Font-Size="8pt" ForeColor="#333333" Width="1%" />
            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                ForeColor="White" Height="14pt" />
            <TodayDayStyle BackColor="#CCCC99" />
        </asp:Calendar>
    </h3>
  </td>
  <td>
        &nbsp;&nbsp;&nbsp;
  </td>
</tr>
<tr>
  <td>
    <h2 align="left">
        Appointment Time:-
    </h2>
  </td>
  <td>
    <h3>
        <asp:DropDownList ID="DropDownList3" runat="server" Width="110px" Height="20px" 
            AutoPostBack="True">
        </asp:DropDownList>
    </h3>
  </td>
  <td>
        &nbsp;&nbsp;&nbsp;
  </td>
</tr>
</table>
</center>
<center>
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/Images/Submit.png" onclick="ImageButton2_Click" />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
</center>
</asp:Content>
