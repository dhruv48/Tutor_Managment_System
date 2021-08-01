using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;

namespace TMS
{
    public partial class Studentforgetpass : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void SendOtp()
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
                string from = "ayushdhruv449@gmail.com";
                string to = emailtext.Text;
                MailMessage mail = new MailMessage(from, to);
                mail.Subject = "Reset OTP";
                mail.Body = "Your Reset OTP " + otp;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                NetworkCredential ncc = new NetworkCredential(from, "n0s5i0c2");
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = ncc;
                client.Send(mail);
                //Sending otp in Database
                SqlConnection con = new SqlConnection(cs);
                string query = "Insert into studentforgepass values(@emailid , @emailotp)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@emailid", emailtext.Text);
                cmd.Parameters.AddWithValue("@emailotp", otp);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch(Exception ex)
            {
                 Label1.Text  = "error:" + ex.ToString();
                Label1.Visible = true;
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["username"] = nametext.Text;
            try
            {
                SqlConnection con = new SqlConnection(cs);
                string query = "select * from student where username = @username and emailid =@emailid";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", nametext.Text);
                cmd.Parameters.AddWithValue("@emailid", emailtext.Text);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
          
                if (rd.HasRows == true)
                {

                    SendOtp();
                    Response.Redirect("~/studentupdatepass.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", " Swal.fire('oops!','Username or Email is not Registered!','error')", true);
                }
                con.Close();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Error:'" + ex.ToString() + "'')</script>");
            }
        }
    }
}