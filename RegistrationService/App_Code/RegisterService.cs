using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "RegisterService" in code, svc and config file together.
public class RegisterService : IRegisterService
{
    ShowTrackerEntities ste = new ShowTrackerEntities();
    public bool RegisterVenue(Venue v, VenueLogin vl)
    {

        bool result = true;
        
        try
        {
            
            KeyCode kc = new KeyCode();
            int code = kc.GetKeyCode();
            PasswordHash ph = new PasswordHash();
            byte[] hash = ph.HashIt(vl.VenueLoginPasswordPlain, code.ToString());

       
            Venue venue = new Venue();
            venue.VenueName = v.VenueName;
            venue.VenueAddress = v.VenueAddress;
            venue.VenueCity = v.VenueCity;
            venue.VenueState = v.VenueState;
            venue.VenueZipCode = v.VenueZipCode;
            venue.VenueEmail = v.VenueEmail;
            venue.VenueWebPage = v.VenueWebPage;
            venue.VenuePhone = v.VenuePhone;
            venue.VenueDateAdded = DateTime.Now;
            venue.VenueAgeRestriction = v.VenueAgeRestriction;

            ste.Venues.Add(venue);


            VenueLogin vlog = new VenueLogin();
            vlog.VenueLoginDateAdded = DateTime.Now;
            vlog.VenueLoginPasswordPlain = vl.VenueLoginPasswordPlain;
            vlog.VenueLoginRandom = code;
            vlog.VenueLoginHashed = hash;
            vlog.VenueLoginUserName = vl.VenueLoginUserName;
            vlog.Venue = venue;

            ste.VenueLogins.Add(vlog);


            ste.SaveChanges();
        }
        catch
        {
            result = false;
        }

        return result;
    }

    public int Login(string username, string password)
    {
        LoginClass lc = new LoginClass(password, username);
        int key = lc.ValidateLogin();

      
        ste.SaveChanges();

        return key;

    }
}