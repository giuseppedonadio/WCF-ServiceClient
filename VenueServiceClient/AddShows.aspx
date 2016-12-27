<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShows.aspx.cs" Inherits="AddShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="ServicesClientSytle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Add a New Show</h1>
        <hr />
    <p>Select your artist.  <asp:DropDownList ID="DropDownListArtist" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListArtist_SelectedIndexChanged"></asp:DropDownList> </p>
        <asp:Table ID="TableArtist" runat="server">
            <asp:TableRow>
                <asp:TableCell>Artist Name</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtArtistName" runat="server" CssClass="textbox"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
              <asp:TableRow>
                <asp:TableCell>Artist Email</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtArtistEmail" runat="server" CssClass="textbox"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
              <asp:TableRow>
                <asp:TableCell>Artist WebSite</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtWebSite" runat="server" CssClass="textbox"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
              <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="btnAddArtist" runat="server" Text="Save"  OnClick="btnAddArtist_Click"/></asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="Save the artist then select them from the dropdown list"></asp:Label>
                    </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    Show Name
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtShowName" runat="server" CssClass="textbox"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                   
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    Show Date
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Calendar ID="Calendar1" runat="server" ></asp:Calendar> 
                </asp:TableCell>
                   <asp:TableCell>
                   
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    Show Time (military 12:00:00)
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtTime" runat="server" CssClass="textbox"></asp:TextBox>
                </asp:TableCell>
                   <asp:TableCell>
                   
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    Show ticket info
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtInfo" runat="server" CssClass="textbox"></asp:TextBox>
                </asp:TableCell>
                   <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    Artist Key
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblArtistKey" runat="server" Text=""></asp:Label>
                </asp:TableCell>
                   <asp:TableCell>
                   
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    Artist Start Time (military 12:00:00)
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtArtistStart" runat="server" CssClass="textbox"></asp:TextBox>
                </asp:TableCell>
                   <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                   Additional Information
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtAdditional" runat="server" CssClass="textbox"></asp:TextBox>
                </asp:TableCell>
                   <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="btnShow" runat="server" Text="Add Show" OnClick="btnShow_Click" />  
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
         <p><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/VenueRegistration.aspx" CausesValidation="false">Register</asp:LinkButton> |
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/AddShow.aspx" CausesValidation="false" >Add Show</asp:LinkButton> |
        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/ViewShows.aspx" CausesValidation="false">View Shows</asp:LinkButton></p>
    </div>
    </form>
</body>
</html>

