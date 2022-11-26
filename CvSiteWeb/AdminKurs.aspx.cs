using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLKURSTableAdapter dt = new DataSet1TableAdapters.TBLKURSTableAdapter();
            Repeater1.DataSource = dt.KursListele();
            Repeater1.DataBind();
        }
    }
}