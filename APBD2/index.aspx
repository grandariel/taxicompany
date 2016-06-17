<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" MasterPageFile="~/MasterPage.master" Theme="red" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="form">

            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="journey_id,driver_id,customer_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:TemplateField HeaderText="ID" SortExpression="journey_id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("journey_id") %>'></asp:Label>

                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("journey_id") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="ID is required" ForeColor="Red" ValidationGroup="form1">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1" CssClass="validator3" ErrorMessage="ID must be a number" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="form1">*</asp:RegularExpressionValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("journey_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Driver" SortExpression="surname">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="surname" DataValueField="driver_id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="SELECT [driver_id], [surname] FROM [Driver]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="surname" DataValueField="driver_id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="SELECT [driver_id], [surname] FROM [Driver]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("surname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Customer" SortExpression="surname1">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="surname" DataValueField="customer_id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="SELECT [customer_id], [surname] FROM [Customer]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="surname" DataValueField="customer_id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" SelectCommand="SELECT [customer_id], [surname] FROM [Customer]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("surname1") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                    <asp:TemplateField HeaderText="Date" SortExpression="date">
                        <EditItemTemplate>
                            <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("date") %>' VisibleDate='<%# Bind("date") %>' BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </InsertItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("date", "{0:MM/dd/yyyy}") %>'></asp:Label>                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cost" SortExpression="cost">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cost") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Cost is required" ForeColor="Red" ValidationGroup="form1">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Cost must be a number" ForeColor="Red" ValidationExpression="[0-9]+(\,[0-9][0-9]?)?" ValidationGroup="form1">*</asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("cost") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Cost is required" ForeColor="Red" ValidationGroup="form1">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" CssClass="validator3" ErrorMessage="Cost must be a number" ForeColor="Red" ValidationExpression="[0-9]+(\,[0-9][0-9]?)?" ValidationGroup="form1">*</asp:RegularExpressionValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("cost") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ValidationGroup="form1" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="There were some errors:" ValidationGroup="form1" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" DeleteCommand="DELETE FROM [Journey] WHERE [journey_id] = @journey_id" InsertCommand="INSERT INTO [Journey] ([journey_id], [driver], [customer], [address], [date], [cost]) VALUES (@journey_id, @driver, @customer, @address, @date, @cost)" SelectCommand="select_journey" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [Journey] SET [driver] = @driver, [customer] = @customer, [address] = @address, [date] = @date, [cost] = @cost WHERE [journey_id] = @journey_id">
                <DeleteParameters>
                    <asp:Parameter Name="journey_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="journey_id" Type="Int32" />
                    <asp:ControlParameter ControlID="DetailsView1$DropDownList3" Name="Driver" PropertyName="SelectedValue"
                        Type="Int32" />
                    <asp:ControlParameter ControlID="DetailsView1$DropDownList4" Name="Customer" PropertyName="SelectedValue"
                        Type="Int32" />
                    <asp:ControlParameter ControlID="DetailsView1$Calendar2" Name="date" PropertyName="SelectedDate"
                        Type="DateTime" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="cost" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="DetailsView1$DropDownList1" Name="Driver" PropertyName="SelectedValue"
                        Type="Int32" />
                    <asp:ControlParameter ControlID="DetailsView1$DropDownList2" Name="Customer" PropertyName="SelectedValue"
                        Type="Int32" />
                    <asp:ControlParameter ControlID="DetailsView1$Calendar1" Name="date" PropertyName="SelectedDate"
                        Type="DateTime" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="cost" Type="Decimal" />
                    <asp:Parameter Name="journey_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>