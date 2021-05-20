using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OYUNSATIS.Kategoriler
{
    public partial class YeniEklenenler : System.Web.UI.Page
    {
       OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));

        protected void Page_Load(object sender, EventArgs e)
        {
            yeniUrunGetir();
        }

        private void yeniUrunGetir()
        {
            OleDbCommand objCmd = new OleDbCommand("Select top 10 * from urun order by urun_tarih desc");
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