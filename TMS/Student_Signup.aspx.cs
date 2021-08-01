using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace TMS
{
    public partial class Student_Signup : System.Web.UI.Page
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
                string sp = "SPstudentdatainsert";
                SqlCommand cmd = new SqlCommand(sp, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@sname", firstnametext.Text);
                cmd.Parameters.AddWithValue("@fname", fathertext.Text);
                cmd.Parameters.AddWithValue("@surname", surnametext.Text);
                cmd.Parameters.AddWithValue("gender", ddlgender.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("age", Convert.ToInt32(agetext.Text));
                cmd.Parameters.AddWithValue("country", countrytext.Text);
                cmd.Parameters.AddWithValue("city", citytext.Text);
                cmd.Parameters.AddWithValue("sstandard", ddlclass.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("saddress", addresstext.Text);
                cmd.Parameters.AddWithValue("goingto", ddlgoingto.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("ssubject", subjecttextbox.Text);
                cmd.Parameters.AddWithValue("contact", contacttext.Text);
                cmd.Parameters.AddWithValue("tutiontypeform", Dddltutiontypeform.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("tutorqualification", ddltutorquali.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("username", usernametext.Text);
                cmd.Parameters.AddWithValue("spassword", Passwordtext.Text);
                cmd.Parameters.AddWithValue("@emailid", emailidtext.Text);
                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "SucessSignUp();", true);
                    con.Close();

                }
                con.Close();
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