using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1 {

    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        static bool checkCardNumber(String cardNo)
        {
            int digits = cardNo.Length;
            int sum = 0;
            bool isSecond = false;
            int i = digits - 1;
            while (i >= 0)
            {  //Lhun algoritması
                int check = cardNo[i] - '0';
                if (isSecond == true)
                {
                    check = check * 2;
                }
                sum += check / 10;
                sum += check % 10;
                isSecond = !isSecond;
                i--;
            }
            return (sum % 10 == 0);
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Visa.Visible = true;
            Mastercard.Visible = true;
            BCGlobal.Visible = true;
            Carte.Visible = true;
            Diners.Visible = true;
            Discover.Visible = true;
            Maestro.Visible = true;
            Amex.Visible = true;

            if (System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text.ToString(), "^4[0-9]{12}(?:[0-9]{3})?$"))
            {
                Visa.Visible = true;
                Mastercard.Visible = false;
                BCGlobal.Visible = false;
                Carte.Visible = false;
                Diners.Visible = false;
                Discover.Visible = false;
                Maestro.Visible = false;
                Amex.Visible = false;
            }
            else if (System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text.ToString(),
                "^(5[1-5][0-9]{14}|2(22[1-9][0-9]{12}|2[3-9][0-9]{13}|[3-6][0-9]{14}|7[0-1][0-9]{13}|720[0-9]{12}))$"))
            {
                Visa.Visible = false;
                Mastercard.Visible = true;
                BCGlobal.Visible = false;
                Carte.Visible = false;
                Diners.Visible = false;
                Discover.Visible = false;
                Maestro.Visible = false;
                Amex.Visible = false;
            }
            else if (System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text.ToString(), "^(6541|6556)[0-9]{12}$"))
            {
                Visa.Visible = false;
                Mastercard.Visible = false;
                BCGlobal.Visible = true;
                Carte.Visible = false;
                Diners.Visible = false;
                Discover.Visible = false;
                Maestro.Visible = false;
                Amex.Visible = false;
            }
            else if (System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text.ToString(), "^389[0-9]{11}$"))
            {
                Visa.Visible = false;
                Mastercard.Visible = false;
                BCGlobal.Visible = false;
                Carte.Visible = true;
                Diners.Visible = false;
                Discover.Visible = false;
                Maestro.Visible = false;
                Amex.Visible = false;
            }
            else if (System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text.ToString(), "^3(?:0[0-5]|[68][0-9])[0-9]{11}$"))
            {
                Visa.Visible = false;
                Mastercard.Visible = false;
                BCGlobal.Visible = false;
                Carte.Visible = false;
                Diners.Visible = true;
                Discover.Visible = false;
                Maestro.Visible = false;
                Amex.Visible = false;
            }
            else if (System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text.ToString(),
                "^65[4-9][0-9]{13}|64[4-9][0-9]{13}|6011[0-9]{12}|(622(?:12[6-9]|1[3-9][0-9]|[2-8][0-9][0-9]|9[01][0-9]|92[0-5])[0-9]{10})$"))
            {
                Visa.Visible = false;
                Mastercard.Visible = false;
                BCGlobal.Visible = false;
                Carte.Visible = false;
                Diners.Visible = false;
                Discover.Visible = true;
                Maestro.Visible = false;
                Amex.Visible = false;
            }
            else if (System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text.ToString(), "^(5018|5020|5038|6304|6759|6761|6763)[0-9]{8,15}$"))
            {
                Visa.Visible = false;
                Mastercard.Visible = false;
                BCGlobal.Visible = false;
                Carte.Visible = false;
                Diners.Visible = false;
                Discover.Visible = false;
                Maestro.Visible = true;
                Amex.Visible = false;
            }
            else if (System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text.ToString(), "^3[47][0-9]{13}$"))
            {

                Visa.Visible = false;
                Mastercard.Visible = false;
                BCGlobal.Visible = false;
                Carte.Visible = false;
                Diners.Visible = false;
                Discover.Visible = false;
                Maestro.Visible = false;
                Amex.Visible = true;
            }

        }

        public static bool IsValidDate(int m, int y)
        {
            var DateTimeNow = DateTime.Now;
            var monthNow = DateTimeNow.Month;
            var yearNow = DateTimeNow.Year;

            if (y >= yearNow)
            {
                if (y > yearNow)
                {
                    return true;
                }
                if (y == yearNow)
                {
                    if (m >= monthNow)
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (checkCardNumber(TextBox1.Text))
                {
                    if (IsValidDate(Convert.ToInt16(DropDownList1.Text), Convert.ToInt16(DropDownList2.Text)))
                    {
                        Label3.ForeColor = System.Drawing.Color.Green;
                        Label3.Font.Size = 12;
                        Label3.Text = "Payment Successful.";
                        Label1.Text = "";
                    }
                    else
                    {
                        Label3.ForeColor = System.Drawing.Color.Red;
                        Label3.Font.Size = 14;
                        Label3.Text = "Payment Failed..";
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Text = "Your card has expired. Please contact your bank.";
                    }
                }
                else
                {
                    Label3.Text = "";
                    Label1.Text = "Card Number is Not Valid";
                }
            }
        }
    }
}