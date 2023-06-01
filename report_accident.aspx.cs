using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class report_accident : System.Web.UI.Page
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
            cmd.CommandText = "insert into accident values('"+vehicleNumber.Text+ "', '"+accidentID.Text+ "', '"+date.Text+ "','"+time.Text+ "','"+place.Text+ "','"+Select1.Items[Select1.SelectedIndex].Text+"')";
            cmd.ExecuteNonQuery();

            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("accident_images/" + filename));

            SqlCommand cmd1 = new SqlCommand("insert into accident_image values('"+accidentID.Text+"','"+filename+"',@path)",con);
            cmd1.Parameters.AddWithValue("path", "accident_images/" + filename);
            cmd1.ExecuteNonQuery();

            string filename2 = Path.GetFileName(FileUpload2.PostedFile.FileName);
            FileUpload2.SaveAs(Server.MapPath("accident_images/" + filename2));

            SqlCommand cmd2 = new SqlCommand("insert into accident_image values('" + accidentID.Text + "','" + filename2 + "',@path)", con);
            cmd2.Parameters.AddWithValue("path", "accident_images/" + filename2);
            cmd2.ExecuteNonQuery();

            string filename3 = Path.GetFileName(FileUpload3.PostedFile.FileName);
            FileUpload3.SaveAs(Server.MapPath("accident_images/" + filename3));

            SqlCommand cmd3 = new SqlCommand("insert into accident_image values('" + accidentID.Text + "','" + filename3 + "',@path)", con);
            cmd3.Parameters.AddWithValue("path", "accident_images/" + filename3);
            cmd3.ExecuteNonQuery();

            string filename4 = Path.GetFileName(FileUpload4.PostedFile.FileName);
            FileUpload4.SaveAs(Server.MapPath("accident_images/" + filename4));

            SqlCommand cmd4 = new SqlCommand("insert into accident_image values('" + accidentID.Text + "','" + filename4 + "',@path)", con);
            cmd4.Parameters.AddWithValue("path", "accident_images/" + filename4);
            cmd4.ExecuteNonQuery();

            string filename5 = Path.GetFileName(FileUpload5.PostedFile.FileName);
            FileUpload5.SaveAs(Server.MapPath("accident_images/" + filename5));

            SqlCommand cmd5 = new SqlCommand("insert into accident_image values('" + accidentID.Text + "','" + filename5 + "',@path)", con);
            cmd5.Parameters.AddWithValue("path", "accident_images/" + filename5);
            cmd5.ExecuteNonQuery();

            con.Close();

            vehicleNumber.Text = "";
            accidentID.Text = "";
            date.Text = "";
            time.Text = "";
            place.Text = "";
            Select1.SelectedIndex = 1;

            Label1.Text = "data inserted successfully";
            Label1.Visible = true;

        }
        catch(Exception ex)
        {
            Label1.Text = "there was an error performing your request. please try again";
            Label1.Visible = true;
            
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
            cmd.CommandText = "update accident set vehicleID='" + vehicleNumber.Text + "', accidentID='" + accidentID.Text + "', date = '" + date.Text + "', time = '" + time.Text + "', place = '" + place.Text + "', cause = '" + Select1.Items[Select1.SelectedIndex].Text + "' where accidentID='" + accidentID.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();

            vehicleNumber.Text = "";
            accidentID.Text = "";
            date.Text = "";
            time.Text = "";
            place.Text = "";
            Select1.SelectedIndex = 1;

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
            cmd.CommandText = "delete from accident where accidentID='" + accidentIDdelete.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();

            accidentIDdelete.Text = "";

            Response.Write("data deleted successfully");

        }
        catch (Exception ex)
        {
            Response.Write("error... could not delete data");
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AccidentDatabase.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from accident";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
}