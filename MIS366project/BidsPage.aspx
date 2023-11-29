<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage1.Master" AutoEventWireup="true" CodeBehind="BidsPage.aspx.cs" Inherits="MIS366project.BidsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Your username ? :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
    </p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="order_id" ReadOnly="True" SortExpression="order_id" />
            <asp:BoundField DataField="bid_amount" HeaderText="bid_amount" SortExpression="bid_amount" />
            <asp:BoundField DataField="track" HeaderText="track" SortExpression="track" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [order] WHERE [order_id] = @original_order_id AND [bid_amount] = @original_bid_amount AND [track] = @original_track AND [Username] = @original_Username AND [product_id] = @original_product_id" InsertCommand="INSERT INTO [order] ([order_id], [bid_amount], [track], [Username], [product_id]) VALUES (@order_id, @bid_amount, @track, @Username, @product_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [order] WHERE ([Username] = @Username)" UpdateCommand="UPDATE [order] SET [bid_amount] = @bid_amount, [track] = @track, [Username] = @Username, [product_id] = @product_id WHERE [order_id] = @original_order_id AND [bid_amount] = @original_bid_amount AND [track] = @original_track AND [Username] = @original_Username AND [product_id] = @original_product_id">
        <DeleteParameters>
            <asp:Parameter Name="original_order_id" Type="String" />
            <asp:Parameter Name="original_bid_amount" Type="String" />
            <asp:Parameter Name="original_track" Type="String" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_product_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="order_id" Type="String" />
            <asp:Parameter Name="bid_amount" Type="String" />
            <asp:Parameter Name="track" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="product_id" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Username" PropertyName="Text" Type="String" />
        </SelectParameters>
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
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
