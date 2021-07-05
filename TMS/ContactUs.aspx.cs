using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace TMS
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sumbitbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                string sp = "spContact_Insert";//Store procedure command
                SqlCommand cmd = new SqlCommand(sp, con);
                cmd.CommandType = CommandType.StoredProcedure;//forcefully data insert in the store proedure 
                cmd.Parameters.AddWithValue("@name", nametext.Text);
                cmd.Parameters.AddWithValue("@email", emailtextbox.Text);
                cmd.Parameters.AddWithValue("@subject", subjectDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@message", messagebox.Text);
                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    //Response.Write("<script>alert('form has been submitted!!')</script>");
                    //Response.Write("<script>SucessContact();</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "SucessContact();", true);
                    con.Close();
                    Cleartext();
                }
                con.Close();
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('error:')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "ErrorContact();", true);
            }
        }
        public void Cleartext()
        {
            nametext.Text = "";
            emailtextbox.Text = "";
            subjectDropDownList.ClearSelection();
            messagebox.Text = "";

        }
    }
}