<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="grampan.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 234px;
            height: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align="center" style="height: 491px">

<table >

<tr>

<td class="style1"> 
    <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="Lime" 
        BorderStyle="Groove" BorderWidth="5px" Font-Bold="True" Font-Size="Large" 
        Height="58px" Width="185px" NavigateUrl="~/adminweb/register.aspx">Add User</asp:HyperLink></td> <td class="style1">
        <asp:HyperLink ID="HyperLink2" runat="server" BorderColor="Lime" 
        BorderStyle="Groove" BorderWidth="5px" Font-Bold="True" Font-Size="Large" 
        Height="58px" Width="185px" NavigateUrl="~/adminweb/removeuser.aspx">Remove User</asp:HyperLink>
            </td>
</tr>
<tr>

<td class ="style1">
     <asp:HyperLink ID="HyperLink3" runat="server" BorderColor="Lime" 
        BorderStyle="Groove" BorderWidth="5px" Font-Bold="True" Font-Size="Large" 
        Height="58px" Width="185px" NavigateUrl="~/adminweb/updateuser.aspx">Update User</asp:HyperLink> </td>

<td class ="style1">
     <asp:HyperLink ID="HyperLink4" runat="server" BorderColor="Lime" 
        BorderStyle="Groove" BorderWidth="5px" Font-Bold="True" Font-Size="Large" 
        Height="58px" Width="185px" NavigateUrl="~/adminweb/getrequest.aspx">Get Application User</asp:HyperLink></td>
</tr>
<tr>

<td class ="style1">
     <asp:HyperLink ID="HyperLink5" runat="server" BorderColor="Lime" 
        BorderStyle="Groove" BorderWidth="5px" Font-Bold="True" Font-Size="Large" 
        Height="58px" Width="185px" NavigateUrl="~/adminweb/dlivercert.aspx">Send Certificate</asp:HyperLink></td>
<td class="style1">
    <asp:HyperLink ID="HyperLink6" runat="server" BorderColor="Lime" 
        BorderStyle="Groove" BorderWidth="5px" Font-Bold="True" Font-Size="Large" 
        Height="58px" Width="185px" NavigateUrl="~/adminweb/rejected.aspx">Rejected Application</asp:HyperLink></td>
</tr>

<tr>
<td class ="style1">
     <asp:HyperLink ID="HyperLink7" runat="server" BorderColor="Lime" 
        BorderStyle="Groove" BorderWidth="5px" Font-Bold="True" Font-Size="Large" 
        Height="58px" Width="185px" NavigateUrl="~/adminweb/updatetax.aspx">Update Tax Details</asp:HyperLink></td>
<td class ="style1">
     <asp:HyperLink ID="HyperLink8" runat="server" BorderColor="Lime" 
        BorderStyle="Groove" BorderWidth="5px" Font-Bold="True" Font-Size="Large" 
        Height="58px" Width="185px" NavigateUrl="~/adminweb/getpayeduser.aspx">Get Payment User</asp:HyperLink></td>

</tr>
<tr>

<td class ="style1"> 
     <asp:HyperLink ID="HyperLink9" runat="server" BorderColor="Lime" 
        BorderStyle="Groove" BorderWidth="5px" Font-Bold="True" Font-Size="Large" 
        Height="58px" Width="185px">Add Notics</asp:HyperLink></td>
<td class ="style1">
     <asp:HyperLink ID="HyperLink10" runat="server" BorderColor="Lime" 
        BorderStyle="Groove" BorderWidth="5px" Font-Bold="True" Font-Size="Large" 
        Height="58px" Width="185px">Delete Old News</asp:HyperLink></td>
</tr>
<tr>
<td class ="style1">
     <asp:HyperLink ID="HyperLink11" runat="server" BorderColor="Lime" 
        BorderStyle="Groove" BorderWidth="5px" Font-Bold="True" Font-Size="Large" 
        Height="58px" Width="185px" NavigateUrl="~/adminweb/addbook.aspx">Add Book</asp:HyperLink></td>

<td class ="style1">
     <asp:HyperLink ID="HyperLink12" runat="server" BorderColor="Lime" 
        BorderStyle="Groove" BorderWidth="5px" Font-Bold="True" Font-Size="Large" 
        Height="58px" Width="185px" NavigateUrl="~/webpages/yojana.aspx">Add Yojana</asp:HyperLink></td>

</tr>



</table>

</div>






</asp:Content>
