using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TutorialApplication
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Read data from Session
            if (Session["email"] != null)
            {
                lblemail.Text = Session["email"].ToString();
                lblfname.Text = Session["fname"].ToString();
            }
        }
    }
}