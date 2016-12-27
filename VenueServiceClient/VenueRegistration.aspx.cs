using RegistrationService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VenueRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        RegisterServiceClient rc = new RegisterServiceClient();
        Venue v = new Venue();
        v.VenueName = txtVenueName.Text;
        v.VenueAddress = txtAddress.Text;
        v.VenueCity = txtCity.Text;
        v.VenueState = txtState.Text;
        v.VenueZipCode = txtZip.Text;
        v.VenuePhone = txtPhone.Text;
        v.VenueEmail = txtEmail.Text;
        v.VenueWebPage = txtWeb.Text;
        v.VenueAgeRestriction = int.Parse(txtRestriction.Text);
        v.VenueDateAdded = DateTime.Now;



        VenueLogin vl = new VenueLogin();
        vl.VenueLoginUserName = txtUserName.Text;
        vl.VenueLoginPasswordPlain = txtConfirm.Text;
        vl.VenueLoginDateAdded = DateTime.Now;


        bool result = rc.RegisterVenue(v, vl);

        if (result)
            lblResult.Text = "Registration successful";
        else
            lblResult.Text = "Registration failed";
    }
}