<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage1.Master" AutoEventWireup="true" CodeBehind="ArtWorksAdmin.aspx.cs" Inherits="MIS366project.ArtWorksUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <Style type="text/css">
        image{
            border-image-width:30px;
        }
    </Style>

    <CENTER>  <p>
    ArtWorks</p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="product_id" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <li style="background-color: #FFF8DC;">product_id:
                    <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' />
                    <br />
                    picture:
                    <asp:Image ID="Label1" runat="server" Width="190px" Height="170px" ImageURL='<%# Eval("picture") %>' />
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />
                    description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />
                    categories:
                    <asp:Label ID="categoriesLabel" runat="server" Text='<%# Eval("categories") %>' />
                    <br />
                    startdate:
                    <asp:Label ID="startdateLabel" runat="server" Text='<%# Eval("startdate") %>' />
                    <br />
                    enddate:
                    <asp:Label ID="enddateLabel" runat="server" Text='<%# Eval("enddate") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #008A8C;color: #FFFFFF;">product_id:
                    <asp:Label ID="product_idLabel1" runat="server" Text='<%# Eval("product_id") %>' />
                    <br />
                       picture:
                    <asp:Image ID="Label1" runat="server" Width="190px" Height="170px" ImageURL='<%# Eval("picture") %>' />
                    <br>
                    </br>
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    price:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    <br />
                    description:
                    <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                    <br />
                    categories:
                    <asp:TextBox ID="categoriesTextBox" runat="server" Text='<%# Bind("categories") %>' />
                    <br />
                    startdate:
                    <asp:TextBox ID="startdateTextBox" runat="server" Text='<%# Bind("startdate") %>' />
                    <br />
                    enddate:
                    <asp:TextBox ID="enddateTextBox" runat="server" Text='<%# Bind("enddate") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">
                      picture:
                    <asp:Image ID="Label1" runat="server" Width="190px" Height="170px" ImageURL='<%# Eval("picture") %>' />name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />price:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    <br />description:
                    <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                    <br />categories:
                    <asp:TextBox ID="categoriesTextBox" runat="server" Text='<%# Bind("categories") %>' />
                    <br />startdate:
                    <asp:TextBox ID="startdateTextBox" runat="server" Text='<%# Bind("startdate") %>' />
                    <br />enddate:
                    <asp:TextBox ID="enddateTextBox" runat="server" Text='<%# Bind("enddate") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #DCDCDC;color: #000000;">product_id:
                    <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' />
                    <br />
                     picture:
                    <asp:Image ID="Label1" runat="server" Width="190px" Height="170px" ImageURL='<%# Eval("picture") %>' />
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />
                    description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />
                    categories:
                    <asp:Label ID="categoriesLabel" runat="server" Text='<%# Eval("categories") %>' />
                    <br />
                    startdate:
                    <asp:Label ID="startdateLabel" runat="server" Text='<%# Eval("startdate") %>' />
                    <br />
                    enddate:
                    <asp:Label ID="enddateLabel" runat="server" Text='<%# Eval("enddate") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">product_id:
                    <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' />
                    <br />
                      picture:
                    <asp:Image ID="Label1" runat="server" ImageURL='<%# Eval("picture") %>' />
                    <br>
                    </br>
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />
                    description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />
                    categories:
                    <asp:Label ID="categoriesLabel" runat="server" Text='<%# Eval("categories") %>' />
                    <br />
                    startdate:
                    <asp:Label ID="startdateLabel" runat="server" Text='<%# Eval("startdate") %>' />
                    <br />
                    enddate:
                    <asp:Label ID="enddateLabel" runat="server" Text='<%# Eval("enddate") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [product_id] = @original_product_id AND [name] = @original_name AND [price] = @original_price AND [description] = @original_description AND [categories] = @original_categories AND [picture] = @original_picture AND [startdate] = @original_startdate AND [enddate] = @original_enddate" InsertCommand="INSERT INTO [Product] ([name], [price], [description], [categories], [picture], [startdate], [enddate]) VALUES (@name, @price, @description, @categories, @picture, @startdate, @enddate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [name] = @name, [price] = @price, [description] = @description, [categories] = @categories, [picture] = @picture, [startdate] = @startdate, [enddate] = @enddate WHERE [product_id] = @original_product_id AND [name] = @original_name AND [price] = @original_price AND [description] = @original_description AND [categories] = @original_categories AND [picture] = @original_picture AND [startdate] = @original_startdate AND [enddate] = @original_enddate" OnSelecting="SqlDataSource1_Selecting">
                <DeleteParameters>
                    <asp:Parameter Name="original_product_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_price" Type="String" />
                    <asp:Parameter Name="original_description" Type="String" />
                    <asp:Parameter Name="original_categories" Type="String" />
                    <asp:Parameter Name="original_picture" Type="String" />
                    <asp:Parameter Name="original_startdate" Type="String" />
                    <asp:Parameter Name="original_enddate" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="categories" Type="String" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="startdate" Type="String" />
                    <asp:Parameter Name="enddate" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="categories" Type="String" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="startdate" Type="String" />
                    <asp:Parameter Name="enddate" Type="String" />
                    <asp:Parameter Name="original_product_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_price" Type="String" />
                    <asp:Parameter Name="original_description" Type="String" />
                    <asp:Parameter Name="original_categories" Type="String" />
                    <asp:Parameter Name="original_picture" Type="String" />
                    <asp:Parameter Name="original_startdate" Type="String" />
                    <asp:Parameter Name="original_enddate" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>

</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
  
</asp:Content>



<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>




