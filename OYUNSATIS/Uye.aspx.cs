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
    public partial class Uye : System.Web.UI.Page
    {
        OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["uyeadi"]) == "")
            {
                Response.Redirect("UyeGiris.aspx");
                Response.End();
            }
            bilgilerigetir();
        }

        private void bilgilerigetir()
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
                this.lblulke.Text = dt.Rows[0]["ulke"].ToString();
                this.lblsehir.Text = dt.Rows[0]["sehir"].ToString();
                this.lblEmail.Text = dt.Rows[0]["eposta"].ToString();
                this.lblilce.Text = dt.Rows[0]["ilce"].ToString();
                this.lbladres.Text = dt.Rows[0]["adres"].ToString();
                this.lbltel.Text = dt.Rows[0]["tel"].ToString();
                this.lbltarih.Text = dt.Rows[0]["kayit_tarih"].ToString();
            }
        }

        protected void lnkcikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("UyeGiris.aspx");
        }

        /*protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("UyeGiris.aspx");
        }*/
    }
}