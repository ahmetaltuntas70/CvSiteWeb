using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            DataSet1TableAdapters.TBLILGIALANLARTableAdapter dt = new DataSet1TableAdapters.TBLILGIALANLARTableAdapter();
            dt.IlgiSil(Convert.ToInt16(x));
            Response.Redirect("AdminIlgi.aspx");
        }
    }
}