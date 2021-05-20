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
    public partial class Default : System.Web.UI.Page
    {
        OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));

        protected void Page_Load(object sender, EventArgs e)
        {
            yeniUrunGetir();
            indirimGetir();
            onSiparisGetir();
        }

        private void onSiparisGetir()
        {
            OleDbCommand objCmd = new OleDbCommand("Select top 4 * from urun where on_siparis=1");
            objCmd.Connection = objConn;
            OleDbDataAdapter objDataAdapter = new OleDbDataAdapter(objCmd);
            DataTable objDt = new DataTable();
            objConn.Open();
            objDataAdapter.Fill(objDt);
            objConn.Close();
            Repeater3.DataSource = objDt;
            Repeater3.DataBind();
        }

        private void indirimGetir()
        {
            OleDbCommand objCmd = new OleDbCommand("Select top 4 * from urun inner join indirim on urun.urun_id=indirim.urun_id");
            objCmd.Connection = objConn;
            OleDbDataAdapter objDataAdapter = new OleDbDataAdapter(objCmd);
            DataTable objDt = new DataTable();
            objConn.Open();
            objDataAdapter.Fill(objDt);
            objConn.Close();
            Repeater2.DataSource = objDt;
            Repeater2.DataBind();
        }

        private void yeniUrunGetir()
        {
            OleDbCommand objCmd = new OleDbCommand("Select top 4 * from urun order by urun_tarih desc");
            objCmd.Connection = objConn;
            OleDbDataAdapter objDataAdapter = new OleDbDataAdapter(objCmd);
            DataTable objDt = new DataTable();
            objConn.Open();
            objDataAdapter.Fill(objDt);
            objConn.Close();
            Repeater1.DataSource = objDt;
            Repeater1.DataBind();
        }

    }
}