<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addCustomer.aspx.cs" Inherits="addCustomer" MasterPageFile="~/MasterPage.master" Theme="blue"%>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="form">
            <asp:Label ID="custIdLabel" CssClass="label" runat="server" Text="ID:"></asp:Label><asp:TextBox ID="idTextBox" CssClass="textbox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="idTextBox" ErrorMessage="ID field is required" CssClass="validator" ForeColor="Red" ValidationGroup="form1">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="idTextBox"  CssClass="validator2" ErrorMessage="ID must be a number" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="form1">*</asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="customerNameLabel" CssClass="label" runat="server" Text="Name:"></asp:Label><asp:TextBox ID="nameTextBox" CssClass="textbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="nameTextBox" CssClass="validator" ErrorMessage="Name is required" ForeColor="Red" ValidationGroup="form1">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="nameTextBox" CssClass="validator2" ErrorMessage="Name must contain letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="form1">*</asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="customerSurnameLabel" CssClass="label" runat="server" Text="Surname:"></asp:Label><asp:TextBox ID="surnameTextBox" CssClass="textbox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="surnameTextBox" CssClass="validator" ErrorMessage="Surname is required" ForeColor="Red" ValidationGroup="form1">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="surnameTextBox" CssClass="validator2" ErrorMessage="Surname must contain letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="form1">*</asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="CustomerAddressLabel" CssClass="label" runat="server" Text="Address:"></asp:Label><asp:TextBox ID="addressTextBox" CssClass="textbox" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" CssClass="button" runat="server" OnClick="addCustomerButton_Click" Text="Add Customer" ValidationGroup="form1" />
            <br />
            <asp:Label ID="confirmLabel" runat="server"></asp:Label>
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="There were some errors:" ForeColor="Red" ValidationGroup="form1" />
            <br />
            <br />
        </div>
    </div>
</asp:Content>