<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteEmployee.aspx.cs" Inherits="deleteEmployee" MasterPageFile="~/MasterPage.master" Theme="blue" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="form">
            <asp:Label ID="custIdLabel" CssClass="label" runat="server" Text="Employee:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" CssClass="textbox" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="surname" DataValueField="driver_id" Width="130px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="SELECT * FROM [Driver]"></asp:SqlDataSource>
            <asp:Button ID="Button1" CssClass="button" runat="server" Text="Delete Employee" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="confirmLabel" runat="server"></asp:Label>
            <br />
        </div>
    </div>
</asp:Content>
