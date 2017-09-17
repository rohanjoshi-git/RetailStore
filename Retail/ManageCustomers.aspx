<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageCustomers.aspx.cs" Inherits="Retail.ManageCustomers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">

        
        Customers from populated from back end
        <asp:GridView ID="gvCustomersView" runat="server"></asp:GridView>

        <br />
        <br />

        Customers from sql datasource1 - select query
        <asp:GridView ID="gvCustomersView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" SortExpression="CreatedDate" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT * FROM [tblCustomer]"></asp:SqlDataSource>

        <br />
        <br />
        Customers from sql datasource2 - stored procedure
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Customer Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Customer Id" HeaderText="Customer Id" InsertVisible="False" ReadOnly="True" SortExpression="Customer Id" />
                <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Phone No." HeaderText="Phone No." SortExpression="Phone No." />
                <asp:BoundField DataField="Created Date" HeaderText="Created Date" SortExpression="Created Date" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SP_GetAllCustomers" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br />
        <br />

        Customers from sql datasource3 - select query with edit / delete
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" SortExpression="CreatedDate" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [tblCustomer] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblCustomer] ([FirstName], [LastName], [City], [Country], [Phone], [CreatedDate]) VALUES (@FirstName, @LastName, @City, @Country, @Phone, @CreatedDate)" SelectCommand="SELECT * FROM [tblCustomer]" UpdateCommand="UPDATE [tblCustomer] SET [FirstName] = @FirstName, [LastName] = @LastName, [City] = @City, [Country] = @Country, [Phone] = @Phone, [CreatedDate] = @CreatedDate WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="CreatedDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="CreatedDate" Type="DateTime" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>

</asp:Content>
