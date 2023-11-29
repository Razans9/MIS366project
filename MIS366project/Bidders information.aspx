<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bidders information.aspx.cs" Inherits="MIS366project.BiddersList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="StyleSheet" type="text/css" href="StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Image ID="Image1" runat="server" EnableTheming="True" Height="106px" ImageAlign="AbsBottom" ImageUrl="~/image/artosasis.png.jpg" Width="170px" />
                        <asp:Label ID="Label1" runat="server" BorderStyle="None" CssClass="wname" ForeColor="#006600" Text="ARTOSASIS" ></asp:Label>
                        &nbsp;&nbsp;<hr />  
        </div>
        <p>
            <center> 
                <asp:Label ID="Label3" runat="server" Text="Bidders information " Font-Bold="True" Font-Size="X-Large" ForeColor="#006600"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="List of all the bidders:" Font-Bold="True" ForeColor="#336600"></asp:Label>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" ReadOnly="True" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="authorization" HeaderText="authorization" SortExpression="authorization" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bidder] WHERE [Username] = @original_Username AND [Name] = @original_Name AND [authorization] = @original_authorization AND [PhoneNumber] = @original_PhoneNumber AND [email] = @original_email" InsertCommand="INSERT INTO [Bidder] ([Username], [Name], [authorization], [PhoneNumber], [email]) VALUES (@Username, @Name, @authorization, @PhoneNumber, @email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Username], [Name], [authorization], [PhoneNumber], [email] FROM [Bidder]" UpdateCommand="UPDATE [Bidder] SET [Name] = @Name, [authorization] = @authorization, [PhoneNumber] = @PhoneNumber, [email] = @email WHERE [Username] = @original_Username AND [Name] = @original_Name AND [authorization] = @original_authorization AND [PhoneNumber] = @original_PhoneNumber AND [email] = @original_email">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Username" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_authorization" Type="String" />
                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="authorization" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="authorization" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="original_Username" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_authorization" Type="String" />
                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Enter product Id?" Font-Bold="True" ForeColor="#336600"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="View" OnClick="Button2_Click" />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                        <asp:BoundField DataField="order_id" HeaderText="order_id" ReadOnly="True" SortExpression="order_id" />
                        <asp:BoundField DataField="bid_amount" HeaderText="bid_amount" SortExpression="bid_amount" />
                        <asp:BoundField DataField="track" HeaderText="track" SortExpression="track" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [order] WHERE [order_id] = @original_order_id AND [bid_amount] = @original_bid_amount AND [track] = @original_track AND [Username] = @original_Username AND [product_id] = @original_product_id" InsertCommand="INSERT INTO [order] ([order_id], [bid_amount], [track], [Username], [product_id]) VALUES (@order_id, @bid_amount, @track, @Username, @product_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [order] WHERE ([product_id] = @product_id)" UpdateCommand="UPDATE [order] SET [bid_amount] = @bid_amount, [track] = @track, [Username] = @Username, [product_id] = @product_id WHERE [order_id] = @original_order_id AND [bid_amount] = @original_bid_amount AND [track] = @original_track AND [Username] = @original_Username AND [product_id] = @original_product_id">
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
                        <asp:ControlParameter ControlID="TextBox1" Name="product_id" PropertyName="Text" Type="Int32" />
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
                <br />
        </center>

        </p>
    </form>
</body>
</html>
