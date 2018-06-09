<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="getrequest.aspx.cs" Inherits="grampan.adminweb.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
<asp:Label ID="Label1" runat="server" Text=" Select Certificate   " 
    Font-Bold="True" Font-Size="Large"></asp:Label>
<asp:DropDownList ID="certificate" runat="server" Height="27px" Width="132px" 
    Font-Bold="True" Font-Size="Large">
    <asp:ListItem>all</asp:ListItem>
    <asp:ListItem>Residence Certificate</asp:ListItem>
    <asp:ListItem>caste</asp:ListItem>
</asp:DropDownList>

<br />
<br />

<asp:Button ID="Button1" runat="server" Text="Get Application" Font-Bold="True" 
    Font-Size="Medium" Height="31px" Width="133px" />





<br />
<br />







<br />
<br />
<asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
    AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
    BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
    DataKeyNames="CPID" DataSourceID="SqlDataSource1" Height="156px" Width="563px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    <Columns>
        
        <asp:HyperLinkField NavigateUrl="~/adminweb/createcertificate.aspx" Visible="true" Text="Approve"/>
        <asp:HyperLinkField NavigateUrl ="~/adminweb/rejected.aspx" Visible="true" Text="Reject"/>
        <asp:BoundField DataField="CPID" HeaderText="CPID" SortExpression="CPID" 
            InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" />
        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        <asp:BoundField DataField="CertificateType" HeaderText="CertificateType" 
            SortExpression="CertificateType" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:GrampanchyatConnectionString2 %>" 
    
        SelectCommand="SELECT [CPID], [UID], [Date], [CertificateType] FROM [certificaterequest]">
</asp:SqlDataSource>







<br />
<br />
<asp:Panel ID="Panel1" runat="server">
<b>
</b>
</asp:Panel>



</form>


</asp:Content>
