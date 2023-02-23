<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginPage_ASP.Net.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page ASP.Net</title>
    <style>
        body {
            background-color:antiquewhite;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="margin:auto; border:5px solid white">

                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="true"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="true"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password">
                        </asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td></td>

                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" Font-Bold="true" OnClick="btnLogin_Click"/>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td><asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials" Font-Bold="true" ForeColor="Red"></asp:Label></td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
