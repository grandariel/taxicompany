using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editEmployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_PreRenderComplete(object sender, EventArgs e)
    {
        if (!IsPostBack)
            refreshDropdownlist();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CompanyConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "edit_employee_long";
        cmd.Parameters.Add(new SqlParameter("@id", Int32.Parse(DropDownList1.SelectedValue)));
        cmd.Parameters.Add(new SqlParameter("@name", nameTextBox.Text));
        cmd.Parameters.Add(new SqlParameter("@surname", surnameTextBox.Text));
        cmd.Parameters.Add(new SqlParameter("@birthday", birthdayCalendar.SelectedDate));
        cmd.Parameters.Add(new SqlParameter("@salary", Double.Parse(salaryTextBox.Text)));
        cmd.Parameters.Add(new SqlParameter("@phone", phoneTextBox.Text));
        try
        {
            cmd.ExecuteReader();
            confirmLabel.Text = "Information about " + DropDownList1.SelectedItem.Text + " has been changed.";
            DropDownList1.DataBind();
            refreshDropdownlist();

        }
        catch (Exception exc)
        {
            System.Diagnostics.Debug.WriteLine(exc.Message);
        }
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        confirmLabel.Text = "";
        refreshDropdownlist();
    }

    private void refreshDropdownlist()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CompanyConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "select_employee_long";
       // if (DropDownList1.SelectedIndex != -1)
            cmd.Parameters.Add(new SqlParameter("@id", Int32.Parse(DropDownList1.SelectedValue)));
        //else
          //  cmd.Parameters.Add(new SqlParameter("@id", 1));
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        idTextBox.Text = "" + reader.GetInt32(0);
        nameTextBox.Text = reader.GetString(1);
        surnameTextBox.Text = reader.GetString(2);
        birthdayCalendar.SelectedDate = reader.GetDateTime(3);
        birthdayCalendar.VisibleDate = reader.GetDateTime(3);
        salaryTextBox.Text = "" + reader.GetDecimal(4);
        phoneTextBox.Text = reader.GetString(5);
        con.Close();
    }
}