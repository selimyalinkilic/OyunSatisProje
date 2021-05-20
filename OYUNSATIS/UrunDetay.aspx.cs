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
    public partial class UrunDetay : System.Web.UI.Page
    {
        OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));
        //string str = Request.QueryString.Get("urun_id");
         DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            dt.Columns.Add("id");
            dt.Columns.Add("ad");
            dt.Columns.Add("adet");
            dt.Columns.Add("fiyat");
            dt.Columns.Add("tutar");
        }
        protected void Button_SepetEkle_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["sepet"] != null)
            {
                dt = (DataTable)HttpContext.Current.Session["sepet"];

            }

                Label ad = (Label)FormView1.FindControl("urun_adLabel");
                Label fiyat = (Label)FormView2.FindControl("urun_adLabel");
                Label id = (Label)FormView1.FindControl("urun_idlabel");
                DataRow dr = dt.NewRow();
                dr["id"] = id.Text;
                dr["ad"] = ad.Text;
                dr["adet"] = dllAdet.SelectedItem.ToString();
                dr["fiyat"] = fiyat.Text;
                dr["tutar"] = Convert.ToInt16(fiyat.Text) * Convert.ToInt16(dllAdet.SelectedIndex+1);
                dt.Rows.Add(dr);

            HttpContext.Current.Session["sepet"] = dt;

            Button_SepetEkle.Text = "Sepete Eklendi";
            
        }

    }
}