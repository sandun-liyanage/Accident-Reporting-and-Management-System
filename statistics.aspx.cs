using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class statistics : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\AccidentDatabase.mdf;Integrated Security=True"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select cause, count(accidentID) as 'totalAccidents' from accident group by cause", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            con.Close();
        }

        string[] x = new string[dt.Rows.Count];
        int[] y = new int[dt.Rows.Count];

        for(int i=0; i<dt.Rows.Count; i++)
        {
            x[i] = dt.Rows[i][0].ToString();
            y[i] = Convert.ToInt32(dt.Rows[i][1].ToString());
        }

        Chart1.Series[0].Points.DataBindXY(x, y);
    }

    protected void Chart1_Load(object sender, EventArgs e)
    {

    }
}