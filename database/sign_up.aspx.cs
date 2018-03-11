using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    OleDbConnection connect = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=libDB;Password=123456;Unicode=True"); //oldb connection oracle database

    protected void Page_Load(object sender, EventArgs e) //if admin sign up, register button visible and can be register admin and member to database
    {                                                    //if member sign up, register button unvisible.
        object user = Session["LogInName"];
        if (user != null)
        { 
            object type = Session["LogInType"];
            if (type != null && type.ToString() == "member")
            {
                Label8.Visible = false;
                Button3.Visible = false;
            }
            else if (type != null && type.ToString() == "librarian")
            {
                Label8.Visible = true;
                Button3.Visible = true;
            }
        }
        else if (user == null)
        {
            Label8.Visible = false;
            Button3.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e) //when click to sign up button.
    {
        connect.Open();
        try
        {
            OleDbCommand cmd = new OleDbCommand("Insert INTO member_table ( member_name,member_surname,member_username,member_password,	member_email,member_phone,member_adress) Values('" +
                TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", connect);
            
            cmd.ExecuteNonQuery();
            
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }catch(Exception ex)
        {

        }



        connect.Close();
    }
    protected void Button3_Click(object sender, EventArgs e) //if click to click button, will redirect to librarian sign up page.
    {
        Response.Redirect("librarian_signup.aspx");
    }
}