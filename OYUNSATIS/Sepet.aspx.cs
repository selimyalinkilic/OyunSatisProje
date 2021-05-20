using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace OYUNSATIS
{
    public partial class Sepet : System.Web.UI.Page
    {
        OleDbConnection objConn = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + HttpContext.Current.Server.MapPath("/App_Data/eticaret.accdb"));
        int bakiye;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = HttpContext.Current.Session["sepet"];
            GridView1.DataBind();
            LabelToplam.Text = SepetToplam().ToString();
            bakiyeGetir();

        }

        private void bakiyeGetir()
        {
            if (Convert.ToString(Session["uyeadi"]) != "")
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
                //objConn = null;
                if (dt.Rows.Count > 0)
                {
                    bakiye = Convert.ToInt16(dt.Rows[0]["bakiye"]);
                }
            }

        }

        public double SepetToplam()
        {
            double toplam = 0;
            if (HttpContext.Current.Session["sepet"] != null)
            {

                DataTable dt = new DataTable();
                dt = (DataTable)HttpContext.Current.Session["sepet"];
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    toplam += Convert.ToDouble(dt.Rows[i]["tutar"].ToString());
                }
            }

            return toplam;

        }

        protected void Button_SatinAl_Click(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["uyeadi"]) == "")
            {
                Response.Redirect("UyeGiris.aspx");
                Response.End();
            }
            else if (HttpContext.Current.Session["sepet"] == null)
            {
                Response.Write("<script language='JavaScript'>alert('Sepet boş.');</script>");
            }
            else
            {
                if (bakiye < Convert.ToInt16(LabelToplam.Text))
                {
                    Response.Write("<script language='JavaScript'>alert('Bakiye Yetersiz.');</script>");
                }
                else
                {
                    string icerik = "";
                    DataTable dt = new DataTable();
                    dt = (DataTable)HttpContext.Current.Session["sepet"];
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        icerik += " oyunid: ";
                        icerik += dt.Rows[i]["id"].ToString();
                        icerik += " oyunad: ";
                        icerik += dt.Rows[i]["ad"].ToString();
                        icerik += " adet: ";
                        icerik += dt.Rows[i]["adet"].ToString();
                    }

                    objConn.Open();
                    OleDbCommand objCmd = new OleDbCommand("insert into siparis(uye_email,aciklama,toplam_fiyat) values(@a,@b,@c)", objConn);
                    objCmd.Parameters.AddWithValue("@a", Session["uyeadi"].ToString());
                    objCmd.Parameters.AddWithValue("@b", icerik.ToString());
                    objCmd.Parameters.AddWithValue("@c", Convert.ToInt64(LabelToplam.Text));
                    objCmd.ExecuteNonQuery();
                    objConn.Close();

                    objConn.Open();
                    OleDbCommand objCmdd = new OleDbCommand("update uye set bakiye=bakiye-@a where eposta=@b", objConn);
                    objCmdd.Parameters.AddWithValue("@a", Convert.ToInt64(LabelToplam.Text));
                    objCmdd.Parameters.AddWithValue("@b", Session["uyeadi"].ToString());
                    objCmdd.ExecuteNonQuery();
                    objConn.Close();

                    HttpContext.Current.Session["sepet"] = null;

                    Response.Write("<script language='JavaScript'>alert('Başarılı'); window.location='/Sepet.aspx';</script>");

                   
                    //Response.Redirect("/Sepet.aspx");
                }
            }
        }

        protected void Button_Temizle_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["sepet"] = null;
            Response.Redirect("/Sepet.aspx");
        }
    }

}