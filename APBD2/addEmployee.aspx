<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addEmployee.aspx.cs" Inherits="addEmployee" MasterPageFile="~/MasterPage.master" Theme="red" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="form">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="ShortForm" runat="server">

                    <asp:Label ID="Label1" runat="server" CssClass="label" Text="ID:"></asp:Label>
                    <asp:TextBox ID="idTextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="idTextBox1" CssClass="validator" ErrorMessage="ID is required" ForeColor="Red" ValidationGroup="form1">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="idTextBox1" CssClass="validator2" ErrorMessage="ID must be a number" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="form1">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label2" runat="server" CssClass="label" Text="Name:"></asp:Label>
                    <asp:TextBox ID="nameTextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="nameTextBox1" CssClass="validator" ErrorMessage="Name is required" ForeColor="Red" ValidationGroup="form1">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="nameTextBox1" CssClass="validator2" ErrorMessage="Name must contain letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="form1">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label3" runat="server" CssClass="label" Text="Surname:"></asp:Label>
                    <asp:TextBox ID="surnameTextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validator" runat="server" ControlToValidate="surnameTextBox1" ErrorMessage="Surname is required" ForeColor="Red" ValidationGroup="form1">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="surnameTextBox1" CssClass="validator2" ErrorMessage="Surname must contain letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="form1">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:Button ID="addButton1" runat="server" OnClick="addButton1_Click" Text="Add Employee" ValidationGroup="form1" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="More Info" CausesValidation="False" />
                    <br />
                    <asp:Label ID="confirmLabel1" runat="server"></asp:Label>

                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="There were some errors:" ValidationGroup="form1" />
                    <div style="clear:both"></div>
                </asp:View>
                <asp:View ID="LongForm" runat="server">

                    <asp:Label ID="Label4" runat="server" CssClass="label" Text="ID:"></asp:Label>
                    <asp:TextBox ID="idTextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="idTextBox2" CssClass="validator" ErrorMessage="ID is required" ForeColor="Red" ValidationGroup="form2">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="idTextBox2" CssClass="validator2" ErrorMessage="ID must be a number" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="form2">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label5" runat="server" CssClass="label" Text="Name:"></asp:Label>
                    <asp:TextBox ID="nameTextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="nameTextBox2" CssClass="validator" ErrorMessage="Name is required" ForeColor="Red" ValidationGroup="form2">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="nameTextBox2" CssClass="validator2" ErrorMessage="Name must contain letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="form2">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label6" runat="server" CssClass="label" Text="Surname:"></asp:Label>
                    <asp:TextBox ID="surnameTextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="surnameTextBox2" CssClass="validator" ErrorMessage="Surname is required" ForeColor="Red" ValidationGroup="form2">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="surnameTextBox2" CssClass="validator2" ErrorMessage="Surname must contain letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="form2">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label7" runat="server" CssClass="label" Text="Birthday:"></asp:Label>
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
                    <asp:Label ID="Label8" runat="server" CssClass="label" Text="Salary:"></asp:Label>
                    <asp:TextBox ID="salaryTextBox" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="salaryTextBox" CssClass="validator" ErrorMessage="Salary must be a number" ForeColor="Red" ValidationExpression="[0-9]+(\,[0-9][0-9]?)?" ValidationGroup="form2">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label9" runat="server" CssClass="label" Text="Phone:"></asp:Label>
                    <asp:TextBox ID="phoneTextBox" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" CssClass="validator" runat="server" ControlToValidate="phoneTextBox" ErrorMessage="Insert valid phone number" ForeColor="Red" ValidationExpression="\d{9}" ValidationGroup="form2">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:Button ID="addButton2" runat="server" OnClick="addButton2_Click" Text="Add Employee" ValidationGroup="form2" />
                    <br />
                    <asp:Label ID="confirmLabel2" runat="server"></asp:Label>

                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" HeaderText="There were some errors:" ValidationGroup="form2" />

                </asp:View>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>
