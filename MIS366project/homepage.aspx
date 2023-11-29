<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="MIS366project.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        margin-left: 57px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-size: x-large; font-style: normal; text-align: center">
        Welcome To Our Website
      
    </p>
    <div dir="auto" style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgba(0, 0, 0, 0); text-decoration: none; font-family: Arial, Helvetica, sans-serif; font-size: 1rem; word-spacing: 1px; border-color: rgb(49, 49, 49); color: #008000;">
        ORGANIZED ELEGANCE: Masterpieces of Art Await You at Our Wall Art Auctions.</div>
    <div dir="auto" style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgba(0, 0, 0, 0); text-decoration: none; font-family: -apple-system, &quot;Helvetica Neue&quot;; font-size: 16px; word-spacing: 1px; border-color: rgb(49, 49, 49); color: rgb(49, 49, 49);">
        <br />
    <div dir="auto" style="font-style: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgba(0, 0, 0, 0); text-decoration: none; font-family: -apple-system, &quot;Helvetica Neue&quot;; font-size: 1rem; word-spacing: 1px; border-color: rgb(49, 49, 49); color: rgb(128, 128, 0);">
        Experience the elegance of art with our exclusive wall panel painting auctions. We are your gateway to a vibrant palette of creativity, where every offering is a brushstroke on your group&#39;s canvas. Discover the stories hidden within each work of art as you immerse yourself in the world of wall art auctions</div>
    </div>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Menu ID="Menu1" runat="server" BackColor="#D9E3D4" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#006600" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#666666" ForeColor=#006600 />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#E3EAEB" />
        <DynamicSelectedStyle BackColor="#1C5E55" />
        <Items>
            <asp:MenuItem NavigateUrl="~/ArtWorks.aspx" Text="ArtWorks" Value="ArtWorks"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Registration.aspx" Text="Registration" Value="Registration"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/LogIn Page.aspx" Text="Log In" Value="Log In"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#666666" ForeColor=#006600 />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#1C5E55" />
    </asp:Menu>
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <asp:Image ID="Image2" runat="server" CssClass="auto-style8" Height="249px" ImageUrl="~/image/homepage.png" Width="326px" />
</asp:Content>


