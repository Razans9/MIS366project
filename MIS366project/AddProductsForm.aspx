<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProductsForm.aspx.cs" Inherits="MIS366project.AddProductsForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="StyleSheet" type="text/css" href="StyleSheet1.css" />
    <style type="text/css">
        .auto-style3 {
            width: 26%;
            height: 484px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <center>  <div style="font-size: x-large; font-weight: bold">
        Add Products Form</div></center>
    
    <table align="center" class="auto-style3">
        <tr>
            <td>&nbsp;<asp:Label ID="Label1" runat="server" Text="Product Name:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;<asp:Label ID="Label2" runat="server" Text="Description:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Category:"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Starting Price:"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Start Date:"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="End Date:"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Picture:"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <center><asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" /></center>
            </td>
        </tr>
    </table>
    
    </form>
    
    </body>
</html>
