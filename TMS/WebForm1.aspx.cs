using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;

namespace TMS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                //Generating Random number of four digits
                string num = "0123456789";
                int len = num.Length;
                string otp = string.Empty;
                int otpdigit = 4;
                string finaldigit;
                int getindex;
                for (int i = 0; i < otpdigit; i++)
                {
                    do
                    {
                        getindex = new Random().Next(0, 4);
                        finaldigit = num.ToCharArray()[getindex].ToString();

                    }
                    while (otp.IndexOf(finaldigit) != -1);
                    {
                        otp += finaldigit;
                    }

                }
                //Sending Mail
                string from = "ashishdiwan844@gmail.com";
                string to = "ayushdhruv449@gmail.com";
                MailMessage mail = new MailMessage(from, to);
                mail.Body = "Your Reset OTP " + otp;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                NetworkCredential ncc = new NetworkCredential(from, "n0s5i0c2");
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = ncc;
                client.Send(mail);
                Label1.Text = "otp send";
            }
            catch (Exception ex)
            {
                Label1.Text = "error:" + ex.ToString();
            }
        }
    }
}