using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class deleteEmployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CompanyConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "delete_employee_long";
        cmd.Parameters.Add(new SqlParameter("@id", Int32.Parse(DropDownList1.SelectedValue)));
        cmd.ExecuteReader();
        con.Close();
        confirmLabel.Text = "Information about " + DropDownList1.SelectedItem.Text + " has been deleted.";
        DropDownList1.DataBind();
    }
}