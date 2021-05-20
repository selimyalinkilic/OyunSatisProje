using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OYUNSATIS.Admin
{
    public partial class Ayarlar : System.Web.UI.Page
    {
        OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["admin"]) == "")
            {
                Response.Redirect("/Admin/Default.aspx");
                Response.End();
            }
            if (!Page.IsPostBack)
            {
                bilgilerigetir();
            }
            
        }

        private void bilgilerigetir()
        {
            DataTable dt = null;
            DataSet ds = new DataSet();
            OleDbCommand db_komut;
            OleDbDataAdapter db_adapter = null;
            objConn.Open();
            string sorgu = "SELECT * FROM yonetici WHERE email=@uyeadi";
            db_komut = new OleDbCommand(sorgu, objConn);
            db_komut.Parameters.Add("@uyeadi", OleDbType.VarChar).Value = Session["admin"];
            db_adapter = new OleDbDataAdapter();
            db_adapter.SelectCommand = db_komut;
            db_adapter.Fill(ds);
            dt = ds.Tables[0];
            db_adapter = null;
            objConn.Close();
            objConn = null;
            if (dt.Rows.Count > 0)
            {
                this.txtAdı.Text = dt.Rows[0]["yonetici_ad"].ToString();
                this.txtSoyad.Text = dt.Rows[0]["yonetici_soyad"].ToString();
                this.txtMail.Text = dt.Rows[0]["email"].ToString();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            OleDbConnection db_baglanti = null;
            OleDbCommand db_komut = null;
            //OleDbDataReader dtReader = null;
            string deneme = Session["admin"].ToString();
            db_baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));
            try
            {
                db_baglanti.Open();
                string sorgu1 = "Update yonetici set yonetici_ad=@a,yonetici_soyad=@b where email=@m";
                db_komut = new OleDbCommand(sorgu1, db_baglanti);
                db_komut.Parameters.Add("@a", OleDbType.VarChar).Value = this.txtAdı.Text;
                db_komut.Parameters.Add("@b", OleDbType.VarChar).Value = this.txtSoyad.Text;
                db_komut.Parameters.Add("@m", OleDbType.VarChar).Value = Session["admin"];
                db_komut.ExecuteNonQuery();
                db_baglanti.Close();
                
                Response.Write("<script language='JavaScript'>alert('Güncelleme Başarılı');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script language='JavaScript'>alert('Güncelleme Başarısız.');</script>");
                throw;
            }
            
            
        }
    }
}