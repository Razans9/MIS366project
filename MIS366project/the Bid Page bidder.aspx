<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage1.Master" AutoEventWireup="true" CodeBehind="the Bid Page bidder.aspx.cs" Inherits="MIS366project.the_Bid_Bage_bidder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label2" runat="server" Text="Enter the Product Name?"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [product_id] = @original_product_id AND [name] = @original_name AND [price] = @original_price AND [description] = @original_description AND [categories] = @original_categories AND [startdate] = @original_startdate AND [enddate] = @original_enddate" InsertCommand="INSERT INTO [Product] ([product_id], [name], [price], [description], [categories], [startdate], [enddate]) VALUES (@product_id, @name, @price, @description, @categories, @startdate, @enddate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [product_id], [name], [price], [description], [categories], [startdate], [enddate] FROM [Product] WHERE ([name] = @name)" UpdateCommand="UPDATE [Product] SET [name] = @name, [price] = @price, [description] = @description, [categories] = @categories, [startdate] = @startdate, [enddate] = @enddate WHERE [product_id] = @original_product_id AND [name] = @original_name AND [price] = @original_price AND [description] = @original_description AND [categories] = @original_categories AND [startdate] = @original_startdate AND [enddate] = @original_enddate">
        <DeleteParameters>
            <asp:Parameter Name="original_product_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_categories" Type="String" />
            <asp:Parameter Name="original_startdate" Type="String" />
            <asp:Parameter Name="original_enddate" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="product_id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="categories" Type="String" />
            <asp:Parameter Name="startdate" Type="String" />
            <asp:Parameter Name="enddate" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="categories" Type="String" />
            <asp:Parameter Name="startdate" Type="String" />
            <asp:Parameter Name="enddate" Type="String" />
            <asp:Parameter Name="original_product_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_categories" Type="String" />
            <asp:Parameter Name="original_startdate" Type="String" />
            <asp:Parameter Name="original_enddate" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="categories" HeaderText="categories" SortExpression="categories" />
            <asp:BoundField DataField="startdate" HeaderText="startdate" SortExpression="startdate" />
            <asp:BoundField DataField="enddate" HeaderText="enddate" SortExpression="enddate" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Enter your Bid Amount?"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [order] WHERE [order_id] = @original_order_id AND [bid_amount] = @original_bid_amount AND [track] = @original_track AND [Username] = @original_Username AND [product_id] = @original_product_id" InsertCommand="INSERT INTO [order] ([order_id], [bid_amount], [track], [Username], [product_id]) VALUES (@order_id, @bid_amount, @track, @Username, @product_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [order]" UpdateCommand="UPDATE [order] SET [bid_amount] = @bid_amount, [track] = @track, [Username] = @Username, [product_id] = @product_id WHERE [order_id] = @original_order_id AND [bid_amount] = @original_bid_amount AND [track] = @original_track AND [Username] = @original_Username AND [product_id] = @original_product_id">
        <DeleteParameters>
            <asp:Parameter Name="original_order_id" Type="String" />
            <asp:Parameter Name="original_bid_amount" Type="String" />
            <asp:Parameter Name="original_track" Type="String" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_product_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="order_id" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="bid_amount" PropertyName="Text" Type="String" />
            <asp:Parameter Name="track" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="product_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="bid_amount" Type="String" />
            <asp:Parameter Name="track" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="product_id" Type="Int32" />
            <asp:Parameter Name="original_order_id" Type="String" />
            <asp:Parameter Name="original_bid_amount" Type="String" />
            <asp:Parameter Name="original_track" Type="String" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_product_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
