<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewCustomer.aspx.cs" Inherits="Retail.AddNewCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <table>
            
            <tr>
                <td>First Name</td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server" required=""></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Last Name</td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server" required=""></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>City</td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server" required=""></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Country</td>
                <td>
                    <asp:TextBox ID="txtCountry" runat="server" required=""></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Phone No.</td>
                <td>
                    <asp:TextBox ID="txtPhoneNo" runat="server" required=""></asp:TextBox>
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
