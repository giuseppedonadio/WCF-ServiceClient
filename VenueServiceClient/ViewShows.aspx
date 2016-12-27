<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewShows.aspx.cs" Inherits="ViewShows" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Shows For this Venue</h1>
        <hr />
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <h2>
                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("ShowName") %>'></asp:Label></h2>
                <p>
                    <strong>Date: <asp:Label ID="Label1" runat="server" Text='<%#Eval("ShowDate") %>'></asp:Label></strong> <br />
                    Time: <asp:Label ID="Label2" runat="server" Text='<%#Eval("ShowTime") %>'>'</asp:Label> <br />
                    Ticket Info: <asp:Label ID="Label3" runat="server" Text='<%#Eval("ShowTicketInfo") %>'></asp:Label>
                    
                </p>

            </ItemTemplate>
        </asp:DataList>
         <p><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/VenueRegistration.aspx">Register</asp:LinkButton> |
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/AddShow.aspx">Add Show</asp:LinkButton> |
        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/ViewShows.aspx">View Shows</asp:LinkButton></p>
    </div>
    </form>
</body>
</html>