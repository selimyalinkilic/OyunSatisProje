using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OYUNSATIS
{
    public partial class AnaTasarim : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["uyeadi"]) != "")
            {
                auye.Visible = true;
                auyegiris.Visible = false;
                auyeol.Visible = false;
            }
            else if (Convert.ToString(Session["uyeadi"]) == "")
            {
                auye.Visible = false;
                auyegiris.Visible = true;
                auyeol.Visible = true;
            }
  
        }

        protected void Button_Ara_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Arama.aspx?arananKelime=" + TextBox_Arama.Text);
        }
    }
}