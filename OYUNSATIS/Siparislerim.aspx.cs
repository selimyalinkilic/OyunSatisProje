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
    public partial class Siparislerim : System.Web.UI.Page
    {
        OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["uyeadi"]) == "")
            {
                Response.Redirect("UyeGiris.aspx");
                Response.End();
            }
            UrunGetir();
        }

        private void UrunGetir()
        {
            OleDbCommand objCmd = new OleDbCommand("Select * from siparis where uye_email=@a");
            objCmd.Parameters.AddWithValue("@a", Convert.ToString(Session["uyeadi"]));
            objCmd.Connection = objConn;
            OleDbDataAdapter objDataAdapter = new OleDbDataAdapter(objCmd);
            DataTable objDt = new DataTable();
            objConn.Open();
            objDataAdapter.Fill(objDt);
            objConn.Close();
            Repeater1.DataSource = objDt;
            Repeater1.DataBind(); 
        }

        protected void lnkcikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("UyeGiris.aspx");
        }
    }
}