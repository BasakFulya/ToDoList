using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sucmessage.Visible = false;
        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (moyEntities db = new moyEntities())
            {
                CONTACT save = new CONTACT();
                save.Email = email.Text.Trim();
                save.Message = message.Text.Trim();
                if (Session["Id"] != null)
                {
                    save.UserId = Session["Id"].GetHashCode();
                }
                db.CONTACTs.Add(save);
                db.SaveChanges();
                sucmessage.Visible = true;


            }

            email.Text = string.Empty;
            message.Text = string.Empty;
        



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            email.Text = string.Empty;
            message.Text = string.Empty;

        }
    }
}