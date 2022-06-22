using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace KBBSite
{
    public partial class Randevu : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbKBBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblRandevu(AdSoyad,Email,Tel,Tc,Tarih,Mesaj) values (@AdSoyad,@Email,@Tel,@Tc,@Tarih,@Mesaj)", baglanti);
            komut.Parameters.AddWithValue("@AdSoyad", txtAdSoyad.Text.ToString());
            komut.Parameters.AddWithValue("@Email", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@Tel", txtTel.Text.ToString());
            komut.Parameters.AddWithValue("@Tc", txtTc.ToString());
            komut.Parameters.AddWithValue("@Tarih", txtDate.Text.ToString());
            komut.Parameters.AddWithValue("@Mesaj", txtMesaj.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Randevu.aspx");
        }
    }
}