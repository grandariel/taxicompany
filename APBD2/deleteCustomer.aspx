<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteCustomer.aspx.cs" Inherits="showCustomers" MasterPageFile="~/MasterPage.master" Theme="red"%>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="form">
            <asp:Label ID="custIdLabel" CssClass="label" runat="server" Text="Customer:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" CssClass="textbox" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="surname" DataValueField="customer_id" Width="130px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="SELECT * FROM [Customer]" ProviderName="<%$ ConnectionStrings:CompanyConnectionString.ProviderName %>"></asp:SqlDataSource>
            <asp:Button ID="Button1" CssClass="button" runat="server" Text="Delete Customer" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="confirmLabel" runat="server"></asp:Label>
            <br />
        </div>
    </div>
</asp:Content>