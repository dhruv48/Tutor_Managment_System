using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS.Student
{
    public partial class studentlogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] != null)
            {
                Session["username"] = null;
                //Session.Abandon();
                Response.Redirect("~/Student_Login.aspx");
            }
        }
    }
}