using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            Txtid.Enabled = false;
            Txtid.Text = x.ToString();

            if (Page.IsPostBack == false)
            {

                DataSet1TableAdapters.TBLPROJETableAdapter dt = new DataSet1TableAdapters.TBLPROJETableAdapter();
                TxtBaslik.Text = dt.ProjeGetir(Convert.ToInt16(x))[0].BASLIK;
                TxtAltBaslik.Text = dt.ProjeGetir(Convert.ToInt16(x))[0].ALTBASLIK;
                TxtAciklama.Text = dt.ProjeGetir(Convert.ToInt16(x))[0].ACIKLAMA;
                TxtTarih.Text = dt.ProjeGetir(Convert.ToInt16(x))[0].TARIH;
            }

        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLPROJETableAdapter dt = new DataSet1TableAdapters.TBLPROJETableAdapter();
            dt.ProjeGuncelle(TxtBaslik.Text, TxtAltBaslik.Text, TxtAciklama.Text, TxtTarih.Text, Convert.ToInt16(Txtid.Text));
            Response.Redirect("AdminProje.aspx");
        }
    }
}