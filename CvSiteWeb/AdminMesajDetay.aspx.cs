using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm23 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLILETISIMTableAdapter dt = new DataSet1TableAdapters.TBLILETISIMTableAdapter();
            Response.Redirect("AdminIletisim.aspx");

        }
    }
}