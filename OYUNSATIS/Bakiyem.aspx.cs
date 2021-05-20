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
    public partial class Bakiyem : System.Web.UI.Page
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
                bakiyeGetir();
            }
            
        }

        private void bakiyeGetir()
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
                this.lblbakiye.Text = dt.Rows[0]["bakiye"].ToString();
            }
        }

        protected void lnkcikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("UyeGiris.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mail = Session["uyeadi"].ToString();
            Response.Redirect(PaypalOdeme.Adres(10, "10 Lira", mail));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string mail = Session["uyeadi"].ToString();
            Response.Redirect(PaypalOdeme.Adres(20, "20 Lira", mail));
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string mail = Session["uyeadi"].ToString();
            Response.Redirect(PaypalOdeme.Adres(50, "50 Lira", mail));
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string mail = Session["uyeadi"].ToString();
            Response.Redirect(PaypalOdeme.Adres(100, "100 Lira", mail));
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string mail = Session["uyeadi"].ToString();
            Response.Redirect(PaypalOdeme.Adres(200, "200 Lira", mail));
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string mail = Session["uyeadi"].ToString();
            Response.Redirect(PaypalOdeme.Adres(500, "500 Lira", mail));
        }
    }
}