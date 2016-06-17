using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addEmployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            MultiView1.SetActiveView(ShortForm);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(LongForm);
        idTextBox2.Text = idTextBox1.Text;
        nameTextBox2.Text = nameTextBox1.Text;
        surnameTextBox2.Text = surnameTextBox1.Text;
    }
    protected void addButton1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CompanyConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "add_employee_long";
        cmd.Parameters.Add(new SqlParameter("@id", Int32.Parse(idTextBox1.Text)));
        cmd.Parameters.Add(new SqlParameter("@name", nameTextBox1.Text));
        cmd.Parameters.Add(new SqlParameter("@surname", surnameTextBox1.Text));
        cmd.Parameters.Add(new SqlParameter("@birthday", birthdayCalendar.SelectedDate));
        cmd.Parameters.Add(new SqlParameter("@salary", Double.Parse("0")));
        cmd.Parameters.Add(new SqlParameter("@phone", phoneTextBox.Text));
        try
        {
            cmd.ExecuteReader();
            confirmLabel1.Text = "Information about " + nameTextBox1.Text + " has been added";
        }
        catch (Exception exc)
        {
            System.Diagnostics.Debug.WriteLine(exc.Message);
            confirmLabel1.Text = "Employee with id " + idTextBox1.Text + " already exists";
        }
        con.Close();
    }
    protected void addButton2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CompanyConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "add_employee_long";
        cmd.Parameters.Add(new SqlParameter("@id", Int32.Parse(idTextBox2.Text)));
        cmd.Parameters.Add(new SqlParameter("@name", nameTextBox2.Text));
        cmd.Parameters.Add(new SqlParameter("@surname", surnameTextBox2.Text));
        cmd.Parameters.Add(new SqlParameter("@birthday", birthdayCalendar.SelectedDate));
        cmd.Parameters.Add(new SqlParameter("@salary", Double.Parse(salaryTextBox.Text)));
        cmd.Parameters.Add(new SqlParameter("@phone", phoneTextBox.Text));
        try
        {
            cmd.ExecuteReader();
            confirmLabel2.Text = "Information about " + surnameTextBox2.Text + " has been added";
        }
        catch (Exception exc)
        {
            System.Diagnostics.Debug.WriteLine(exc.Message);
            confirmLabel2.Text = "Employee with id " + idTextBox2.Text + " already exists";
        }
        con.Close();
    }
}