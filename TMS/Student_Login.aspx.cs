using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace TMS
{
    public partial class Student_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["username"] != null)
            {
                nametext.Text = Request.Cookies["username"].Value.ToString();
            }
            if (Request.Cookies["password"] != null)
            {
                passtext.Text = Request.Cookies["password"].Value.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(cs);
                string query = "select * from student where username =@username and password =@password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", nametext.Text);
                cmd.Parameters.AddWithValue("@password", passtext.Text);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    //Response.Write("<script>alert('Login Sucessful')</script>");
                    //Session["admin_username"] = usernametext.Text;
                    //Response.Redirect("~/Admin/Default.aspx");
                    if (CheckBox1.Checked == true)
                    {
                        Session["username"] = nametext.Text;
                        Response.Cookies["username"].Value = nametext.Text;
                        Response.Cookies["password"].Value = passtext.Text;
                        Response.Cookies["username"].Expires = DateTime.Now.AddDays(2);
                        Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(2);
                        Response.Redirect("~/Student/studentdashboard.aspx");
                        con.Close();
                    }
                    else
                    {
                        Session["username"] = nametext.Text;
                        Response.Cookies["username"].Expires = DateTime.Now.AddDays(-2);
                        Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(-2);
                        Response.Redirect("~/Student/studentdashboard.aspx");
                        con.Close();
                    }
                }
                else
                {
                    //Response.Write("<script>alert('Username or Password is incorrect')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", " Swal.fire('oops!','Username or Password is Incorrect!','error')", true);
                }
                con.Close();
            }
            catch (Exception ex)
            {
                //DateTime dt = new DateTime();
                //StreamWriter stw = new StreamWriter(@"~/Errors/'" + dt + "''" + ex.ToString() + "'.txt ");
            
            }
        }


    }
}