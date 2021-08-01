using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace TMS
{
    public partial class tutorsignup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(cs);
                string query ="Insert into tutortable values(@name , @surname ,@gender , @age , @email , @martialstatus , @country , @city , @address , @qualification , @degree ,@experience , @contact , @username , @password )";
                SqlCommand cmd = new SqlCommand(query, con);
              
                cmd.Parameters.AddWithValue("@name", firstnametext.Text);
            
                cmd.Parameters.AddWithValue("@surname", surname.Text);
                cmd.Parameters.AddWithValue("@gender", ddlgender.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(agetext.Text));
                cmd.Parameters.AddWithValue("@email", emailidtext.Text);
                cmd.Parameters.AddWithValue("@martialstatus", Ddlmartial.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@country", txtcountry.Text);

                cmd.Parameters.AddWithValue("@city", citytext.Text);
              
                cmd.Parameters.AddWithValue("@address", addresstext.Text);
                cmd.Parameters.AddWithValue("@qualification", ddlqualification.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree", Txtdegree.Text);
                //cmd.Parameters.AddWithValue("ssubject", subjecttextbox.Text);
                cmd.Parameters.AddWithValue("@experience", ddlexp.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contact", contacttext.Text);
                cmd.Parameters.AddWithValue("username", usernametext.Text);
                cmd.Parameters.AddWithValue("password", Passwordtext.Text);
               

                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "SucessSignUp();", true);
                    con.Close();

                }
               
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "ErrorSignUp();", true);
                    con.Close();
                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY CONSTRAINT"))
                {

                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "ErrorSignUp();", true);
                }
            }

        }
    }
}