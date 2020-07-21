using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected bool IsEmailValid(string email)
        {
            USER userToEdit = new USER();
            using (moyEntities db = new moyEntities())
            {
                userToEdit = db.USERs.Where(a => a.Email == email).FirstOrDefault();
            }
            if (userToEdit == null)
                return true;
            else
                return false;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           using(moyEntities db = new moyEntities())
            {
                int usrname = Session["Id"].GetHashCode();
                var user = db.USERs.Where(a => a.Id == usrname).FirstOrDefault();
                username.Text = user.Name;
            }
        }
        protected void Logout_click(object sender , EventArgs e)
        {
            Session.Clear();
            Response.Redirect("help.aspx");
        }
        protected void Lnkbtn1_click(object sender, EventArgs e)//changepassword

        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }
        public void btnsave1_click(object sender, EventArgs e)
        {
           
            int length = 8;
            string oldpassword  = txtold1.Text.Trim();
            string newpassword1 = txtnew1.Text.Trim();
            string newpassword2 = txtnew2.Text.Trim();
            string UserID = Session["Id"].ToString();
            string DBPassword = string.Empty;

            if (newpassword1.Length >= length &&  newpassword1 ==newpassword2)
          
            {
                using (moyEntities db = new moyEntities())
              
                 {

                    int userid = Convert.ToInt32(Session["Id"].GetHashCode());
                    USER loggedUser = db.USERs.Where(a => a.Id == userid).FirstOrDefault();

                    if (loggedUser != null)
                        DBPassword = loggedUser.Password;
                     
                }
                if (oldpassword != newpassword1 && newpassword1 == newpassword2)

                {
                    using (moyEntities db = new moyEntities())
                    {
                        int userid = Convert.ToInt32(Session["Id"].GetHashCode());
                        USER loggedUser = db.USERs.Where(a => a.Id == userid).FirstOrDefault();
                        loggedUser.Password = newpassword1;
                        db.SaveChanges();
                      
                    }


                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showSuccess():", true);

                }
            }
            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showError();", true);
        }
        protected void Lnkbtn2_click(object sender, EventArgs e)//editprofile
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);

        }


        protected void btnsave2_click(object sender, EventArgs e)
        {
           
            bool validEmail = IsEmailValid(txtemail.Text);
            using(moyEntities  db = new moyEntities())    
           
            {
                int userid = Convert.ToInt32(Session["Id"].GetHashCode());

               
                USER editedUser = db.USERs.Where(a => a.Id == userid).FirstOrDefault();
                if (validEmail == true)
                    editedUser.Email = txtemail.Text;
                db.SaveChanges();
            }
            txtemail.Text = null;
            txtusername.Text = null;
        }

        protected void Btnclose2_click(object sender, EventArgs e)
        {
            txtemail.Text = null;
            txtusername.Text = null;

        }
    }
}