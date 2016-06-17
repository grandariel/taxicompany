using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        confirmLabel.Text = "";
        refreshDropdownlist();
    }
    protected void Page_PreRenderComplete(object sender, EventArgs e)
    {
        refreshDropdownlist();
    }

    private void refreshDropdownlist()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CompanyConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "select_customer";
        System.Diagnostics.Debug.WriteLine("Selected value: " + DropDownList1.SelectedValue.GetType());
        cmd.Parameters.Add(new SqlParameter("@id", Int32.Parse(DropDownList1.SelectedValue)));
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        nameTextBox.Text = reader.GetString(0);
        surnameTextBox.Text = reader.GetString(1);
        addressTextBox.Text = reader.GetString(2);
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CompanyConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "edit_customer";
        System.Diagnostics.Debug.WriteLine("Selected value: " + DropDownList1.SelectedValue.GetType());
        cmd.Parameters.Add(new SqlParameter("@id", Int32.Parse(DropDownList1.SelectedValue)));
        cmd.Parameters.Add(new SqlParameter("@name", nameTextBox.Text));
        cmd.Parameters.Add(new SqlParameter("@surname", surnameTextBox.Text));
        cmd.Parameters.Add(new SqlParameter("@address", addressTextBox.Text));
        cmd.ExecuteReader();
        con.Close();
        confirmLabel.Text = "Information about " + DropDownList1.SelectedItem.Text + " has been changed.";
        DropDownList1.DataBind();
        nameTextBox.Text = "";
        surnameTextBox.Text = "";
        addressTextBox.Text = "";
    }
}