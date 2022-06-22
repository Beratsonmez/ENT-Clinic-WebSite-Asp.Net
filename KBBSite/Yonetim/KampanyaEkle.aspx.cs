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
    public partial class KampanyaEkle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbKBBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResimEkle_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png" || FileUpload1.PostedFile.ContentType == "image/jpg")
                {
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + ResimAd));
                    lblResim.Text = ResimAd.ToString();
                }
                else
                {
                    lblResim.Text = "Lütfen jpeg,jpg veya png uzantılı resim yükleyiniz.";

                }
            }
            else
            {
                lblResim.Text = "Resim Seçilmedi.";
            }
        }

        protected void btnYayımla_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("insert into tblKampanya(Baslik,Doktor,Alan,NormalF,Resim,Islem) values (@Baslik,@Doktor,@Alan,@NormalF,@Resim,@Islem)", baglanti);
            komut1.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut1.Parameters.AddWithValue("@Doktor",txtDoktor.Text.ToString());
            komut1.Parameters.AddWithValue("@Alan", txtAlan.Text.ToString());
            komut1.Parameters.AddWithValue("@NormalF", Convert.ToInt32(txtNFiyat.Text));
            komut1.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut1.Parameters.AddWithValue("@Islem", txtIslem.Text.ToString());
            komut1.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("KampanyaEkle.aspx");
        }
    }
}