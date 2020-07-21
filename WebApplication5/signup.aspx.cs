using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            emailerror.Visible = false;
            passworderror.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (pwd.Text== confirmpwd.Text)
            {
               Signup();
            }
            else
            {
                passworderror.Visible = true;
            }
            
        }
        private void Signup()
        {

            using (moyEntities db = new moyEntities())
            { 
                var signup = db.USERs.Where(a => a.Email.Equals(email.Text)).FirstOrDefault();
                if (signup == null)
                {

                    USER save = new USER();
                    save.Email = email.Text.Trim();
                    save.Name = name.Text.Trim();
                    save.Surname = surname.Text.Trim();
                    save.Password = pwd.Text.Trim();
                    db.USERs.Add(save);
                    db.SaveChanges();
                    Session.Add("Id", save.Id);
                    Session.Add("name", save.Name);
                    Session.Add("surname", save.Surname);
                    Session.Add("email", save.Email);
                    Session.Add("password", save.Password);
                    email.Text = string.Empty;
                    name.Text = string.Empty;
                    surname.Text = string.Empty;
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    emailerror.Visible = true;
                }

            }

        }
    }
}