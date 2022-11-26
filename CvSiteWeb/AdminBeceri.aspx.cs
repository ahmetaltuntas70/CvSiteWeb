using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLBECERITableAdapter dt = new DataSet1TableAdapters.TBLBECERITableAdapter();
            Repeater1.DataSource = dt.BeceriListele();
            Repeater1.DataBind();
        }
    }
}