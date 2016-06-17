using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addCustomerButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CompanyConnectionString"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "add_customer";
        cmd.Parameters.Add(new SqlParameter("@id", Int32.Parse(idTextBox.Text)));
        cmd.Parameters.Add(new SqlParameter("@name", nameTextBox.Text));
        cmd.Parameters.Add(new SqlParameter("@surname", surnameTextBox.Text));
        cmd.Parameters.Add(new SqlParameter("@address", addressTextBox.Text));
        try
        {
            cmd.ExecuteNonQuery();
            confirmLabel.Text = "Information about " + surnameTextBox.Text + " has been added";
        }
        catch(Exception exc)
        {
            System.Diagnostics.Debug.WriteLine(exc.Message);
            confirmLabel.Text = "Customer with id " + idTextBox.Text + " already exists";
        }
        con.Close();
    }
}