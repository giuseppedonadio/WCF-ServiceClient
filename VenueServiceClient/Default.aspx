<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="ServicesClientStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Venue Log In</h1>
        <table class="login">
            <tr>
                <td>
                    User Name
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="textbox" OnTextChanged="txtUserName_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                   Password
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
                </td>
                <td>
                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label> 
                </td>
            </tr>
        </table>
        <p><asp:LinkButton ID="lblRegister" runat="server" PostBackUrl="~/VenueRegistration.aspx">Register</asp:LinkButton> |
        <asp:LinkButton ID="ldlAddShows" runat="server" PostBackUrl="~/AddShows.aspx">Add Show</asp:LinkButton> |
        <asp:LinkButton ID="lblViewShows" runat="server" PostBackUrl="~/ViewShows.aspx">View Shows</asp:LinkButton></p>
    </div>
    </form>
</body>
</html>
