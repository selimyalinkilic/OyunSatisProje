using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OYUNSATIS
{
    public partial class Iletisim : System.Web.UI.Page
    {
       OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            objConn.Open();
            OleDbCommand objCmd = new OleDbCommand("insert into iletisim(mail,konu,mesaj) values(@a,@b,@c)", objConn);
            objCmd.Parameters.AddWithValue("@a", txtEmail.Text);
            objCmd.Parameters.AddWithValue("@b", txtKonu.Text);
            objCmd.Parameters.AddWithValue("@c", txtMesaj.Text);
            objCmd.ExecuteNonQuery();
            objConn.Close();
            Response.Write("<script language='JavaScript'>alert('Mesaj Gönderildi.');</script>");
            txtKonu.Text = "";
            txtMesaj.Text = "";
            txtEmail.Text = "";
        }
    }
}