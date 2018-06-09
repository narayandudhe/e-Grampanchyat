<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="removeuser.aspx.cs" Inherits="grampan.adminweb.removeuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" style="height: 590px"  >
 <center>
    <asp:Label ID="Label1" runat="server" Text="Enter UserId To Remove The User" 
        Font-Bold="True" Font-Size="XX-Large" ForeColor="Red"></asp:Label></br></br><br />
    <asp:TextBox ID="UID" runat="server" Height="46px" Width="176px"></asp:TextBox></br></br><br />
    <asp:Button ID="removeuserb" runat="server" Text="RemoveUser" Font-Bold="True" 
        Font-Size="X-Large" Height="68px" Width="197px" 
         onclick="removeuserb_Click" /></form>

</center>   

</asp:Content>
