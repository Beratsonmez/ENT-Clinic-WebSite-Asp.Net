using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace KBBSite.Yonetim
{
    public partial class HizmetEkle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbKBBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResimEkle_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnYayımla_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblHizmet(Baslik,Hizmet) values (@Baslik,@Hizmet)", baglanti);
            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Hizmet", txtHizmet.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("HizmetEkle.aspx");
        }
    }
}