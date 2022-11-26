using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TxtID.Text = x.ToString();
            TxtID.Enabled = false;

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLBECERITableAdapter dt = new DataSet1TableAdapters.TBLBECERITableAdapter();
                TxtBeceri.Text = dt.BeceriGetir(Convert.ToInt16(x))[0].BECERI;
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLBECERITableAdapter dt = new DataSet1TableAdapters.TBLBECERITableAdapter();
            dt.BeceriGuncelle(TxtBeceri.Text, Convert.ToInt16(TxtID.Text));
            Response.Redirect("AdminBeceri.aspx");
        }
    }
}