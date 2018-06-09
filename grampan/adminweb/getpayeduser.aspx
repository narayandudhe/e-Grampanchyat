<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="getpayeduser.aspx.cs" Inherits="grampan.adminweb.getpayeduser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form runat="server">

<asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
    AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
    DataKeyNames="TID" DataSourceID="SqlDataSource1" Height="139px" 
    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="619px">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="TID" HeaderText="TID" SortExpression="TID" 
            InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" />
        <asp:BoundField DataField="Mode" HeaderText="Mode" SortExpression="Mode" />
        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        <asp:BoundField DataField="Sucessful" HeaderText="Sucessful" 
            SortExpression="Sucessful" />
        <asp:BoundField DataField="amount" HeaderText="amount" 
            SortExpression="amount" />
    </Columns>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
    <RowStyle BackColor="White" ForeColor="#330099" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>




<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:GrampanchyatConnectionString2 %>" 
    SelectCommand="SELECT * FROM [Billing]" 
    DeleteCommand="DELETE FROM [Billing] WHERE [TID] = @TID" 
    InsertCommand="INSERT INTO [Billing] ([UID], [Mode], [Date], [Sucessful], [amount]) VALUES (@UID, @Mode, @Date, @Sucessful, @amount)" 
    UpdateCommand="UPDATE [Billing] SET [UID] = @UID, [Mode] = @Mode, [Date] = @Date, [Sucessful] = @Sucessful, [amount] = @amount WHERE [TID] = @TID">
    <DeleteParameters>
        <asp:Parameter Name="TID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UID" Type="Int32" />
        <asp:Parameter Name="Mode" Type="String" />
        <asp:Parameter Name="Date" Type="String" />
        <asp:Parameter Name="Sucessful" Type="String" />
        <asp:Parameter Name="amount" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UID" Type="Int32" />
        <asp:Parameter Name="Mode" Type="String" />
        <asp:Parameter Name="Date" Type="String" />
        <asp:Parameter Name="Sucessful" Type="String" />
        <asp:Parameter Name="amount" Type="Decimal" />
        <asp:Parameter Name="TID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>




</form>


</asp:Content>
