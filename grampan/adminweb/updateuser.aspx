<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="updateuser.aspx.cs" Inherits="grampan.adminweb.updateuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form class="updateuser" runat ="server">
  <div align="center" style="height: 517px">
    <asp:Label ID="Label1" runat="server" Text="Enter User Id to update the details" 
          Font-Size="XX-Large" Font-Bold="True"></asp:Label>


    </br>
      <br />
      <br />
    <asp:TextBox ID="updateusername" runat="server" Height="46px" Width="322px"></asp:TextBox>


      <br />
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
          ControlToValidate="updateusername" Display="Dynamic" 
          ErrorMessage="** Enter The User Id" Font-Bold="True" Font-Size="Large" 
          ForeColor="Red"></asp:RequiredFieldValidator>


    </br>
      <br />
      <br />
    <asp:Button ID="updatesubmit" runat="server" Text="Update" Height="52px" 
        Width="207px" TabIndex="5" onclick="updatesubmit_Click" />

      <br />
      <br />
      <asp:Label ID="Label5" runat="server" BackColor="#FF3300" BorderColor="#66FF33" 
          EnableTheming="True" Font-Bold="True" Font-Size="Large" ForeColor="Blue" 
          Text="*******Please Enter Valid User Id*******"></asp:Label>

      <br />
      <br />

      <br />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UID" 
          DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
          BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
          Width="507px">
          <AlternatingRowStyle BackColor="#DCDCDC" />
          <Columns>
              <asp:CommandField ShowEditButton="True" />
              <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
              <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
              <asp:BoundField DataField="Username" HeaderText="Username" 
                  SortExpression="Username" />
              <asp:BoundField DataField="Password" HeaderText="Password" 
                  SortExpression="Password" />
              <asp:BoundField DataField="Taluka" HeaderText="Taluka" 
                  SortExpression="Taluka" />
              <asp:BoundField DataField="Dist" HeaderText="Dist" 
                  SortExpression="Dist" />
              <asp:BoundField DataField="UID" HeaderText="UID" InsertVisible="False" 
                  ReadOnly="True" SortExpression="UID" />
          </Columns>
          <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
          <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
          <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
          <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#0000A9" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#000065" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:GrampanchyatConnectionString2 %>" 
          DeleteCommand="DELETE FROM [Grampanchyat] WHERE [UID] = @original_UID" 
          InsertCommand="INSERT INTO [Grampanchyat] ([Fname], [Lname], [Username], [Password], [Taluka], [Dist]) VALUES (@Fname, @Lname, @Username, @Password, @Taluka, @Dist)" 
          OldValuesParameterFormatString="original_{0}" 
          SelectCommand="SELECT [Fname], [Lname], [Username], [Password], [Taluka], [Dist], [UID] FROM [Grampanchyat] WHERE ([UID] = @UID)" 
          
          
          UpdateCommand="UPDATE [Grampanchyat] SET [Fname] = @Fname, [Lname] = @Lname, [Username] = @Username, [Password] = @Password, [Taluka] = @Taluka, [Dist] = @Dist WHERE [UID] = @original_UID">
          <DeleteParameters>
              <asp:Parameter Name="original_UID" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="Fname" Type="String" />
              <asp:Parameter Name="Lname" Type="String" />
              <asp:Parameter Name="Username" Type="String" />
              <asp:Parameter Name="Password" Type="String" />
              <asp:Parameter Name="Taluka" Type="String" />
              <asp:Parameter Name="Dist" Type="String" />
          </InsertParameters>
          <SelectParameters>
              <asp:ControlParameter ControlID="updateusername" Name="UID" PropertyName="Text" 
                  Type="Int32" />
          </SelectParameters>
          <UpdateParameters>
              <asp:Parameter Name="Fname" Type="String" />
              <asp:Parameter Name="Lname" Type="String" />
              <asp:Parameter Name="Username" Type="String" />
              <asp:Parameter Name="Password" Type="String" />
              <asp:Parameter Name="Taluka" Type="String" />
              <asp:Parameter Name="Dist" Type="String" />
              <asp:Parameter Name="original_UID" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>

</div>
  <body>




 </body>
    
 
</form>



</asp:Content>
