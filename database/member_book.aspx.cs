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
    protected void Page_Load(object sender, EventArgs e) //when page load datagridview will show all books that exist in library now.
    {
      /*  connect.Open();

        OleDbDataAdapter oda = new OleDbDataAdapter("SELECT * FROM book_table WHERE NOT EXISTS (SELECT * FROM get_book WHERE get_book.getbook_id = book_table.book_id)", connect);
        DataTable dt = new DataTable();
        oda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        TextBox2.Text = "";

        connect.Close();*/
    }


    protected void Button3_Click(object sender, EventArgs e) //when click show button that located left of page datagridview will show all books that exist in library now.
    {
        connect.Open();
     
        OleDbDataAdapter oda = new OleDbDataAdapter("SELECT * FROM book_table WHERE NOT EXISTS (SELECT * FROM get_book WHERE get_book.getbook_id = book_table.book_id)",connect);
        DataTable dt = new DataTable();
        oda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        
        TextBox2.Text = "";

        connect.Close();
    }


    protected void Button1_Click2(object sender, EventArgs e) //when click get book button
    {
        connect.Open();

        OleDbDataAdapter oda = new OleDbDataAdapter("SELECT * FROM book_table WHERE NOT EXISTS (SELECT * FROM get_book WHERE get_book.getbook_id = book_table.book_id)", connect);
        DataTable dt = new DataTable();
        oda.Fill(dt);
        try { //if book has exist that by writted book id, book is added to get_book table.
            DataRow[] dr = dt.Select("BOOK_ID = '" + TextBox2.Text + "'");
            if (dr.Length > 0)
            {
                int bookid = Int32.Parse(dr[0]["BOOK_ID"].ToString());
                object type = Session["LogInUserName"];
                string username = type.ToString();


                OleDbCommand command = new OleDbCommand("Insert INTO GET_BOOK ( GETBOOK_USERNAME, GETBOOK_ID) Values('" + username + "','" + bookid + "')", connect);
                command.ExecuteNonQuery();
           

            }
            TextBox2.Text = "";

            OleDbDataAdapter oda2 = new OleDbDataAdapter("SELECT * FROM book_table WHERE NOT EXISTS (SELECT * FROM get_book WHERE get_book.getbook_id = book_table.book_id)", connect);
            DataTable dt2 = new DataTable();
            oda2.Fill(dt2);
            GridView1.DataSource = dt2;
            GridView1.DataBind();

            connect.Close();
        }
        catch(Exception ex)
        {
        
        }
        TextBox2.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e) //when click show button that located right of page
    {
        connect.Open();
        object type = Session["LogInUserName"]; //take login username from session
        string username = type.ToString();

        OleDbDataAdapter oda = new OleDbDataAdapter("Select * from book_table WHERE BOOK_ID IN (SELECT GETBOOK_ID from GET_BOOK WHERE GETBOOK_USERNAME='" + username + "')", connect);
        
        DataTable dt = new DataTable();
        oda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        connect.Close();
        TextBox5.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e) //when click the deliver book button
    {
        try
        {
            connect.Open();
            OleDbCommand cmd = new OleDbCommand("DELETE FROM GET_BOOK WHERE GETBOOK_ID='" + TextBox5.Text + "'", connect);
            cmd.ExecuteNonQuery();

            object type = Session["LogInUserName"];
            string username = type.ToString();

            //this code segment will show books by username equality
            OleDbDataAdapter oda = new OleDbDataAdapter("Select * from book_table WHERE BOOK_ID IN (SELECT GETBOOK_ID from GET_BOOK WHERE GETBOOK_USERNAME='" + username + "')", connect);

            DataTable dt = new DataTable();
            oda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            connect.Close();
        }catch(Exception ex)
        {
        
        }
       
        TextBox5.Text = "";
    }

}