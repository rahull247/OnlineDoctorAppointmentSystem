<%@ Page Title="" Language="C#" MasterPageFile="~/AddAdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminAddDashboard.aspx.cs" Inherits="DocOnline.DocAddDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.Table
{
    margin-left:470px;
    margin-right:530px;
    margin-top:50px;
    margin-bottom:;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="Table">
      <center><h2 style="color:Blue">Admin Table DashBoard</h2></center>
    <asp:GridView ID="AdminAdd" runat="server" CellPadding="3" ForeColor="#333333" 
        AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="AdminId" 
          ShowHeaderWhenEmpty="true" onrowcommand="AddAdmin_RowCommand" 
          onrowcancelingedit="CancelAdmin_RowCommand" 
          onrowdeleting="DeleteAdmin_RowCommand" onrowediting="EditAdmin_RowCommand" 
          onrowupdating="SaveAdmin_RowCommand">
       <%------Theme-------%>
        <AlternatingRowStyle BackColor="White" />
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
        <Columns>
         <asp:TemplateField HeaderText="Username">
         <ItemTemplate>
             <asp:Label ID="Label1" runat="server" Text='<%# Eval("Username")%>'></asp:Label>
         </ItemTemplate>         
         <EditItemTemplate>
             <asp:TextBox ID="TextBox1" Text='<%# Eval("Username")%>' runat="server"></asp:TextBox>
         </EditItemTemplate>
         <FooterTemplate>
         <asp:TextBox ID="TextBox1foot" Text='<%# Eval("Username")%>' runat="server"></asp:TextBox>
         </FooterTemplate>
         </asp:TemplateField>
         <asp:TemplateField HeaderText="Password">
         <ItemTemplate>
             <asp:Label ID="Label2" runat="server" Text='<%# Eval("Password")%>'></asp:Label>
         </ItemTemplate>         
         <EditItemTemplate>
             <asp:TextBox ID="TextBox2" Text='<%# Eval("Password")%>' runat="server"></asp:TextBox>
         </EditItemTemplate>
         <FooterTemplate>
         <asp:TextBox ID="TextBox2foot" Text='<%# Eval("Password")%>' runat="server"></asp:TextBox>
         </FooterTemplate>
         </asp:TemplateField>
         <asp:TemplateField>
         <ItemTemplate>
             <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/Edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
            <asp:ImageButton ID="ImageButton2" ImageUrl="~/Images/Trash.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>

         </ItemTemplate>
         <EditItemTemplate>
             <asp:ImageButton ID="ImageButton3" ImageUrl="~/Images/Save.png" runat="server" CommandName="Save" ToolTip="Save" Width="20px" Height="20px"/>
            <asp:ImageButton ID="ImageButton4" ImageUrl="~/Images/Cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
             
         </EditItemTemplate>
         <FooterTemplate>
               <asp:ImageButton ID="ImageButton5" ImageUrl="~/Images/Add.png" runat="server" CommandName="Add" ToolTip="Add" Width="20px" Height="20px"/>
         </FooterTemplate>
         </asp:TemplateField>
        </Columns>
    </asp:GridView>
   <br />
    <asp:Label ID="Label3" runat="server" Text="" ForeColor="Green"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" Text="" ForeColor="Red"></asp:Label>
</div>
</asp:Content>
