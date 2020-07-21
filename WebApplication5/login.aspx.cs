using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }


        protected void login_button_Click(object sender, EventArgs e)
        {
            using (moyEntities db = new moyEntities()) // connect to database.
            {
                var login = db.USERs.Where(a => a.Email == email.Text && a.Surname == surname.Text && a.Name == name.Text && a.Password == pwd.Text).FirstOrDefault();
                if (login != null)
                {
                    Session.Add("Id",login.Id);
                    Session.Add("name", login.Name);
                    Session.Add("surname", login.Surname);
                    Session.Add("email", login.Email);
                    Session.Add("password", login.Password);
                    Response.Redirect("Dashboard.aspx");

                }
                else
                {
                    Label1.Visible = true;
                }
            }
        }

        protected void Passwordvisible_CheckedChanged(object sender, EventArgs e)
        {
        
        }
    }
}