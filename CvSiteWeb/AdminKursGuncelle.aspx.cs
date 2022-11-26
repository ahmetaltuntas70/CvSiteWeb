using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm21 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TxtID.Text = x.ToString();
            TxtID.Enabled = false;

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLKURSTableAdapter dt = new DataSet1TableAdapters.TBLKURSTableAdapter();
                TxtKurs.Text = dt.KursGetir(Convert.ToInt16(TxtID.Text))[0].KURS;

            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLKURSTableAdapter dt = new DataSet1TableAdapters.TBLKURSTableAdapter();
            dt.KursGuncelle(TxtKurs.Text, Convert.ToInt16(TxtID.Text));
            Response.Redirect("AdminKurs.aspx");
        }
    }
}