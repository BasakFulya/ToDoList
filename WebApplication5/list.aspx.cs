using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
            {
                Response.Redirect("help.aspx");
            }
            if (!Page.IsPostBack)
            { 
            Willdo_List();
            Doing_List();
            Done_List();
            }
        }
        protected void Go_Back_Click(object sender , EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }

        public void Willdo_List()
        {
            using(moyEntities db = new moyEntities()) 
            {
                int userid = Convert.ToInt32(Session["Id"]);
                List<Willdo> willdo = db.Willdoes.Where(a => a.UserId == userid).OrderBy(a => a.Willdo1).ToList();
                WilldoList.DataSource = willdo;
                WilldoList.DataTextField = "Willdo1";
                WilldoList.DataValueField = "Id";
                WilldoList.DataBind();
            }
        }
        public void Doing_List()
        {
            using (moyEntities db = new moyEntities())
            {
                int userid = Convert.ToInt32(Session["Id"]);
                List<Doing> doing = db.Doings.Where(a => a.UserId == userid).OrderBy(a => a.Doing1).ToList();
                DoingList.DataSource = doing;
                DoingList.DataTextField = "Doing1";
                DoingList.DataValueField = "Id";
                DoingList.DataBind();
            }
        }
        public void Done_List()
        {
            using (moyEntities db = new moyEntities())
            {
                int userid = Convert.ToInt32(Session["Id"]);
                List<Done> done = db.Dones.Where(a => a.UserId == userid).OrderBy(a => a.DONE1).ToList();
                DoneList.DataSource = done;
                DoneList.DataTextField = "Done1";
                DoneList.DataValueField = "Id";
                DoneList.DataBind();
            }
        }

        protected void Add_OnClick(object sender, EventArgs e)
        {
            using (moyEntities db = new moyEntities())
            {
                Willdo willdo = new Willdo();
                willdo.UserId = Session["Id"].GetHashCode();
                willdo.Willdo1 = txtwilldo.Text;
                db.Willdoes.Add(willdo);
                db.SaveChanges();
            }
            txtwilldo.Text = "";
            Willdo_List();
            Response.Redirect("list.aspx");

        }

        protected void PassDoingList(object sender, EventArgs e)
        {
            using(moyEntities db = new moyEntities()) {
                int userid = Convert.ToInt32(Session["Id"]);
                Doing doing = new Doing();
                doing.Doing1=WilldoList.SelectedItem.Text;
                doing.UserId = Session["Id"].GetHashCode();
                db.Doings.Add(doing);
                db.SaveChanges();
                Willdo willdo = new Willdo();
                var remove = db.Willdoes.Where(a => a.UserId == userid && a.Willdo1 == WilldoList.SelectedItem.Text).FirstOrDefault();
                db.Willdoes.Remove(remove);
                db.SaveChanges();

            }
            Willdo_List();
            Doing_List();
            Response.Redirect("list.aspx");
        }
        protected void PassDoneList(object sender, EventArgs e)
        {
            using (moyEntities db = new moyEntities())
            {
                int userid = Convert.ToInt32(Session["Id"]);
                Done done = new Done();
                done.DONE1 = DoingList.SelectedItem.Text;
                done.UserId = Session["Id"].GetHashCode();
                db.Dones.Add(done);
                db.SaveChanges();
                Doing doing = new Doing();
                var remove = db.Doings.Where(a => a.UserId == userid && a.Doing1 == DoingList.SelectedItem.Text).FirstOrDefault();
                db.Doings.Remove(remove);
                db.SaveChanges();

            }
            Willdo_List();
            Doing_List();
            Done_List();
            Response.Redirect("list.aspx");
        }
        protected void Delete_Work(object sender, EventArgs e)
        {
            using (moyEntities db = new moyEntities())
            {
                int userid = Convert.ToInt32(Session["Id"]);
                var remove = db.Dones.Where(a => a.UserId == userid && a.DONE1 == DoneList.SelectedItem.Text).FirstOrDefault();
                db.Dones.Remove(remove);
                db.SaveChanges();
            }
            Done_List();
            Response.Redirect("list.aspx");
        }
        protected void Delete_Willdo_List (object sender , EventArgs e)
        {
            using (moyEntities db = new moyEntities())
            {
                int userid = Convert.ToInt32(Session["Id"]);
               var remove = db.Willdoes.Where(a => a.UserId == userid && a.Willdo1 == WilldoList.SelectedItem.Text).FirstOrDefault();
                db.Willdoes.Remove(remove);
                db.SaveChanges();
            }
            Willdo_List();
            Response.Redirect("list.aspx");
        }
        protected void AddDoing_OnClick(object sender , EventArgs e)
        {
            using (moyEntities db = new moyEntities())
            {
                Doing doing = new Doing();
                doing.UserId = Session["Id"].GetHashCode();
                doing.Doing1 = txtdoing.Text;
                db.Doings.Add(doing);
                db.SaveChanges();
            }
            txtdoing.Text = "";
            Doing_List();
            Response.Redirect("list.aspx");
        }
        protected void DeleteDoingList(object sender , EventArgs e)
        {
            using (moyEntities db = new moyEntities())
            {
                int userid = Convert.ToInt32(Session["Id"]);
                var remove = db.Doings.Where(a => a.UserId == userid && a.Doing1 == DoingList.SelectedItem.Text).FirstOrDefault();
                db.Doings.Remove(remove);
                db.SaveChanges();
            }
            Doing_List();
            Response.Redirect("list.aspx");
        }
        protected void PassWilldoList(object sender , EventArgs e)
        {
            using (moyEntities db = new moyEntities())
            {
                int userid = Convert.ToInt32(Session["Id"]);
                Willdo willdo = new Willdo();
                willdo.Willdo1 = DoingList.SelectedItem.Text;
                willdo.UserId = Session["Id"].GetHashCode();
                db.Willdoes.Add(willdo);
                db.SaveChanges();
                Doing doing = new Doing();
                var remove = db.Doings.Where(a => a.UserId == userid && a.Doing1 == DoingList.SelectedItem.Text).FirstOrDefault();
                db.Doings.Remove(remove);
                db.SaveChanges();

            }
            Willdo_List();
            Doing_List();
            Done_List();
            Response.Redirect("list.aspx");
        }
        protected void PassDoingListBack(object sender , EventArgs e)
        {
            using (moyEntities db = new moyEntities())
            {
                int userid = Convert.ToInt32(Session["Id"]);
                Doing doing = new Doing();
                doing.Doing1 = DoneList.SelectedItem.Text;
                doing.UserId = Session["Id"].GetHashCode();
                db.Doings.Add(doing);
                db.SaveChanges();
                Done done = new Done();
                var remove = db.Dones.Where(a => a.UserId == userid && a.DONE1 == DoneList.SelectedItem.Text).FirstOrDefault();
                db.Dones.Remove(remove);
                db.SaveChanges();

            }
            Willdo_List();
            Doing_List();
            Done_List();
            Response.Redirect("list.aspx");
        }
        protected void AddDoneList(object sender , EventArgs e)
        {
            using (moyEntities db = new moyEntities())
            {
                Done done = new Done();
                done.UserId = Session["Id"].GetHashCode();
                done.DONE1 = txtdone.Text;
                db.Dones.Add(done);
                db.SaveChanges();
            }
            txtdone.Text = "";
            Doing_List();
            Response.Redirect("list.aspx");
        }
    }
}