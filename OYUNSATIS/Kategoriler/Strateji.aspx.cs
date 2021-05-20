using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace OYUNSATIS.Kategoriler
{
    public partial class Strateji : System.Web.UI.Page
    {
       OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));

        protected void Page_Load(object sender, EventArgs e)
        {
            UrunGetir();
        }

        private void UrunGetir()
        {
            OleDbCommand objCmd = new OleDbCommand("Select * from urun where urun_kategori=6");
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