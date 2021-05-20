using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OYUNSATIS.Admin
{
    public partial class OyunEkle : System.Web.UI.Page
    {
        OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb")); 
        OleDbDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["admin"]) == "")
            {
                Response.Redirect("/Admin/Default.aspx");
                Response.End();
            }
            KategoriGetir();
            YapimciGetir();
        }

        private void YapimciGetir()
        {
            objConn.Open();
            OleDbCommand komut = new OleDbCommand("Select yapimci_ad From yapimci", objConn);
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                ddlYapimci.Items.Add(dr["yapimci_ad"].ToString());
            }
            objConn.Close();
        }

        private void KategoriGetir()
        {
            objConn.Open();
            OleDbCommand komut = new OleDbCommand("Select kategori_ad From kategori", objConn);
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                ddlKategori.Items.Add(dr["kategori_ad"].ToString());
            }
            objConn.Close();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {

            FileUpload1.SaveAs(Server.MapPath("/Resim/") + FileUpload1.FileName);
            FileUpload2.SaveAs(Server.MapPath("/Resim/") + FileUpload2.FileName);
            FileUpload3.SaveAs(Server.MapPath("/Resim/") + FileUpload3.FileName);

            objConn.Open();
            OleDbCommand objCmd = new OleDbCommand("insert into urun(urun_ad,urun_fiyat,urun_yapimci,urun_kategori,urun_stok,on_siparis,urun_aciklama,urun_tarih,urun_resim,urun_resim1,urun_resim2) values(@a,@b,@c,@d,@e,@f,@g,@z,@x,@w,@k)", objConn);
            objCmd.Parameters.AddWithValue("@a", txtAd.Text );
            objCmd.Parameters.AddWithValue("@b", Convert.ToInt32(txtFiyat.Text));
            objCmd.Parameters.AddWithValue("@c", ddlYapimci.SelectedIndex);
            objCmd.Parameters.AddWithValue("@d", ddlKategori.SelectedIndex+1);
            objCmd.Parameters.AddWithValue("@e", ddlStok.SelectedIndex);
            objCmd.Parameters.AddWithValue("@f", ddlOnSiparis.SelectedIndex);
            objCmd.Parameters.AddWithValue("@g", txtAciklama.Text);
            objCmd.Parameters.AddWithValue("@z", Convert.ToDateTime(txtTarih.Text));
            objCmd.Parameters.AddWithValue("@x", "/Resim/"+FileUpload1.FileName);
            objCmd.Parameters.AddWithValue("@w", "/Resim/" + FileUpload2.FileName);
            objCmd.Parameters.AddWithValue("@k", "/Resim/"+ FileUpload3.FileName);
            objCmd.ExecuteNonQuery();
            objConn.Close();
            Response.Write("<script language='JavaScript'>alert('Kayıt Başarılı');</script>");
            txtAd.Text = "";
            txtAciklama.Text = "";
            txtFiyat.Text = "";
        }
    }
}