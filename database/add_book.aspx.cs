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
    OleDbConnection connect = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=libDB;Password=123456;Unicode=True"); //connection of oldb
    protected void Page_Load(object sender, EventArgs e)//when page is open, current table will show and error message label will visible
    {
        connect.Open();
        currentGridview();
        connect.Close();
        Label9.Visible = false;
    }

    protected void currentGridview() //method for the show that all books in database
    {   
        OleDbDataAdapter oda = new OleDbDataAdapter("Select DISTINCT * from book_table", connect);    
        DataTable dt = new DataTable();
        oda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();  
    }
   
    protected void Button1_Click1(object sender, EventArgs e) //when save button click
    {
        try
        {
            if (TextBoxBookID.Text != "" || TextBox1.Text != "" || TextBox2.Text != "" || TextBox4.Text != "") //if not null areas is empty, there will be no action 
            {
                connect.Open();
                OleDbCommand command = new OleDbCommand("Insert INTO book_table ( book_id,book_name,book_author,book_author_birthdate,book_publish_name,book_publish_year,book_publish_adress) Values('" + 
                    TextBoxBookID.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", connect);

                command.ExecuteNonQuery();
                connect.Close();

                currentGridview();
                Label9.Visible = false;

                //All textboxes will reset to empty string
                TextBoxBookID.Text = "";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
            }
        }
        catch (Exception ex) //If there are irrelevant entrance, executeNonQuery will throw exception. So texboxes will to set empty and error message will occur on screen.
        {
            TextBoxBookID.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            currentGridview();
            Label9.Text = "Star areas have to filled and can't write anything except number to id,birthdate and year areas.";
            Label9.Visible = true;
        }        
    }

    protected void Button2_Click(object sender, EventArgs e) //when update button click
    {
        connect.Open();
        try //if all enterances relevant, book will updated.
        {
            OleDbCommand comm = new OleDbCommand("UPDATE book_table SET book_id = '" + Int32.Parse(TextBoxBookID.Text) + "',book_name='" + TextBox1.Text + "',book_author='" +
                          TextBox2.Text + "',book_author_birthdate='" + TextBox3.Text + "',book_publish_name='" + TextBox4.Text + "',book_publish_year='" + TextBox5.Text +
                          "',book_publish_adress='" + TextBox6.Text +  "' where book_id ='" + TextBoxBookID.Text + "'", connect);
            
       
            comm.ExecuteNonQuery();
            Label9.Text = "Book is successfully updated named " + TextBox1.Text + ".";
            Label9.Visible = true;
            TextBoxBookID.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }catch(Exception ex) //if anyone is irrelevent, error message will occur on screen.
        {

            Label9.Text = "Star areas have to filled and can't write anything except number to id,birthdate and year areas.";
            Label9.Visible = true;
        }
        
        connect.Close();
        
        TextBox7.Text = "";
        currentGridview(); //show again the current view of booktable
    }
    protected void Button4_Click(object sender, EventArgs e) //when search button click
    {
        connect.Open();
        try { //firstly code blok will try to search by book id
            OleDbDataAdapter oda = new OleDbDataAdapter("Select * from book_table where book_id='" + TextBox7.Text + "'", connect);
            DataTable dt = new DataTable();
            oda.Fill(dt);
            GridView1.DataSource = dt;
            
            if (dt.Rows.Count > 0) //if there is any result by book id, all texboxes will to set.
            {
                GridView1.DataBind();
                TextBoxBookID.Text = dt.Rows[0]["BOOK_ID"].ToString();
                TextBox1.Text = dt.Rows[0]["BOOK_NAME"].ToString();
                TextBox2.Text = dt.Rows[0]["BOOK_AUTHOR"].ToString();
                TextBox3.Text = dt.Rows[0]["BOOK_AUTHOR_BIRTHDATE"].ToString();
                TextBox4.Text = dt.Rows[0]["BOOK_PUBLISH_NAME"].ToString();
                TextBox5.Text = dt.Rows[0]["BOOK_PUBLISH_YEAR"].ToString();
                TextBox6.Text = dt.Rows[0]["BOOK_PUBLISH_ADRESS"].ToString();
                Label9.Visible = false;
                Label9.Text= "";
            }
            else //if there is not any resukt by book id, error message will occur on screen.
            {
                Label9.Text = "Book not found..";
                Label9.Visible = true;
            }        
        }
        catch(Exception ev) //if code blocks above throw a exception, will tried to search by book name.
        {
         
            OleDbDataAdapter oda = new OleDbDataAdapter("Select * from book_table where book_name='" + TextBox7.Text + "'", connect);
            DataTable dt = new DataTable();
            oda.Fill(dt);
            GridView1.DataSource = dt;

            if (dt.Rows.Count > 0) //if there is any result by book name, all texboxes will to set.
            {
                GridView1.DataBind();
                TextBoxBookID.Text = dt.Rows[0]["BOOK_ID"].ToString();
                TextBox1.Text = dt.Rows[0]["BOOK_NAME"].ToString();
                TextBox2.Text = dt.Rows[0]["BOOK_AUTHOR"].ToString();
                TextBox3.Text = dt.Rows[0]["BOOK_AUTHOR_BIRTHDATE"].ToString();
                TextBox4.Text = dt.Rows[0]["BOOK_PUBLISH_NAME"].ToString();
                TextBox5.Text = dt.Rows[0]["BOOK_PUBLISH_YEAR"].ToString();
                TextBox6.Text = dt.Rows[0]["BOOK_PUBLISH_ADRESS"].ToString();
                Label9.Visible = false;
                Label9.Text = "";
            }
            else //if there is not any resukt by book id, error message will occur on screen.
            {
                Label9.Text = "Book not found..";
                Label9.Visible = true;
            }     
        }
        connect.Close();

    }
    protected void Button3_Click(object sender, EventArgs e) //when delete button click
    {
        connect.Open();
        try  //delete by book name or book id
        {
            OleDbCommand cmd = new OleDbCommand("DELETE FROM book_table where book_id='" + TextBox7.Text + "'", connect);
            cmd.ExecuteNonQuery();
            currentGridview();
            Label9.Text = "Book deleted successfully..";
            Label9.Visible = true;
        }
        catch (Exception ex)
        {
            OleDbCommand cmd = new OleDbCommand("DELETE FROM book_table where book_name='" + TextBox7.Text + "'", connect);
            cmd.ExecuteNonQuery();
            currentGridview();
            Label9.Text = "Book deleted successfully..";
            Label9.Visible = true;
        }
        connect.Close();

        TextBoxBookID.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
    }
}