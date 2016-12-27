<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VenueRegistration.aspx.cs" Inherits="VenueRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Venue Registration</h1>
        <hr />
        <table>
            <tr>
                <td>
                    Venue Name
                </td>
                <td>
                    <asp:TextBox ID="txtVenueName" runat="server" CssClass="textbox"></asp:TextBox> 
                </td>
                <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="The Venue name is required" ControlToValidate="txtVenueName" CssClass="error"></asp:RequiredFieldValidator></td>
            </tr>
              <tr>
                <td>
                    Venue Address
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="textbox"></asp:TextBox> 
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address is Required" ControlToValidate="txtAddress" CssClass="error"></asp:RequiredFieldValidator></td>
            </tr>
              <tr>
                <td>
                    Venue City
                </td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="textbox"></asp:TextBox> 
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="City is required" ControlToValidate="txtCity" CssClass="error"></asp:RequiredFieldValidator></td>
            </tr>
              <tr>
                <td>
                    Venue State
                </td>
                <td>
                    <asp:TextBox ID="txtState" runat="server" CssClass="textbox"></asp:TextBox> 
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="State is Required" ControlToValidate="txtState" CssClass="error"></asp:RequiredFieldValidator></td>
            </tr>
              <tr>
                <td>
                    Venue Zip
                </td>
                <td>
                    <asp:TextBox ID="txtZip" runat="server" CssClass="textbox"></asp:TextBox> 
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="the zip code is required" ControlToValidate="txtZip" CssClass="error"></asp:RequiredFieldValidator></td>
            </tr>
              <tr>
                <td>
                    Venue Phone
                </td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox"></asp:TextBox> 
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Phone is required" ControlToValidate="txtPhone" CssClass="error"></asp:RequiredFieldValidator></td>
            </tr>
              <tr>
                <td>
                    Age Restriction
                </td>
                <td>
                    <asp:TextBox ID="txtRestriction" runat="server" CssClass="textbox"></asp:TextBox> 
                </td>
                <td>&nbsp;</td>
            </tr>

          <tr>
                <td>
                    Venue Email
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox"></asp:TextBox> 
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail" CssClass="error"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not a valid email" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error"></asp:RegularExpressionValidator>
                </td>
              
            </tr>
              <tr>
                <td>
                    Venue WebPage
                </td>
                <td>
                    <asp:TextBox ID="txtWeb" runat="server" CssClass="textbox"></asp:TextBox> 
                </td>
                <td>&nbsp;</td>
            </tr>
              <tr>
                <td>
                    Venue User Name
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="textbox"></asp:TextBox> 
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="User name is required" ControlToValidate="txtUserName" CssClass="error"></asp:RequiredFieldValidator></td>
            </tr>
              <tr>
                <td>
                    Venue Password
                </td>
                  <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox> 
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter a password" ControlToValidate="txtPassword" CssClass="error"></asp:RequiredFieldValidator></td>
            </tr>
              <tr>
                <td>
                    Confirm Password
                </td>
                <td>
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox> 
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="You must confirm the password" ControlToValidate="txtConfirm" CssClass="error"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Does not match" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" CssClass="error"></asp:CompareValidator>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
                <td>
                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx" CausesValidation="false">Log in</asp:LinkButton>
    </div>
    </form>
</body>
</html>
