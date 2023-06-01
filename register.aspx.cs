using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
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
            cmd.CommandText = "insert into vehicle_owner values('"+vehicleNumber.Text+ "','"+ownerName.Text+ "','"+houseNo.Text+ "','"+street.Text+ "','"+city.Text+ "','"+phone.Text+ "','"+pwd.Text+"')";
            cmd.ExecuteNonQuery();
            con.Close();

            vehicleNumber.Text = "";
            ownerName.Text = "";
            houseNo.Text = "";
            street.Text = "";
            city.Text = "";
            phone.Text = "";
            pwd.Text = "";

            Label2.Text = "data entered successfully";
            Label2.Visible = true;
        }
        catch(Exception ex)
        {
            Label2.Text = "error! could not perform the action. try again";
            Label2.Visible = true;
        }
    }
}