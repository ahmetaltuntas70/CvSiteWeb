using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvSiteWeb
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLPROJETableAdapter dt = new DataSet1TableAdapters.TBLPROJETableAdapter();
            Repeater1.DataSource = dt.ProjeListesi();
            Repeater1.DataBind();
        }
    }
}