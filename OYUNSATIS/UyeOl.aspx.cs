using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OYUNSATIS
{
    public partial class UyeOl : System.Web.UI.Page
    {
        OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));
        OleDbCommand db_komut;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            string tarih = DateTime.Now.ToShortDateString();
            if (cbSozlesme.Checked == false)
            {
                Response.Write("<script language='JavaScript'>alert('Sözleşmeyi kabul eder misinz?');</script>");
            }
            else
            {
                objConn.Open();
                string sorgu = "SELECT COUNT(*) FROM uye WHERE eposta=@mail";
                db_komut = new OleDbCommand(sorgu, objConn);
                db_komut.Parameters.Add("@mail", OleDbType.VarChar).Value = txtMail.Text;
                int kayitsayisi = (int)db_komut.ExecuteScalar();
                if (kayitsayisi >= 1)
                {
                    Response.Write("<script language='JavaScript'>alert('Mail adresi kullanılıyor');</script>");
                    return;
                }
                OleDbCommand objCmd = new OleDbCommand("insert into uye(uye_ad,uye_soyad,parola,eposta,tel,kayit_tarih) values(@a,@b,@c,@d,@e,@f)",objConn);
                objCmd.Parameters.AddWithValue("@a",txtAd.Text);
                objCmd.Parameters.AddWithValue("@b", txtSoyad.Text);
                objCmd.Parameters.AddWithValue("@c", txtSifre.Text);
                objCmd.Parameters.AddWithValue("@d", txtMail.Text);
                objCmd.Parameters.AddWithValue("@e", txtTel.Text);
                objCmd.Parameters.AddWithValue("@f", tarih);
                objCmd.ExecuteNonQuery();
                objConn.Close();
                Response.Write("<script language='JavaScript'>alert('Kayıt Başarılı');</script>");
                txtAd.Text = "";
                txtSoyad.Text = "";
                txtSifre.Text = "";
                txtMail.Text = "";
                txtTel.Text = "";
            }
        }
    }
}