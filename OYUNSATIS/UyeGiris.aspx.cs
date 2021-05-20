using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OYUNSATIS
{
    public partial class UyeGiris : System.Web.UI.Page
    {
        OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            OleDbCommand db_komut;
            objConn.Open();
            string sorgu = "SELECT COUNT(*) FROM uye WHERE eposta=@a and parola=@sifre";
            db_komut = new OleDbCommand(sorgu, objConn);
            db_komut.Parameters.Add("@a", OleDbType.VarChar).Value = txtKul_Adi.Text;
            db_komut.Parameters.Add("@sifre", OleDbType.VarChar).Value = txtSifre.Text;
            int kayitsayisi = (int)db_komut.ExecuteScalar();
            objConn.Close();
            objConn = null;
            if (kayitsayisi <= 0)
            {
                Response.Write("<script language='JavaScript'>alert('Kullanıcı adı veya Şifre Yanlış');</script>");
            }
            else
            {
                Session["uyeadi"] = this.txtKul_Adi.Text;
                Response.Redirect("Uye.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UyeOl.aspx");
        }
    }
}