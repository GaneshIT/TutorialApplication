using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TutorialApplicationBusiness;

namespace TutorialApplication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }   
        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            UserInfoBusiness userInfoBusiness = new UserInfoBusiness();
            DataTable dtLogin = userInfoBusiness.LoginCheck(txtemail.Text, txtpwd.Text);
            if (dtLogin.Rows.Count > 0)
            {
                //Cookie
                //1. Persist Cookie-(not have expired time) 2.Non-Persist Cookie-(has expired time )
                //HttpCookie httpCookie = new HttpCookie("logininfo");
                //httpCookie["fname"] = dtLogin.Rows[0][0].ToString();
                //httpCookie["lname"] = dtLogin.Rows[0][1].ToString();
                //httpCookie["email"] = dtLogin.Rows[0][2].ToString();
                //httpCookie["mobile"] = dtLogin.Rows[0][3].ToString();
                //httpCookie.Expires.Add(new TimeSpan(0, 0, 20));
                //Response.Cookies.Add(httpCookie);

                //QueryString
                //Response.Redirect("Home.aspx?email=" + dtLogin.Rows[0][2].ToString()+"&fname="+ dtLogin.Rows[0][0].ToString());

                //session storage
                Application["userdetails"] = dtLogin;
                Application["email"] = dtLogin.Rows[0][2].ToString();
                Application["fname"] = dtLogin.Rows[0][0].ToString();
                Response.Redirect("Home.aspx");


            }
            else
            {
                lblResult.Text = "Email id or password wrong!";
            }
        }
    }
}

/* localhost:2343/Tutorial/viewTutorial.aspx?tutorialid=101
 * State Management
 * 1.Client side           2.Server side
 * Client side: Cookies,viewstate,querystring,hiddenfield
 * Server side: Sesssion(single user access) and application(multi user access)
 */