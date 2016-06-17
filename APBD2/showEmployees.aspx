<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showEmployees.aspx.cs" Inherits="showEmployees" MasterPageFile="~/MasterPage.master" Theme="blue" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="form">

            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="driver_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="201px" Width="289px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="driver_id" HeaderText="ID" ReadOnly="True" SortExpression="driver_id" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="surname" HeaderText="Surname" SortExpression="surname" />
                    <asp:BoundField DataField="birthday" HeaderText="Birthday" SortExpression="birthday" DataFormatString="{0:MM/dd/yyyy}" />
                    <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
                    <asp:BoundField DataField="phone_number" HeaderText="Phone Number" SortExpression="phone_number" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="select_employees" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

        </div>
    </div>
</asp:Content>