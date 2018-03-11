using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
/*
    this pages only for redirect. If member is sign in, members process will occur. Else if admin is sign in, admin process will occur.
 */
public partial class _Default : System.Web.UI.Page
{
    OleDbConnection connect = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=libDB;Password=123456;Unicode=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        object user = Session["LogInType"];
        string s= "librarian";
        if (user != null && user.ToString() == "librarian")
        {
            Response.Redirect("add_book.aspx");
        }
        else if (user != null && user.ToString() == "member")
        {
            Response.Redirect("member_book.aspx");
        }
    }

}