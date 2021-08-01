using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Text;
using System.Net.Mail;
using System.Net.Mime;

namespace TMS
{
    public partial class studentupdatepass : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                username = Session["username"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(cs);
                string queryOTP = "Select * from studentforgepass where emailotp = @otp";
                SqlCommand cmd = new SqlCommand(queryOTP, con);
                cmd.Parameters.AddWithValue("@otp", otptext.Text.Trim());
                con.Open();
                int tr = cmd.ExecuteNonQuery();
                con.Close();
                if (tr > 1)
                {

                    string query = "Update student set password = @passtext where username = '" + username + "'";
                    SqlCommand cmdd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("passtext", passtext.Text.Trim());
                    con.Open();
                    int a = cmdd.ExecuteNonQuery();
                    if (a > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Successlogin();", true);
                        passtext.Text = string.Empty;
                        passtextcon.Text = string.Empty;

                    }

                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('oops!','Password is not Updated!','error')", true);
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('oops!','Password is not Updated!','error')", true);
            }
        }
    }
}