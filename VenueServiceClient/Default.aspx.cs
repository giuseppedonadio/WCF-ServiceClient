using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        RegistrationService.RegisterServiceClient rsc = new RegistrationService.RegisterServiceClient();
        int key = rsc.Login(txtUserName.Text, txtPassword.Text);
        if (key != 0)
        {
            Session["venueKey"] = key;
            lblResult.Text = "Log in Successful";
        }
        else
        {
            lblResult.Text = "Log in failed";
        }
    }
}