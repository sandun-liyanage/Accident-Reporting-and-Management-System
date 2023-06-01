using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class officer_homePage : System.Web.UI.Page
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

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update accident set approved='approved' where accidentID='"+accidentID.Text+"' ";
            cmd.ExecuteNonQuery();
            con.Close();

            accidentID.Text = "";

            Response.Write("data updated successfully");

        }
        catch (Exception ex)
        {
            Response.Write("error... could not update data");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AccidentDatabase.mdf;Integrated Security=True");
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update accident set approved='rejected' where accidentID='" + accidentID.Text + "' ";
            cmd.ExecuteNonQuery();
            con.Close();

            accidentID.Text = "";

            Response.Write("data updated successfully");

        }
        catch (Exception ex)
        {
            Response.Write("error... could not update data");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AccidentDatabase.mdf;Integrated Security=True");
            con.Open();
            string checkPwd = "select password from officer where officerID = '" + policeID.Text + "' and department='police' ";
            SqlCommand cmd = new SqlCommand(checkPwd, con);
            string pass = cmd.ExecuteScalar().ToString().Replace(" ", "");
            if (pass == pwd.Text)
            {
                Response.Redirect("statistics.aspx");
            }
            else
            {
                Response.Write("incorrenct police ID or password");
            }
        }
        catch (Exception ex)
        {
            Response.Write("incorrenct police ID or password");
        }
    }
}