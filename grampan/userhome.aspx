<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="userhome.aspx.cs" Inherits="grampan.userhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">





    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1>PROFILE</h1></center>
<form runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="UID" DataSourceID="SqlDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None" Height="62px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="611px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" 
                InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:BoundField DataField="HomeNo" HeaderText="HomeNo" 
                SortExpression="HomeNo" />
            <asp:BoundField DataField="Taluka" HeaderText="Taluka" 
                SortExpression="Taluka" />
        </Columns>

        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />

    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:GrampanchyatConnectionString2 %>" 
        
        SelectCommand="SELECT [UID], [Fname], [Lname], [Username], [HomeNo], [Taluka] FROM [Grampanchyat] WHERE ([UID] = @UID)">
        <SelectParameters>
            <asp:SessionParameter Name="UID" 
                SessionField="normal" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
  
<center><h1>Application</h1>
    </center>
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CPID" DataSourceID="SqlDataSource2" Width="617px" 
        AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        ForeColor="Black" Height="40px" 
        onselectedindexchanged="GridView2_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="CPID" HeaderText="CPID" 
            SortExpression="CPID" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" />
        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        <asp:BoundField DataField="Status" HeaderText="Status" 
            SortExpression="Status" />
    
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:GrampanchyatConnectionString2 %>" 
        SelectCommand="SELECT * FROM [certificaterequest] WHERE ([UID] = @UID)">
        <SelectParameters>
        
            <asp:SessionParameter Name="UID" SessionField="normal" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <br />
    <center>
        <h2><asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl="~/webpages/applycert.aspx">Apply New Certificate</asp:LinkButton></h2></center>    
    <br />
    <center><h1>Tax</h1></center>
<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="TID" 
        DataSourceID="SqlDataSource3" Width="641px" Height="123px">
    <Columns>
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
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:GrampanchyatConnectionString2 %>" 
        SelectCommand="SELECT * FROM [Billing] WHERE ([UID] = @UID)">
        <SelectParameters>
            <asp:SessionParameter Name="UID" SessionField="normal" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
   
    </form>
</asp:Content>
