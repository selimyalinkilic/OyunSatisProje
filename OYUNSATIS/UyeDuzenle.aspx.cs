using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OYUNSATIS
{
    public partial class UyeDuzenle : System.Web.UI.Page
    {
        OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["uyeadi"]) == "")
            {
                Response.Redirect("UyeGiris.aspx");
                Response.End();    
            }
            if (!Page.IsPostBack)
            {
                bilgileriGetir();
            }
        }

        private void bilgileriGetir()
        {
            DataTable dt = null;
            DataSet ds = new DataSet();
            OleDbCommand db_komut;
            OleDbDataAdapter db_adapter = null;
            objConn.Open();
            string sorgu = "SELECT * FROM uye WHERE eposta=@uyeadi";
            db_komut = new OleDbCommand(sorgu, objConn);
            db_komut.Parameters.Add("@uyeadi", OleDbType.VarChar).Value = Session["uyeadi"];
            db_adapter = new OleDbDataAdapter();
            db_adapter.SelectCommand = db_komut;
            db_adapter.Fill(ds);
            dt = ds.Tables[0];
            db_adapter = null;
            objConn.Close();
            objConn = null;
            if (dt.Rows.Count > 0)
            {
                this.lblad.Text = dt.Rows[0]["uye_ad"].ToString();
                this.lblsoyad.Text = dt.Rows[0]["uye_soyad"].ToString();
                this.txtulke.Text = dt.Rows[0]["ulke"].ToString();
                this.txtsehir.Text = dt.Rows[0]["sehir"].ToString();
                this.lblemail.Text = dt.Rows[0]["eposta"].ToString();
                this.txtilce.Text = dt.Rows[0]["ilce"].ToString();
                this.txtadres.Text = dt.Rows[0]["adres"].ToString();
                this.txttel.Text = dt.Rows[0]["tel"].ToString();
                this.txtsif.Text = dt.Rows[0]["parola"].ToString();
                this.txtsif2.Text = dt.Rows[0]["parola"].ToString();
            }
        }

        protected void button_Guncelle_Click(object sender, EventArgs e)
        {
                OleDbConnection db_baglanti = null;
                OleDbCommand db_komut = null;
                //OleDbDataReader dtReader = null;
                string deneme = Session["uyeadi"].ToString();
                db_baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));
                db_baglanti.Open();
                /*string sorgu = "SELECT * FROM uye WHERE eposta<>@uyeadi";
                db_komut = new OleDbCommand(sorgu, db_baglanti);
                db_komut.Parameters.Add("@uyeadi", OleDbType.VarChar).Value = Session["uyeadi"].ToString();
                dtReader = db_komut.ExecuteReader();
                if (dtReader.HasRows)
                {
                    Response.Write("<script language='JavaScript'>alert('Mail adresi kullanılıyor');</script>");
                }*/

                string sorgu1 = "Update uye set parola=@a,ulke=@d,sehir=@e,ilce=@f,adres=@g,tel=@h where eposta=@uyeadi";
                db_komut = new OleDbCommand(sorgu1, db_baglanti);
                db_komut.Parameters.Add("@a", OleDbType.VarChar).Value = this.txtsif.Text;
                db_komut.Parameters.Add("@d", OleDbType.VarChar).Value = this.txtulke.Text;
                db_komut.Parameters.Add("@e", OleDbType.VarChar).Value = this.txtsehir.Text;
                db_komut.Parameters.Add("@f", OleDbType.VarChar).Value = this.txtilce.Text;
                db_komut.Parameters.Add("@g", OleDbType.VarChar).Value = this.txtadres.Text;
                db_komut.Parameters.Add("@h", OleDbType.VarChar).Value = this.txttel.Text;
                db_komut.Parameters.Add("@uyeadi", OleDbType.VarChar).Value = Session["uyeadi"];
                db_komut.ExecuteNonQuery();
                db_baglanti.Close();
                db_baglanti = null;
                Response.Write("<script language='JavaScript'>alert('Güncelleme Başarılı');</script>");
        }

        protected void lnkcikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("UyeGiris.aspx");
        }

    }
}