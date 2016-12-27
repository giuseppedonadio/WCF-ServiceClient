using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "AddShowService" in code, svc and config file together.
public class AddShowService : IAddShowService
{
    ShowTrackerEntities ste = new ShowTrackerEntities();
    public bool AddArtist(Artist a)
    {
        bool result = true;
        try
        {
            Artist art = new Artist();
            art.ArtistName = a.ArtistName;
            art.ArtistEmail = a.ArtistEmail;
            art.ArtistWebPage = a.ArtistWebPage;
            art.ArtistDateEntered = DateTime.Now;
            ste.Artists.Add(art);

            ste.SaveChanges();
        }
        catch
        {
            result = false;
        }
        return result;
    }

    public bool AddShow(Show s, ShowDetail sd)
    {
        // s.VenueKey = 4;
        // sd.ArtistKey = 6;
        bool result = true;
        try
        {

            Show sh = new Show();
            sh.ShowName = s.ShowName;
            sh.ShowDate = s.ShowDate;
            sh.ShowDateEntered = DateTime.Now;
            sh.ShowTime = s.ShowTime;
            sh.VenueKey = s.VenueKey;
            sh.ShowTicketInfo = s.ShowTicketInfo;

            ste.Shows.Add(sh);

            ShowDetail shd = new ShowDetail();
            shd.ArtistKey = sd.ArtistKey;
            shd.ShowDetailArtistStartTime = sd.ShowDetailArtistStartTime;
            shd.Show = sh;
            shd.ShowDetailAdditional = sd.ShowDetailAdditional;

            ste.ShowDetails.Add(shd);

            ste.SaveChanges();
        }
        catch
        {
            result = false;
        }

        return result;

    }

    //the following methods were not a part of the assignment
    //as described.

    public List<Artist> GetArtists()
    {
        List<Artist> artists = new List<Artist>();

        var art = from a in ste.Artists
                  select new { a.ArtistKey, a.ArtistName };

        foreach (var ar in art)
        {
            Artist a = new Artist();
            a.ArtistKey = ar.ArtistKey;
            a.ArtistName = ar.ArtistName;
            artists.Add(a);

        }

        return artists;

    }

    public List<Show> GetShows(int vKey)
    {
        List<Show> shows = new List<Show>();

        var shw = from s in ste.Shows
                  where s.VenueKey == vKey
                  select new { s.ShowKey, s.ShowName, s.ShowDate, s.ShowTime, s.ShowTicketInfo };

        foreach (var sh in shw)
        {
            Show s = new Show();
            s.ShowKey = sh.ShowKey;
            s.ShowName = sh.ShowName;
            s.ShowDate = sh.ShowDate;
            s.ShowTime = sh.ShowTime;
            s.ShowTicketInfo = sh.ShowTicketInfo;
            shows.Add(s);
        }

        return shows;
    }

    public List<Detail> GetDetails(int sKey)
    {
        List<Detail> details = new List<Detail>();

        var det = from d in ste.ShowDetails
                  where d.ShowKey == sKey
                  select new { d.ShowDetailArtistStartTime, d.ShowDetailAdditional, d.Artist.ArtistName };

        foreach (var sd in det)
        {
            Detail shd = new Detail();
            shd.ArtistStartTime = sd.ShowDetailArtistStartTime.ToString();
            shd.Additional = sd.ShowDetailAdditional;
            shd.ArtistName = sd.ArtistName;
            details.Add(shd);
        }

        return details;
    }
}
