using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace TMS.Admin
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginsubbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from adminlogin where username = @username and password = @password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", usernametext.Text);
            cmd.Parameters.AddWithValue("@password", passtext.Text);
            con.Open();
             SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows == true)
            {
                //Response.Write("<script>alert('Login Sucessful')</script>");
                Session["admin_username"] = usernametext.Text;
                Response.Redirect("~/Admin/Default.aspx");
            }
            else
            {
                //Response.Write("<script>alert('Username or Password is incorrect')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", " Swal.fire('oops!','Username or Password is Incorrect!','error')", true);
            }
            con.Close();
        }
    }
}