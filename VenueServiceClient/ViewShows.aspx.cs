using AddShowService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewShows : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["venueKey"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        FillShows();

    }

    private void FillShows()
    {
        AddShowServiceClient nsc = new AddShowServiceClient();
        int key = (int)Session["VenueKey"];
        List<Show> shows = nsc.GetShows(key).ToList();
        DataList1.DataSource = shows;
        DataList1.DataBind();

    }
}