using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = Session["email"].ToString();
            Label2.Text = Session["cnumber"].ToString();
            Label3.Text = Session["recommendation"].ToString();
            Label4.Text = Session["description"].ToString();
    }
    }
}