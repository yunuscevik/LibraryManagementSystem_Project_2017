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
    OleDbConnection connect = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=libDB;Password=123456;Unicode=True"); //connection to oracle database

    protected void Page_Load(object sender, EventArgs e) //when page load datagridview will set by books that saved in library database.
    {
        connect.Open();
        OleDbDataAdapter oda = new OleDbDataAdapter("Select DISTINCT * from book_table", connect);
        DataTable dt = new DataTable();
        oda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        connect.Close();
        Label3.Text = "";
        Label3.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e) //when click the scan button
    {    
            connect.Open();
            try //this code block will search by book name or book id in library database. 
            {
                OleDbDataAdapter oda = new OleDbDataAdapter("Select * from book_table where book_id='" + TextBox1.Text + "'", connect);
                DataTable dt = new DataTable();
                oda.Fill(dt);
                GridView1.DataSource = dt;
                TextBox1.Text = "";
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataBind();
                    Label3.Text = "";
                    Label3.Visible = false;
                }
                else //if not found error message will occur.
                {
                    Label3.Text = "There is no book with such a book id!";
                    Label3.Visible = true;
                }
            }catch(Exception ex)
            {
                OleDbDataAdapter oda = new OleDbDataAdapter("Select * from book_table where book_name='" + TextBox1.Text + "'", connect);
                DataTable dt = new DataTable();
                oda.Fill(dt);
                GridView1.DataSource = dt;
                TextBox1.Text = "";

                if (dt.Rows.Count > 0)
                {
                    GridView1.DataBind();
                    Label3.Text = "";
                    Label3.Visible = false;
                }
                else //if not found error message will occur.
                {
                    Label3.Text = "There is no book with such a book name!";
                    Label3.Visible = true;
                }
            }   
            connect.Close();
    }
}
