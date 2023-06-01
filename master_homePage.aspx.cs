using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class master_homePage : System.Web.UI.Page
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
            cmd.CommandText = "insert into officer values('" + officerID.Text + "','" + officerName.Text + "','" + department.Text + "','" + password.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();

            officerID.Text = "";
            officerName.Text = "";
            department.Text = "";
            password.Text = "";

            Response.Write("data entered successfully");

        }
        catch(Exception ex)
        {
            Response.Write("error... could not enter data");
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
            cmd.CommandText = "update officer set name='"+officerName.Text+"', department='"+department.Text+"', password = '"+password.Text+"' where officerID='"+officerID.Text+"'";
            cmd.ExecuteNonQuery();
            con.Close();

            officerID.Text = "";
            officerName.Text = "";
            department.Text = "";
            password.Text = "";

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

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from officer where officerID='"+officerID.Text+"'";
            cmd.ExecuteNonQuery();
            con.Close();

            officerIDdel.Text = "";

            Response.Write("data deleted successfully");

        }
        catch (Exception ex)
        {
            Response.Write("error... could not delete data");
        }
    }
}