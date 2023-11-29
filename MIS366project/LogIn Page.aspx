<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage1.Master" AutoEventWireup="true" CodeBehind="LogIn Page.aspx.cs" Inherits="MIS366project.LogIn_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        margin-left: 21px;
        margin-top: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center> <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Log In As?"></asp:Label>
       <br />
       <br />
       <asp:ImageButton ID="ImageButton1" runat="server" Height="136px" ImageUrl="~/image/admin.png" PostBackUrl="~/LogInAdmin.aspx" Width="174px" />
&nbsp;
       <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style8" Height="138px" ImageUrl="~/image/user.png" PostBackUrl="~/LogInbidder.aspx" Width="163px" />

</asp:Content>
