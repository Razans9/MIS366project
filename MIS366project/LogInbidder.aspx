<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage1.Master" AutoEventWireup="true" CodeBehind="LogInbidder.aspx.cs" Inherits="MIS366project.LogInbidder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 74%;
        }
        .auto-style6 {
            width: 179px;
        }
        .auto-style7 {
            width: 179px;
            height: 35px;
        }
        .auto-style8 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center> <asp:Label ID="Label2" runat="server" Text="LOG IN" Font-Bold="True" Font-Size="Large" Font-Underline="True"></asp:Label>
     
        <br />
       <table  Align="center" class="auto-style5">
           <tr>
               <td class="auto-style6">
                   <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
               </td>
               <td class="auto-style8">
                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
               </td>
           </tr>
       </table>

       <br />
       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LogIn" BackColor="#00AA00" ForeColor="White" />
       <br />
    <asp:Label ID="Label5" runat="server" Text="Labe5" Visible="False"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bidder] WHERE [Username] = @original_Username AND [Name] = @original_Name AND [PhoneNumber] = @original_PhoneNumber AND [email] = @original_email AND [password] = @original_password AND [authorization] = @original_authorization" InsertCommand="INSERT INTO [Bidder] ([Username], [Name], [PhoneNumber], [email], [password], [authorization]) VALUES (@Username, @Name, @PhoneNumber, @email, @password, @authorization)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Bidder] WHERE (([email] = @email) AND ([password] = @password))" UpdateCommand="UPDATE [Bidder] SET [Name] = @Name, [PhoneNumber] = @PhoneNumber, [email] = @email, [password] = @password, [authorization] = @authorization WHERE [Username] = @original_Username AND [Name] = @original_Name AND [PhoneNumber] = @original_PhoneNumber AND [email] = @original_email AND [password] = @original_password AND [authorization] = @original_authorization">
            <DeleteParameters>
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_authorization" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:ControlParameter ControlID="TextBox1" Name="email" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="password" PropertyName="Text" Type="String" />
                <asp:Parameter Name="authorization" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="email" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="password" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="authorization" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_authorization" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
       <br />
        <br />

    </center>
</asp:Content>
