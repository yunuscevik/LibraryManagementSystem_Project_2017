using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    OleDbConnection connect = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=libDB;Password=123456;Unicode=True"); //oldb connection
    protected void Page_Load(object sender, EventArgs e)
    {
        object user = Session["LogInName"]; //when page load, all session will check and buttons will set properly
        object type = Session["LogInType"];
        if (user == null)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            CheckBox1.Visible = true;
            Label3.Visible = false;
            Button1.Visible = true;
            Button1.Text = "Sign In"; //exit button using sign in
        }
        else
        {
            Label3.Text = user.ToString();
            Label1.Visible = false;
            Label2.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            CheckBox1.Visible = false;
            Label3.Visible = true;
            Button1.Text = "Exit"; //sign in button using exit
            if (type != null && type.ToString() == "member")
                Button2.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e) //when click sign in & exit button
    {
        object user = Session["LogInName"];
        if (user != null) //if click to exit button, all sessions will delete 
        {
            Session.Clear();
            Response.Redirect("index.aspx");

        }
        if (CheckBox1.Checked == true) //for librarian sign in
        {
            string sql = "Select * From librarian_table WHERE librarian_username  ='" + TextBox1.Text + "' AND librarian_password  ='" + TextBox2.Text + "'";
            connect.Open();
            OleDbDataAdapter da = new OleDbDataAdapter(sql, connect);
            DataSet ds = new DataSet();

            da.Fill(ds, "librarian_table");
            try
            {
                if (ds.Tables["librarian_table"].Rows[0][2].ToString() != null && ds.Tables["librarian_table"].Rows[0][3].ToString() != null)
                {
                    Label3.Text = "WELCOME " + ds.Tables["librarian_table"].Rows[0][0].ToString() + " " + ds.Tables["librarian_table"].Rows[0][1].ToString();
                    //all sessions saving for using after
                    Session.Add("LogInName", Label3.Text);
                    Session.Add("LogInUserName", TextBox1.Text);
                    Session.Add("LogInType", "librarian");
                    Label1.Visible = false;
                    Label2.Visible = false;
                    TextBox1.Visible = false;
                    TextBox2.Visible = false;
                    CheckBox1.Visible = false;
                    Label3.Visible = true;
                }
            }
            catch (Exception ex)
            {
                if (ex.Message == "No rows at this location.")
                {

                    Label3.Text = "There is no such member! Please HAVE A MEMBER!";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    Label3.Visible = true;
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "WARNING!!!", "<script>alert('ERROR OCCURRED');</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
            }
            connect.Close();
        }

        else //for member sign in
        {
            string sql = "Select * From member_table WHERE member_username   ='" + TextBox1.Text + "' AND member_password   ='" + TextBox2.Text + "'";
            connect.Open();
            OleDbDataAdapter da = new OleDbDataAdapter(sql, connect);
            DataSet ds = new DataSet();

            da.Fill(ds, "member_table");
            try
            {
                if (ds.Tables["member_table"].Rows[0][2].ToString() != null && ds.Tables["member_table"].Rows[0][3].ToString() != null)
                {
                    Label3.Text = "WELCOME " + ds.Tables["member_table"].Rows[0][0].ToString() + " " + ds.Tables["member_table"].Rows[0][1].ToString();
                    //all sessions saving for using after
                    Session.Add("LogInName", Label3.Text);
                    Session.Add("LogInUserName", TextBox1.Text);
                    Session.Add("LogInType", "member");
                    Label1.Visible = false;
                    Label2.Visible = false;
                    TextBox1.Visible = false;
                    TextBox2.Visible = false;
                    CheckBox1.Visible = false;
                    Label3.Visible = true;
                }
            }
            catch (Exception ex)
            {
                if (ex.Message == "No rows at this location.")
                {

                    Label3.Text = "There is no such member! Please HAVE A MEMBER!";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "WARNING!!!", "<script>alert('ERROR OCCURRED');</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
            }
            connect.Close();
        }
        Response.Redirect("index.aspx");
    }


    protected void Button2_Click1(object sender, EventArgs e) //when click to sign up button.
    {
        Response.Redirect("sign_up.aspx");
    }

}
