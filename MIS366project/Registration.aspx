<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MIS366project.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 51px;
            width: 474px;
        }
        .auto-style9 {
        width: 474px;
    }
        .auto-style10 {
            height: 38px;
        }
        .auto-style11 {
            width: 474px;
            height: 38px;
        }
    .auto-style12 {
        height: 51px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><asp:Label ID="Label2" runat="server" Text="Registration Form" ForeColor="#336600" Width="276px" Font-Bold="True" Font-Overline="False" Font-Size="Larger" Font-Underline="True"></asp:Label></center>
        <br />
        <br />
        <table align="center" class="auto-style5">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="162px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderColor="Red" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please enter your name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label4" runat="server" Text="Phone Number:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Please enter your Phone Number!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Please enter your Email!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Please enter valid Email!" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label6" runat="server" Text="Confirm Email:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Email do not match!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter your password!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label8" runat="server" Text="Confirm Password:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Password do not match!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
        </table>

    <br />
   <center><asp:Button ID="Button1" runat="server" Text="REGISTER" OnClick="Button1_Click" BackColor="#00AA00" ForeColor="White" /> 
       <br />
       <asp:Label ID="Label9" runat="server" Text="Thank you for registering" Visible="False"></asp:Label>
       <br />
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bidder] WHERE [Bidder_id] = @original_Bidder_id AND [Name] = @original_Name AND [PhoneNumber] = @original_PhoneNumber AND [email] = @original_email AND [password] = @original_password" InsertCommand="INSERT INTO [Bidder] ([Name], [PhoneNumber], [email], [password]) VALUES (@Name, @PhoneNumber, @email, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Bidder]" UpdateCommand="UPDATE [Bidder] SET [Name] = @Name, [PhoneNumber] = @PhoneNumber, [email] = @email, [password] = @password WHERE [Bidder_id] = @original_Bidder_id AND [Name] = @original_Name AND [PhoneNumber] = @original_PhoneNumber AND [email] = @original_email AND [password] = @original_password">
           <DeleteParameters>
               <asp:Parameter Name="original_Bidder_id" Type="Int32" />
               <asp:Parameter Name="original_Name" Type="String" />
               <asp:Parameter Name="original_PhoneNumber" Type="String" />
               <asp:Parameter Name="original_email" Type="String" />
               <asp:Parameter Name="original_password" Type="String" />
           </DeleteParameters>
           <InsertParameters>
               <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
               <asp:ControlParameter ControlID="TextBox2" Name="PhoneNumber" PropertyName="Text" Type="String" />
               <asp:ControlParameter ControlID="TextBox3" Name="email" PropertyName="Text" Type="String" />
               <asp:ControlParameter ControlID="TextBox5" Name="password" PropertyName="Text" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="Name" Type="String" />
               <asp:Parameter Name="PhoneNumber" Type="String" />
               <asp:Parameter Name="email" Type="String" />
               <asp:Parameter Name="password" Type="String" />
               <asp:Parameter Name="original_Bidder_id" Type="Int32" />
               <asp:Parameter Name="original_Name" Type="String" />
               <asp:Parameter Name="original_PhoneNumber" Type="String" />
               <asp:Parameter Name="original_email" Type="String" />
               <asp:Parameter Name="original_password" Type="String" />
           </UpdateParameters>
       </asp:SqlDataSource>
    </center>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Menu ID="Menu2" runat="server" BackColor="#D9E3D4" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#006600" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#666666" ForeColor="#006600" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#E3EAEB" />
        <DynamicSelectedStyle BackColor="#1C5E55" />
        <Items>
            <asp:MenuItem NavigateUrl="~/homepage.aspx" Text="HOME" Value="HOME"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/ArtWorks.aspx" Text="ARTWORKS" Value="ARTWORKS"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#666666" ForeColor="#006600" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#1C5E55" />
    </asp:Menu>
</asp:Content>

