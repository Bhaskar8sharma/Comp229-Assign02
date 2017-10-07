using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
        protected void confirmButton_Click(object sender, EventArgs e)
        {
            {

                Session["Name"] = "Your name is: " + fname.Value + lname.Value + "<br>";
                Session["Email"] = "Your email id is: " + email.Value + "<br>";
                Session["cnumber"] = "Your contact number is: " + cnumber.Value + "<br>";
                Session["recommendation"] = "Would you recommend it: " + recommendation.Value + "<br>";
                Session["description"] = "Your description about it:" + description.Value + "<br>";
                Response.Redirect("ThankYou.aspx");

            }
        }
    }
}