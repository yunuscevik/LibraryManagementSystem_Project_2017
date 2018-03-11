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
    OleDbConnection connect = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=libDB;Password=123456;Unicode=True"); //oldb connection to oracle database
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e) //when click to librarian sign up button
    {
        connect.Open();
        try
        {
            OleDbCommand cmd = new OleDbCommand("Insert INTO librarian_table ( librarian_name, librarian_surname, librarian_username,librarian_password,librarian_email,librarian_phone, librarian_adress) Values('" +
    TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", connect);
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            
        }
        catch(Exception ex)
        {
        
        }
        connect.Close();
    }
}