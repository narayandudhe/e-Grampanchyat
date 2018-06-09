<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="grampan.adminweb.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            height: 24px;
            width: 150px;
        }
        .style9
        {
            height: 59px;
            width: 150px;
        }
        .style10
        {
            width: 242px;
            height: 59px;
        }
        .style11
        {
            width: 242px;
        }
        .style12
        {
            height: 24px;
            width: 242px;
        }
        .style13
        {
            width: 150px;
        }
        .style14
        {
            width: 150px;
            height: 42px;
        }
        .style16
        {
            width: 242px;
            height: 42px;
        }
        .style17
        {
            width: 180px;
            height: 59px;
        }
        .style18
        {
            width: 180px;
        }
        .style19
        {
            height: 24px;
            width: 180px;
        }
        .style20
        {
            width: 180px;
            height: 42px;
        }
        .style21
        {
            width: 150px;
            height: 60px;
        }
        .style22
        {
            width: 180px;
            height: 60px;
        }
        .style23
        {
            width: 242px;
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
 <body>
 <form id="Form1" class ="register" runat="server">

 <table bgcolor="#00FF99" border="5" cellpadding="5" cellspacing="20" 
     frame="border" style="margin-right: 0px" >
 <tr><td class="style9"></td><td class="style17"><asp:Label ID="Label1" runat="server" Text="Enter User Details" 
         Font-Bold="True" Font-Size="X-Large"></asp:Label></td><td class="style10"></td></tr>
 <tr><td class="style13"><asp:Label ID="Label2" runat="server" Text="Fname" 
         Font-Size="Large"></asp:Label></td>
     <td class="style18">
         <asp:TextBox ID="Fname" runat="server"></asp:TextBox></td>
     <td class="style11">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="Fname" ErrorMessage="** Enter First Name" Font-Bold="True" 
             Font-Size="Large"></asp:RequiredFieldValidator>
     </td></tr>

     <tr><td class="style13">    <asp:Label ID="Label3" runat="server" Text="Mname" 
             Font-Size="Large"></asp:Label></td>
         <td class="style18">
         <asp:TextBox ID="Mname" runat="server"></asp:TextBox></td><td class="style11">
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                 ControlToValidate="Mname" ErrorMessage="** Enter Middle Name" Font-Bold="True" 
                 Font-Size="Large"></asp:RequiredFieldValidator>
         </td></tr>

      <tr><td class="style13">   <asp:Label ID="Label4" runat="server" Text="Lname" 
              Font-Size="Large"></asp:Label></td>
          <td class="style18">
         <asp:TextBox ID="Lname" runat="server"></asp:TextBox></td><td class="style11">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                  ControlToValidate="Lname" ErrorMessage="** Enter Last Name" Font-Bold="True" 
                  Font-Size="Large"></asp:RequiredFieldValidator>
          </td></tr>
         
      <tr><td class="style2">   <asp:Label ID="Label5" runat="server" Text="Username" 
              Font-Size="Large"></asp:Label></td>
          <td class="style19">
         <asp:TextBox ID="Username" runat="server"></asp:TextBox></td><td class="style12">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                  ControlToValidate="Username" ErrorMessage="** Enter User Name" Font-Bold="True" 
                  Font-Size="Large"></asp:RequiredFieldValidator>
          </td></tr>
         
       <tr><td class="style13">  <asp:Label ID="Label6" runat="server" Text="Password" 
               Font-Size="Large"></asp:Label></td>
           <td class="style18">
         <asp:TextBox ID="Password" runat="server"></asp:TextBox></td><td class="style11">
               <asp:CompareValidator ID="CompareValidator1" runat="server" 
                   ControlToCompare="Cpassword" ControlToValidate="Password" 
                   ErrorMessage="** Password Not Match " Font-Bold="True" Font-Size="Large"></asp:CompareValidator>
           </td></tr>
         
       <tr><td class="style13">  <asp:Label ID="Label7" runat="server" Text="Cpassword" 
               Font-Size="Large"></asp:Label></td>
           <td class="style18">
         <asp:TextBox ID="Cpassword" runat="server"></asp:TextBox></td><td class="style11"></td></tr>
         
       <tr><td class="style13">  <asp:Label ID="Label8" runat="server" Text="Email" 
               Font-Size="Large"></asp:Label></td>
           <td class="style18">
         <asp:TextBox ID="Email" runat="server"></asp:TextBox></td><td class="style11">
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                   ControlToValidate="Email" ErrorMessage="** Enter Correct Email" 
                   Font-Bold="True" Font-Size="Large" 
                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           </td></tr>
         
      <tr><td class="style21">   <asp:Label ID="Label9" runat="server" Text="Mnumber" 
              Font-Size="Large"></asp:Label></td>
          <td class="style22">
         <asp:TextBox ID="Mnumber" runat="server"></asp:TextBox></td><td class="style23">
              <asp:CustomValidator ID="CustomValidator1" runat="server" 
                  ControlToValidate="Mnumber" ErrorMessage="** Enter Correct Mnumber" 
                  Font-Bold="True" Font-Size="Large"></asp:CustomValidator>
          </td></tr>
         
       <tr><td class="style13">  <asp:Label ID="Label10" runat="server" Text="MotherName" 
               Font-Size="Large"></asp:Label></td>
           <td class="style18">
         <asp:TextBox ID="MotherName" runat="server"></asp:TextBox></td>
           <td class="style11">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                   ControlToValidate="MotherName" ErrorMessage="** Enter Mother Name" 
                   Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
           </td></tr>
         
        <tr><td class="style13"> <asp:Label ID="Label11" runat="server" Text="Age" 
                Font-Size="Large"></asp:Label></td>
            <td class="style18">
         <asp:TextBox ID="Age" runat="server"></asp:TextBox></td><td class="style11">
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age" 
                    ErrorMessage="** Enter Age bet 18 to 22" Font-Bold="True" Font-Size="Large" 
                    MaximumValue="99" MinimumValue="18"></asp:RangeValidator>
            </td></tr>
         
        <tr><td class="style13"> <asp:Label ID="Label12" runat="server" Text="Villege" 
                Font-Size="Large"></asp:Label></td>
            <td class="style18">
         <asp:TextBox ID="Villege" runat="server"></asp:TextBox></td><td class="style11"></td></tr>
         
         <tr><td class="style2"><asp:Label ID="Label13" runat="server" Text="HomeNo" 
                 Font-Size="Large"></asp:Label></td>
             <td class="style19">
         <asp:TextBox ID="HomeNo" runat="server" Width="124px"></asp:TextBox></td>
             <td class="style12">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                     ControlToValidate="HomeNo" ErrorMessage="** Enter Home No" Font-Bold="True" 
                     Font-Size="Large"></asp:RequiredFieldValidator>
             </td></tr>

         <tr><td class="style13"><asp:Label ID="Label14" runat="server" Text="Occuption" 
                 Font-Size="Large"></asp:Label></td>
             <td class="style18">
         <asp:TextBox ID="Occuption" runat="server"></asp:TextBox></td><td class="style11"></td></tr>
         
         <tr><td class="style13"><asp:Label ID="Label15" runat="server" Text="Income" 
                 Font-Size="Large"></asp:Label></td>
             <td class="style18">
         <asp:TextBox ID="Income" runat="server"></asp:TextBox></td><td class="style11"></td></tr>
 
        <tr><td class="style13"> <asp:Label ID="Label16" runat="server" Text="Taluka" 
                Font-Size="Large"></asp:Label></td>
            <td class="style18">
         <asp:TextBox ID="Taluka" runat="server"></asp:TextBox></td><td class="style11"></td></tr>
         
        <tr><td class="style13"> <asp:Label ID="Label17" runat="server" Text="Dist" 
                Font-Size="Large"></asp:Label></td>
            <td class="style18">
         <asp:TextBox ID="Dist" runat="server"></asp:TextBox></td><td class="style11"></td></tr>
         
         <tr><td class="style14"><asp:Label ID="Label18" runat="server" Text="PostalNo" 
                 Font-Size="Large"></asp:Label></td>
             <td class="style20">
         <asp:TextBox ID="PostalNo" runat="server"></asp:TextBox></td><td class="style16"></td></tr>
         <tr><td class="style13">
             <asp:Label ID="Label19" runat="server" Text="Select Image" Font-Bold="True" 
                 Font-Size="Medium"></asp:Label>
             </td>
             <td class="style18">
                 
                 <asp:FileUpload ID="FileUpload1" runat="server" />
                 
             </td><td class="style11"></td></tr>
             <tr><td class="style13"></td><td class="style18">
                 <asp:Button ID="RSubmit" runat="server" Text="Submit" Height="22px" 
                     onclick="RSubmit_Click" style="margin-bottom: 12px" Width="113px" /></td>
                 <td class="style11"></td></tr>
         


 
 
 
 
 
 </table>




 </body>
    
 
    </form>
    
 
</asp:Content>

