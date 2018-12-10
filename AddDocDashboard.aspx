<%@ Page Title="" Language="C#" MasterPageFile="~/AddDocMaster.Master" AutoEventWireup="true" CodeBehind="AddDocDashboard.aspx.cs" Inherits="DocOnline.AddDocDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1>Add Doctor Dashboard</h1></center>
    <center>
     <table class="doctable">
         <tr>
             <td>
                <table cellspacing="4" cellpadding="4">
                    <tr>
                      <td>
                     Doctor Id:
                      </td>
                      <td>
                          <asp:Label ID="LabeleId" runat="server" Font-Bold="True"></asp:Label>
                      </td>                
                   </tr>
                    <tr>
                      <td>
                     Doctor Name:*
                      </td>
                      <td>
                    <asp:TextBox ID="txtDoctorName" runat="server" required></asp:TextBox> 
                      </td>
                      <td>

                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                              ControlToValidate="txtDoctorName" ErrorMessage="Only Character Allowed !" 
                              ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>

                      </td>                
                   </tr>
                    <tr>
                 <td>
                     Doctor Type:
                 </td>
                <td>
                    <asp:DropDownList ID="DDLDoctorType" runat="server" Width="140px" 
                        AutoPostBack="True" >
                     </asp:DropDownList>
                 </td>
                 <td>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                         ControlToValidate="DDLDoctorType" ErrorMessage="Select the Doctor Type !" 
                         ForeColor="Red" InitialValue="Select" SetFocusOnError="True"></asp:RequiredFieldValidator>

                 </td>
            </tr>
            <tr>
                 <td>
                     Doctor Gender:
                 </td>
                <td>
                    <asp:RadioButton ID="RdButtonMale" runat="server" Text="Male" GroupName="RadioBtn" Checked="True"/><asp:RadioButton ID="RdButtonFemale" runat="server" Text="Female" GroupName="RadioBtn"/>
                 </td>
            </tr>
            <tr>
                 <td>
                     Doctor Mobile No:*
                 </td>
                <td>
                    <asp:TextBox ID="txtDoctorNo" runat="server" required></asp:TextBox>
                 </td>
                 <td>

                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                         ControlToValidate="txtDoctorNo" ErrorMessage="Enter Valid Mobile No" 
                         ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                 </td>
            </tr>
            <tr>
                 <td>
                     Doctor Age:
                 </td>
                <td>
                    <asp:TextBox ID="txtDocAge" runat="server" Width="47px" required></asp:TextBox>
                 </td>
                 <td>
                     <asp:RangeValidator ID="RangeValidator1" runat="server" 
                         ControlToValidate="txtDocAge" ErrorMessage="Age Should be Between 22 To 40" 
                         ForeColor="Red" MaximumValue="40" MinimumValue="22"></asp:RangeValidator>

                 </td>
            </tr>
            <tr>
                 <td>
                     Doctor Username:
                 </td>
                <td>
                    <asp:TextBox ID="txtDocUsername" runat="server" required></asp:TextBox>
                 </td>
                 <td>

                     <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                         ControlToValidate="txtDocUsername" ErrorMessage="Only 7 Character Allowed !" 
                         ForeColor="Red" ValidationExpression="^[\s\S]{0,7}$"></asp:RegularExpressionValidator>

                 </td>
            </tr>
            <tr>
                 <td>
                     Doctor Password:
                 </td>
                <td>
                    <asp:TextBox ID="txtDocPassword" runat="server" required></asp:TextBox>
                 </td>
                 <td>

                     <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                         ControlToValidate="txtDocPassword" ErrorMessage="Only 8 Character Allowed !" 
                         ForeColor="Red" ValidationExpression="^[\s\S]{0,8}$" 
                         SetFocusOnError="True"></asp:RegularExpressionValidator>

                 </td>
            </tr>
               </table>
            </td>
             <!--<td>
                <table cellpadding="3" cellspacing="3">
                    <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="90px" 
                            ImageUrl="~/Images/DocImgs/AddPerson.png" 
                            Width="90px" />
                    </td>
                    </tr>
                    <tr>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    </tr>
                    <tr>
                    <td>
                        
                        <asp:Button ID="BtnShow" runat="server" Text="Click To Upload"/>
                    </td>
                    </tr>
                </table>  
            </td>-->
         </tr>
     </table>
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Images/DoctorAddBtn.png" onclick="ImageButton1_Click" />
        &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" 
            ImageUrl="~/Images/DoctorDelBtn.png" Width="210px" onclick="ImageButton2_Click" 
            /><br /><br />
        <asp:Label ID="MessageLabel" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>
        <br />
        <asp:GridView ID="gridvDoc" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="DocId" HeaderText="Doctor Id" />
                <asp:BoundField DataField="DocName" HeaderText="Doctor Name" />
                <asp:BoundField DataField="Speciality" HeaderText="Doctor Speciality" />
                <asp:BoundField DataField="DocGender" HeaderText="Doctor Gender" />
                <asp:BoundField DataField="DocMob" HeaderText="Doctor Mobile No" />
                <asp:BoundField DataField="DocAge" HeaderText="Doctor Age" />
                <asp:BoundField DataField="DocUsername" HeaderText="Username" />
                <asp:BoundField DataField="DocPassword" HeaderText="Password" />
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
