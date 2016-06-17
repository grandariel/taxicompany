<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editCustomer.aspx.cs" Inherits="editCustomer" MasterPageFile="~/MasterPage.master" Theme="blue" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="form">
            <asp:Label ID="custIdLabel" CssClass="label" runat="server" Text="Customer:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" CssClass="textbox" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="surname" DataValueField="customer_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="130px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="customerNameLabel" CssClass="label" runat="server" Text="Name:"></asp:Label><asp:TextBox ID="nameTextBox" CssClass="textbox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nameTextBox" CssClass="validator" ErrorMessage="Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="nameTextBox" CssClass="validator2" ErrorMessage="Name must contain letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$">*</asp:RegularExpressionValidator>
                    <br />
            <asp:Label ID="customerSurnameLabel" CssClass="label" runat="server" Text="Surname:"></asp:Label><asp:TextBox ID="surnameTextBox" CssClass="textbox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="surnameTextBox" CssClass="validator" ErrorMessage="Surname is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="surnameTextBox" CssClass="validator2" ErrorMessage="Surname must contain letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$">*</asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="CustomerAddressLabel" CssClass="label" runat="server" Text="Address:"></asp:Label><asp:TextBox ID="addressTextBox" CssClass="textbox" runat="server"></asp:TextBox>
            <br />
            <div style="clear: both;"></div>
            <asp:Button ID="Button1" CssClass="button" runat="server" Text="Edit Customer" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="confirmLabel" runat="server"></asp:Label>
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="There were some errors" />
            <br />
        </div>
    </div>
</asp:Content>