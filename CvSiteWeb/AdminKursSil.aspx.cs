using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            DataSet1TableAdapters.TBLKURSTableAdapter dt = new DataSet1TableAdapters.TBLKURSTableAdapter();
            dt.KursSil(Convert.ToInt16(x));
            Response.Redirect("AdminKurs.aspx");
        }
    }
}