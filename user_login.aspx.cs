using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_login : System.Web.UI.Page
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
            string checkPwd = "select password from vehicle_owner where vehicle_id = '" + vehicleNo.Text + "'";
            SqlCommand cmd = new SqlCommand(checkPwd, con);
            string pass = cmd.ExecuteScalar().ToString().Replace(" ", "");
            if (pass == pwd.Text)
            {
                Response.Redirect("report_accident.aspx");
            }
            else
            {
                Label1.Text = "incorrect vehicle ID or password";
                Label1.Visible = true;
            }
        }catch(Exception ex)
        {
            Label1.Text = "incorrect vehicle ID or password";
            Label1.Visible = true;
        }

    }
}