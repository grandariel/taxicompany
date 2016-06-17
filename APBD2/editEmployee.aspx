<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editEmployee.aspx.cs" Inherits="editEmployee"  MasterPageFile="~/MasterPage.master" Theme="red"%>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="form">
            <asp:Label ID="custIdLabel" CssClass="label" runat="server" Text="Employee:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" CssClass="textbox" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="surname" DataValueField="driver_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="130px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="SELECT * FROM [Driver]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="CustomerAddressLabel" CssClass="label" runat="server" Text="ID:"></asp:Label><asp:TextBox ID="idTextBox" CssClass="textbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="idTextBox" CssClass="validator" ErrorMessage="ID is required" ForeColor="Red" ValidationGroup="form2">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="idTextBox" CssClass="validator2" ErrorMessage="ID must be a number" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="form2">*</asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="customerNameLabel" CssClass="label" runat="server" Text="Name:"></asp:Label><asp:TextBox ID="nameTextBox" CssClass="textbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="nameTextBox" CssClass="validator" ErrorMessage="Name is required" ForeColor="Red" ValidationGroup="form2">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="nameTextBox" CssClass="validator" ErrorMessage="Name must contain letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="form2">*</asp:RegularExpressionValidator>
                    <br />
            <asp:Label ID="customerSurnameLabel" CssClass="label" runat="server" Text="Surname:"></asp:Label><asp:TextBox ID="surnameTextBox" CssClass="textbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="surnameTextBox" CssClass="validator" ErrorMessage="Surname is required" ForeColor="Red" ValidationGroup="form2">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="surnameTextBox" CssClass="validator2" ErrorMessage="Surname must contain letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="form2">*</asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="customerBirthdayLabel" CssClass="label" runat="server" Text="Birthday:"></asp:Label>
                    <asp:Calendar ID="birthdayCalendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" SelectedDate="1970-01-01" VisibleDate="1970-01-01" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
            <br />
            <asp:Label ID="customerSalaryLabel" CssClass="label" runat="server" Text="Salary:"></asp:Label><asp:TextBox ID="salaryTextBox" CssClass="textbox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="salaryTextBox" CssClass="validator" ErrorMessage="Salary must be a number" ForeColor="Red" ValidationExpression="[0-9]+(\,[0-9][0-9]?)?" ValidationGroup="form2">*</asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="customerPhoneLabel" CssClass="label" runat="server" Text="Phone:"></asp:Label><asp:TextBox ID="phoneTextBox" CssClass="textbox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" CssClass="validator" runat="server" ControlToValidate="phoneTextBox" ErrorMessage="Insert valid phone number" ForeColor="Red" ValidationExpression="\d{9}" ValidationGroup="form2">*</asp:RegularExpressionValidator>
                    <br />
            <asp:Button ID="Button1" CssClass="button" runat="server" Text="Edit Employee" OnClick="Button1_Click" Height="26px" ValidationGroup="form2" />
            <br />
            <asp:Label ID="confirmLabel" runat="server"></asp:Label>
            <br />

                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" HeaderText="There were some errors:" ValidationGroup="form2" />

            <br />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .button {}
    </style>
</asp:Content>
