using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLHAKKIMDATableAdapter dt = new DataSet1TableAdapters.TBLHAKKIMDATableAdapter();
            Repeater1.DataSource = dt.HakkımdaListele();
            Repeater1.DataBind();

            DataSet1TableAdapters.TBLPROJETableAdapter dt2 = new DataSet1TableAdapters.TBLPROJETableAdapter();
            Repeater2.DataSource = dt2.ProjeListesi();
            Repeater2.DataBind();

            DataSet1TableAdapters.TBLEGITIMTableAdapter dt3 = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            Repeater3.DataSource = dt3.EgitimListesi();
            Repeater3.DataBind();

            DataSet1TableAdapters.TBLBECERITableAdapter dt4 = new DataSet1TableAdapters.TBLBECERITableAdapter();
            Repeater4.DataSource = dt4.BeceriListele();
            Repeater4.DataBind();

            DataSet1TableAdapters.TBLILGIALANLARTableAdapter dt5 = new DataSet1TableAdapters.TBLILGIALANLARTableAdapter();
            Repeater5.DataSource = dt5.IlgiAlanlariListele();
            Repeater5.DataBind();

            DataSet1TableAdapters.TBLKURSTableAdapter dt6 = new DataSet1TableAdapters.TBLKURSTableAdapter();
            Repeater6.DataSource = dt6.KursListele();
            Repeater6.DataBind();

            DataSet1TableAdapters.TBLHAKKIMDATableAdapter dt7 = new DataSet1TableAdapters.TBLHAKKIMDATableAdapter();
            Repeater7.DataSource = dt7.HakkımdaListele();
            Repeater7.DataBind();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //DataSet1TableAdapters.TBLILETISIMTableAdapter dt = new DataSet1TableAdapters.TBLILETISIMTableAdapter();
            //dt.IletisimGetir();
            //Response.Redirect("AnaSayfa.aspx");

        }
    }
}