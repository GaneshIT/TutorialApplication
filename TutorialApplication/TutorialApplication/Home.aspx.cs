using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TutorialApplication
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Read data from Cookies 
            //HttpCookie getUserInfoCookie = Request.Cookies["logininfo"];
            //lblfname.Text = getUserInfoCookie["fname"];
            //lbllname.Text = getUserInfoCookie["lname"];
            //lblEmail.Text = getUserInfoCookie["email"];
            //lblmobile.Text = getUserInfoCookie["mobile"];

            //Read data from QueryString
            //lblEmail.Text = Request.QueryString["email"].ToString();
            //lblfname.Text = Request.QueryString["fname"].ToString();

            //Read data from Session
            lblEmail.Text = Session["email"].ToString();
            lblfname.Text = Session["fname"].ToString();
            var userdetails = Session["userdetails"];

        }
    }
}