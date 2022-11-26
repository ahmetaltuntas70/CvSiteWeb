using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLBECERITableAdapter dt = new DataSet1TableAdapters.TBLBECERITableAdapter();
            dt.BeceriEkle(TxtBeceri.Text);
            Response.Redirect("AdminBeceri.aspx");
        }
    }
}