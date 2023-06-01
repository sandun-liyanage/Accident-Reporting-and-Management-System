using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class officer_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AccidentDatabase.mdf;Integrated Security=True");
            con.Open();
            string checkPwd = "select password from officer where officerID = '" + officerID.Text + "'";
            SqlCommand cmd = new SqlCommand(checkPwd, con);
            string pass = cmd.ExecuteScalar().ToString().Replace(" ", "");
            if (pass == password.Text)
            {
                Response.Redirect("officer_homePage.aspx");
            }
            else
            {
                Label1.Text = "incorrect officer ID or password";
                Label1.Visible = true;
            }
        }
        catch (Exception ex)
        {
            Label1.Text = "incorrect officer ID or password";
            Label1.Visible = true;
        }
    }
}