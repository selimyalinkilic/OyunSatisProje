using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace OYUNSATIS.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["admin"]) != "")
            {
                Response.Redirect("/Admin/Oyunlar.aspx");
                Response.End();
            }
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            OleDbCommand db_komut;
            objConn.Open();
            string sorgu = "SELECT COUNT(*) FROM yonetici WHERE email=@a and yonetici_parola=@sifre";
            db_komut = new OleDbCommand(sorgu, objConn);
            db_komut.Parameters.Add("@a", OleDbType.VarChar).Value = inputEmail.Text;
            db_komut.Parameters.Add("@sifre", OleDbType.VarChar).Value = inputPassword.Text;
            int kayitsayisi = (int)db_komut.ExecuteScalar();
            objConn.Close();
            objConn = null;
            if (kayitsayisi <= 0)
            {
                Response.Write("<script language='JavaScript'>alert('Kullanıcı adı veya Şifre Yanlış');</script>");
            }
            else
            {
                Session["admin"] = this.inputEmail.Text;
                Response.Redirect("/Admin/Oyunlar.aspx");
            }
        }
    }
}