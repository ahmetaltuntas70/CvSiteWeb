using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLILGIALANLARTableAdapter dt = new DataSet1TableAdapters.TBLILGIALANLARTableAdapter();
            Repeater1.DataSource = dt.IlgiAlanlariListele();
            Repeater1.DataBind();
        }
    }
}