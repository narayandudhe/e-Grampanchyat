<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="applycert.aspx.cs" Inherits="grampan.webpages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 24px;
        }
        .style2
        {
            width: 299px;
        }
        .style3
        {
            height: 24px;
            width: 299px;
        }
        .style5
        {
            width: 299px;
            height: 33px;
        }
        .style6
        {
            height: 33px
        }
        .style8
        {
            width: 299px;
            height: 34px;
        }
        .style9
        {
            height: 34px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <table>
    <tr><td>
        <asp:DropDownList ID="certificateselect" runat="server" Height="16px" 
            Width="163px">
            <asp:ListItem>----Select Certificate----</asp:ListItem>
            <asp:ListItem>Residence Certificate</asp:ListItem>
        </asp:DropDownList>
    </td><td class="style2">
        <asp:Button ID="Button1" runat="server" Text="Update" Height="36px" Width="144px" 
                style="margin-bottom: 19px; margin-left: 27px;" onclick="Button1_Click" /></td></tr>
    <tr><td>
        <asp:Label ID="Label1" runat="server" Text="Fname" Font-Bold="True" 
            Font-Size="Large"></asp:Label></td><td class="style2">
            <asp:TextBox ID="Fname" runat="server" style="margin-bottom: 11px"></asp:TextBox></td></tr>
 <tr><td>
        <asp:Label ID="Label2" runat="server" Text="Mname" Font-Bold="True" 
            Font-Size="Large"></asp:Label></td><td class="style2">
            <asp:TextBox ID="Mname" runat="server" Width="128px" 
                style="margin-bottom: 17px"></asp:TextBox></td></tr>
             <tr><td>
        <asp:Label ID="Label3" runat="server" Text="Lname" Font-Bold="True" Font-Size="Large"></asp:Label></td>
                 <td class="style2">
            <asp:TextBox ID="Lname" runat="server" Height="24px"></asp:TextBox></td></tr>
             <tr><td class="style9">
        <asp:Label ID="Label4" runat="server" Text="Village" Font-Bold="True" Font-Size="Large"></asp:Label></td>
                 <td class="style8">
            <asp:TextBox ID="Village" runat="server" Height="31px" Width="134px"></asp:TextBox></td></tr>
             <tr><td class="style6">
        <asp:Label ID="Label5" runat="server" Text="Taluka" Font-Bold="True" Font-Size="Large"></asp:Label></td>
                 <td class="style5">
            <asp:TextBox ID="Taluka" runat="server"></asp:TextBox></td></tr>
             <tr><td class="style1">
        <asp:Label ID="Label6" runat="server" Text="Dist" Font-Bold="True" Font-Size="Large"></asp:Label></td>
                 <td class="style3">
            <asp:TextBox ID="Dist" runat="server" Height="45px" style="margin-top: 5px"></asp:TextBox></td></tr>
    <tr><td>
        <asp:Button ID="Button2" runat="server" Text="Submit" Height="37px" 
            Width="91px" onclick="Button2_Click" /></td></tr>
    </table>
    </form>
</asp:Content>
