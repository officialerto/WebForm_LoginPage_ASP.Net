<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="LoginPage_ASP.Net.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div style="margin: auto; background-color:aquamarine; text-align: center; height:100vh; align-items:center; justify-content:center;">
            <br />
            <h1> LOGIN SUCCESSFULY !! </h1>
            <br />
            <asp:Label ID="lblUserDetails" runat="server" Text="" Font-Bold="true"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" Font-Bold="true" Height="39px" OnClick="btnLogout_Click" Width="109px"/>
        </div>

    </form>
</body>
</html>
