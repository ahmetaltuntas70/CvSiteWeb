using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace CvSiteWeb
{
    public partial class AdminGirisYap : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=KarnetGuvenlik;Initial Catalog=CvSiteWebDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("SELECT * FROM TBLADMIN WHERE KULLANICI=@P1 and SİFRE=@P2", baglanti);
            komut.Parameters.AddWithValue("@P1", TextBox1.Text);
            komut.Parameters.AddWithValue("@P2", TextBox2.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if(dr.Read())
            {
                Response.Redirect("AdminHakkimda.aspx");
            }
            else
            {
                Response.Write("HATALI KULLANICI VEYA ŞİFRE");
            }
            baglanti.Close();
        }
    }
}