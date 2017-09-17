<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewOrder.aspx.cs" Inherits="Retail.AddNewOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <table>
            
            <tr>
                <td>Order Number</td>
                <td>
                    <asp:TextBox ID="txtOrderNumber" runat="server" required=""></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Order Date</td>
                <td>
                    <asp:TextBox ID="txtOrderDate" runat="server" required="" TextMode="Date"></asp:TextBox>
                </td>
            </tr>         

            <tr>
                <td>Customer</td>
                <td>
                    <asp:DropDownList ID="ddlCustomer" runat="server" required="" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="Id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT * FROM [tblCustomer]"></asp:SqlDataSource>
                </td>
            </tr>

            <tr>
                <td>Total Amount</td>
                <td>
                    <asp:TextBox ID="txtTotalAmount" runat="server" required=""></asp:TextBox>
                </td>
            </tr>      

            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
                </td>
            </tr>
           
        </table>
    </div>

</asp:Content>
