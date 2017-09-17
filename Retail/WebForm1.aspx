<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Retail.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Customers
        <%--change data list to grid view--%>
        <asp:DataList ID="dlCustomersView" runat="server"></asp:DataList>
    </div>
    </form>
</body>
</html>
