using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TxtID.Text = x.ToString();
            TxtID.Enabled = false;

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLILGIALANLARTableAdapter dt = new DataSet1TableAdapters.TBLILGIALANLARTableAdapter();
                TxtIlgi.Text = dt.IlgiGetir(Convert.ToInt16(TxtID.Text))[0].ILGI;

            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLILGIALANLARTableAdapter dt = new DataSet1TableAdapters.TBLILGIALANLARTableAdapter();
            dt.IlgiGuncelle(TxtIlgi.Text, Convert.ToInt16(TxtID.Text));
            Response.Redirect("AdminIlgi.aspx");
        }
    }
}