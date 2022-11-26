using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLILGIALANLARTableAdapter dt = new DataSet1TableAdapters.TBLILGIALANLARTableAdapter();
            dt.IlgiEkle(TxtIlgi.Text);
            Response.Redirect("AdminIlgi.aspx");
        }
    }
}