using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text;

namespace OYUNSATIS
{
    public partial class PaypalOdeme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static string AccountEmail = "oguzhan.akpinar@outlook.com";

        public static string PayPalUrl = "https://www.sandbox.paypal.com/us/cgi-bin/webscr?";

        private static string PayPalBaseUrl = "https://www.paypal.com/cgi-bin/webscr?";

        private static string ImageUrl = "Bakiye Ekle";

        private static string SuccessUrl = "/Sepet.aspx";

        private static string CancelUrl = "/Bakiyem.aspx";

        private static string ItemNumber = "1";

        public static string Adres(decimal Amount, string ItemName, string mail)
        {

            string tutar = Convert.ToString(Amount).Replace(',', '.');

            StringBuilder Url = new StringBuilder();

            Url.Append(PayPalBaseUrl + "cmd=_xclick&undefined_quantity=0&no_shipping=1&no_note=1&currency_code=TRY&add=0");

            Url.AppendFormat("&business={0}", HttpUtility.UrlEncode(AccountEmail));

            Url.AppendFormat("&item_name={0}", HttpUtility.UrlEncode(ItemName));

            Url.AppendFormat("&item_number={0}", HttpUtility.UrlEncode(ItemNumber));

            Url.AppendFormat("&image_url={0}", HttpUtility.UrlEncode(ImageUrl));

            Url.AppendFormat("&amount={0:f2}", tutar);

            Url.AppendFormat("&return={0}", HttpUtility.UrlEncode(SuccessUrl));

            Url.AppendFormat("&cancel_return={0}", HttpUtility.UrlEncode(CancelUrl));

            return Url.ToString();

        }
    }
}