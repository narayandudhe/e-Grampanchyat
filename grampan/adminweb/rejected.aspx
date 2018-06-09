<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="rejected.aspx.cs" Inherits="grampan.adminweb.rejected" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form runat="server">

<div align="center">
    <asp:Label ID="Label1" runat="server" 
        Text="Enter username to Reject the application" Font-Size="X-Large"></asp:Label></br>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="rejectedapp" runat="server" Height="55px" Width="264px" 
        ontextchanged="rejectedapp_TextChanged"  >  </asp:TextBox></br>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="resion due to rejected" 
        Font-Size="X-Large"></asp:Label>
    <asp:TextBox ID="resion" runat="server" Height="54px" Width="270px"></asp:TextBox><br />
    <br />
    <asp:Button ID="rejectsubmit" runat="server" Text="Submit" Height="75px" 
        Width="180px" />
    </div>
    </form>
</asp:Content>
