using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yograj_BookStore
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // here use cookie to login the page and redirect to order page with some welcome message by clicking the login button...... 
        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (IsValid)
            {
                DateTime expiry = DateTime.Now.AddMinutes(5);
                SetCokkie("FirstName", txtUser.Text , expiry);
                SetCokkie("LastName", txtPassword.Text, expiry);
            }
            LoginMsg.Text = "Succesfully Login";
            Response.Redirect("~/Order.aspx");
        }

        private void SetCokkie(string name, string value, DateTime expiry)
        {
            if (Page.IsPostBack)
            {
                HttpCookie Cookie = new HttpCookie(name, value);
                Cookie.Expires = expiry;
                Response.Cookies.Add(Cookie);
            }
        }
    }
}