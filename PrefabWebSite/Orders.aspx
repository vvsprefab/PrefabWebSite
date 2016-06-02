<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="PrefabWebSite.Quotes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxGridView ID="ASPxGridViewOrders" runat="server" AutoGenerateColumns="False" DataSourceID="dsOrdersOrders" EnableTheming="True" KeyFieldName="Order_ID" Theme="Glass">
        <SettingsPager PageSize="20">
        </SettingsPager>
        <SettingsEditing Mode="Batch">
            <BatchEditSettings StartEditAction="DblClick" />
        </SettingsEditing>
        <Settings ShowFooter="True" ShowHeaderFilterButton="True" ShowGroupPanel="True" />
        <SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True" />
        <SettingsSearchPanel Visible="True" />
        <Columns>
            <dx:GridViewCommandColumn ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="Order_ID" ReadOnly="True" VisibleIndex="1" Visible="False">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="OrderCreated" VisibleIndex="9" Caption="Ordre laget">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="Deadline_Date" VisibleIndex="10" Caption="Leveringsfrist">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="Shipped_Date" VisibleIndex="11" Caption="Sendt">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Ship_With" VisibleIndex="12" Visible="False">
            </dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="Ship_Name" VisibleIndex="13" Visible="False">
</dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="Ship_Address" VisibleIndex="14" Visible="False">
</dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="Ship_PostalCode" VisibleIndex="15" Visible="False">
</dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Ship_City" VisibleIndex="16" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Ship_Country" VisibleIndex="17" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Order_Price" VisibleIndex="24" Caption="Sum">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProdHours" VisibleIndex="28" Caption="ProdTimer (faktisk)">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Product" VisibleIndex="18" Caption="Produkt">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Quantity" VisibleIndex="19" Caption="Antall (Ordre)">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Kommentar" VisibleIndex="21" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Order_No" VisibleIndex="22" Caption="Ordre">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="StatusChanged" VisibleIndex="23" Visible="False">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="LastChange" VisibleIndex="31" Visible="False">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="PartPrice" VisibleIndex="30" Caption="Utgifter (faktisk)">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Utgifter (beregnet)" FieldName="Expr2" VisibleIndex="29">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Sum (tilbud)" FieldName="Quote_Price" VisibleIndex="25">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="ProdTimer (beregnet)" FieldName="Expr3" VisibleIndex="27">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Navn" FieldName="Name" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Expr4" ReadOnly="True" Visible="False" VisibleIndex="32">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Antall (tilbud)" FieldName="Expr5" VisibleIndex="20">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="ID" FieldName="Project_ID" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="dsOrdersProject" TextField="Project_ID" ValueField="Project_ID">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Status" FieldName="Order_Status_ID" VisibleIndex="26">
                <PropertiesComboBox DataSourceID="dsOrdersStatus" TextField="Status_Text" ValueField="Order_Status_ID">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Produksjon" FieldName="Employee_ID" VisibleIndex="8">
                <PropertiesComboBox DataSourceID="dsOrdersEmployee" TextField="Initials" ValueField="Employee_ID">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Kunde" FieldName="Customer_ID" VisibleIndex="5">
                <PropertiesComboBox DataSourceID="dsOrdersCustomers" TextField="Company_Name" ValueField="Customer_ID">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Teknisk" FieldName="Expr1" VisibleIndex="7">
                <PropertiesComboBox DataSourceID="dsOrdersEmployee" TextField="Initials" ValueField="Employee_ID">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Kontakt" FieldName="Contact_ID" VisibleIndex="6">
                <PropertiesComboBox DataSourceID="dsOrdersContacts" TextField="First_Name" ValueField="Contact_ID">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="TilbudsID" FieldName="Quote_ID" VisibleIndex="2">
                <PropertiesComboBox DataSourceID="dsOrdersQuotes" TextField="Quote_ID" ValueField="Quote_ID">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
        <TotalSummary>
            <dx:ASPxSummaryItem DisplayFormat="&lt;b&gt;{0:n}&lt;/b&gt;" FieldName="Quote_Price" SummaryType="Sum" />
            <dx:ASPxSummaryItem DisplayFormat="SUM utvalg" FieldName="Project_ID" SummaryType="Count" />
            <dx:ASPxSummaryItem DisplayFormat="&lt;b&gt;{0}&lt;/b&gt;" FieldName="Name" SummaryType="Count" />
        </TotalSummary>
        <Styles>
            <HeaderFilterItem>
                <Border BorderStyle="None" />
            </HeaderFilterItem>
            <SearchPanel>
                <Border BorderStyle="None" />
            </SearchPanel>
        </Styles>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="dsOrdersCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsOrdersContacts" runat="server" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" SelectCommand="SELECT * FROM [Contacts]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsOrdersQuotes" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" DeleteCommand="DELETE FROM [Quote] WHERE [Quote_ID] = @original_Quote_ID AND [Project_ID] = @original_Project_ID AND [Quote_No] = @original_Quote_No AND (([Sannsynlighet] = @original_Sannsynlighet) OR ([Sannsynlighet] IS NULL AND @original_Sannsynlighet IS NULL)) AND (([Customer_ID] = @original_Customer_ID) OR ([Customer_ID] IS NULL AND @original_Customer_ID IS NULL)) AND [Employee_ID] = @original_Employee_ID AND [Quote_Date] = @original_Quote_Date AND (([Quote_Price] = @original_Quote_Price) OR ([Quote_Price] IS NULL AND @original_Quote_Price IS NULL)) AND (([Product] = @original_Product) OR ([Product] IS NULL AND @original_Product IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([ProdHours] = @original_ProdHours) OR ([ProdHours] IS NULL AND @original_ProdHours IS NULL)) AND (([FollowUpDate] = @original_FollowUpDate) OR ([FollowUpDate] IS NULL AND @original_FollowUpDate IS NULL)) AND (([Anbud] = @original_Anbud) OR ([Anbud] IS NULL AND @original_Anbud IS NULL)) AND [Quote_Status_ID] = @original_Quote_Status_ID AND (([Sent_Date] = @original_Sent_Date) OR ([Sent_Date] IS NULL AND @original_Sent_Date IS NULL)) AND (([PartPrice] = @original_PartPrice) OR ([PartPrice] IS NULL AND @original_PartPrice IS NULL)) AND (([LastModification] = @original_LastModification) OR ([LastModification] IS NULL AND @original_LastModification IS NULL)) AND (([Contact_ID] = @original_Contact_ID) OR ([Contact_ID] IS NULL AND @original_Contact_ID IS NULL)) AND (([ShippingCost] = @original_ShippingCost) OR ([ShippingCost] IS NULL AND @original_ShippingCost IS NULL))" InsertCommand="INSERT INTO [Quote] ([Project_ID], [Quote_No], [Sannsynlighet], [Customer_ID], [Employee_ID], [Quote_Date], [Quote_Price], [Product], [Quantity], [ProdHours], [FollowUpDate], [Anbud], [Quote_Status_ID], [Sent_Date], [PartPrice], [LastModification], [Contact_ID], [ShippingCost]) VALUES (@Project_ID, @Quote_No, @Sannsynlighet, @Customer_ID, @Employee_ID, @Quote_Date, @Quote_Price, @Product, @Quantity, @ProdHours, @FollowUpDate, @Anbud, @Quote_Status_ID, @Sent_Date, @PartPrice, @LastModification, @Contact_ID, @ShippingCost)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT dbo.Quote.Quote_ID, dbo.Quote.Project_ID, dbo.Quote.Quote_No, dbo.Quote.Sannsynlighet, dbo.Quote.Customer_ID, dbo.Quote.Employee_ID, dbo.Quote.Quote_Date, dbo.Quote.Quote_Price, dbo.Quote.Product, dbo.Quote.Quantity, dbo.Quote.ProdHours, dbo.Quote.FollowUpDate, dbo.Quote.Anbud, dbo.Quote.Quote_Status_ID, dbo.Quote.Sent_Date, dbo.Quote.PartPrice, dbo.Quote.LastModification, dbo.Quote.Contact_ID, dbo.Quote.ShippingCost, dbo.Project.Name, dbo.Project.Employee_ID FROM dbo.Quote INNER JOIN dbo.Project ON dbo.Quote.Project_ID = dbo.Project.Project_ID ORDER BY dbo.Quote.Quote_No" UpdateCommand="UPDATE [Quote] SET [Project_ID] = @Project_ID, [Quote_No] = @Quote_No, [Sannsynlighet] = @Sannsynlighet, [Customer_ID] = @Customer_ID, [Employee_ID] = @Employee_ID, [Quote_Date] = @Quote_Date, [Quote_Price] = @Quote_Price, [Product] = @Product, [Quantity] = @Quantity, [ProdHours] = @ProdHours, [FollowUpDate] = @FollowUpDate, [Anbud] = @Anbud, [Quote_Status_ID] = @Quote_Status_ID, [Sent_Date] = @Sent_Date, [PartPrice] = @PartPrice, [LastModification] = @LastModification, [Contact_ID] = @Contact_ID, [ShippingCost] = @ShippingCost WHERE [Quote_ID] = @original_Quote_ID AND [Project_ID] = @original_Project_ID AND [Quote_No] = @original_Quote_No AND (([Sannsynlighet] = @original_Sannsynlighet) OR ([Sannsynlighet] IS NULL AND @original_Sannsynlighet IS NULL)) AND (([Customer_ID] = @original_Customer_ID) OR ([Customer_ID] IS NULL AND @original_Customer_ID IS NULL)) AND [Employee_ID] = @original_Employee_ID AND [Quote_Date] = @original_Quote_Date AND (([Quote_Price] = @original_Quote_Price) OR ([Quote_Price] IS NULL AND @original_Quote_Price IS NULL)) AND (([Product] = @original_Product) OR ([Product] IS NULL AND @original_Product IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([ProdHours] = @original_ProdHours) OR ([ProdHours] IS NULL AND @original_ProdHours IS NULL)) AND (([FollowUpDate] = @original_FollowUpDate) OR ([FollowUpDate] IS NULL AND @original_FollowUpDate IS NULL)) AND (([Anbud] = @original_Anbud) OR ([Anbud] IS NULL AND @original_Anbud IS NULL)) AND [Quote_Status_ID] = @original_Quote_Status_ID AND (([Sent_Date] = @original_Sent_Date) OR ([Sent_Date] IS NULL AND @original_Sent_Date IS NULL)) AND (([PartPrice] = @original_PartPrice) OR ([PartPrice] IS NULL AND @original_PartPrice IS NULL)) AND (([LastModification] = @original_LastModification) OR ([LastModification] IS NULL AND @original_LastModification IS NULL)) AND (([Contact_ID] = @original_Contact_ID) OR ([Contact_ID] IS NULL AND @original_Contact_ID IS NULL)) AND (([ShippingCost] = @original_ShippingCost) OR ([ShippingCost] IS NULL AND @original_ShippingCost IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Quote_ID" Type="Int32" />
            <asp:Parameter Name="original_Project_ID" Type="Int32" />
            <asp:Parameter Name="original_Quote_No" Type="Int32" />
            <asp:Parameter Name="original_Sannsynlighet" Type="Int32" />
            <asp:Parameter Name="original_Customer_ID" Type="Int32" />
            <asp:Parameter Name="original_Employee_ID" Type="Int32" />
            <asp:Parameter Name="original_Quote_Date" DbType="Date" />
            <asp:Parameter Name="original_Quote_Price" Type="Int32" />
            <asp:Parameter Name="original_Product" Type="Int32" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
            <asp:Parameter Name="original_ProdHours" Type="Decimal" />
            <asp:Parameter Name="original_FollowUpDate" DbType="Date" />
            <asp:Parameter Name="original_Anbud" Type="Boolean" />
            <asp:Parameter Name="original_Quote_Status_ID" Type="Int32" />
            <asp:Parameter Name="original_Sent_Date" DbType="Date" />
            <asp:Parameter Name="original_PartPrice" Type="Int32" />
            <asp:Parameter Name="original_LastModification" Type="DateTime" />
            <asp:Parameter Name="original_Contact_ID" Type="Int32" />
            <asp:Parameter Name="original_ShippingCost" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Project_ID" Type="Int32" />
            <asp:Parameter Name="Quote_No" Type="Int32" />
            <asp:Parameter Name="Sannsynlighet" Type="Int32" />
            <asp:Parameter Name="Customer_ID" Type="Int32" />
            <asp:Parameter Name="Employee_ID" Type="Int32" />
            <asp:Parameter Name="Quote_Date" DbType="Date" />
            <asp:Parameter Name="Quote_Price" Type="Int32" />
            <asp:Parameter Name="Product" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="ProdHours" Type="Decimal" />
            <asp:Parameter Name="FollowUpDate" DbType="Date" />
            <asp:Parameter Name="Anbud" Type="Boolean" />
            <asp:Parameter Name="Quote_Status_ID" Type="Int32" />
            <asp:Parameter Name="Sent_Date" DbType="Date" />
            <asp:Parameter Name="PartPrice" Type="Int32" />
            <asp:Parameter Name="LastModification" Type="DateTime" />
            <asp:Parameter Name="Contact_ID" Type="Int32" />
            <asp:Parameter Name="ShippingCost" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Project_ID" Type="Int32" />
            <asp:Parameter Name="Quote_No" Type="Int32" />
            <asp:Parameter Name="Sannsynlighet" Type="Int32" />
            <asp:Parameter Name="Customer_ID" Type="Int32" />
            <asp:Parameter Name="Employee_ID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Quote_Date" />
            <asp:Parameter Name="Quote_Price" Type="Int32" />
            <asp:Parameter Name="Product" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="ProdHours" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="FollowUpDate" />
            <asp:Parameter Name="Anbud" Type="Boolean" />
            <asp:Parameter Name="Quote_Status_ID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Sent_Date" />
            <asp:Parameter Name="PartPrice" Type="Int32" />
            <asp:Parameter Name="LastModification" Type="DateTime" />
            <asp:Parameter Name="Contact_ID" Type="Int32" />
            <asp:Parameter Name="ShippingCost" Type="Int32" />
            <asp:Parameter Name="original_Quote_ID" Type="Int32" />
            <asp:Parameter Name="original_Project_ID" Type="Int32" />
            <asp:Parameter Name="original_Quote_No" Type="Int32" />
            <asp:Parameter Name="original_Sannsynlighet" Type="Int32" />
            <asp:Parameter Name="original_Customer_ID" Type="Int32" />
            <asp:Parameter Name="original_Employee_ID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_Quote_Date" />
            <asp:Parameter Name="original_Quote_Price" Type="Int32" />
            <asp:Parameter Name="original_Product" Type="Int32" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
            <asp:Parameter Name="original_ProdHours" Type="Decimal" />
            <asp:Parameter Name="original_FollowUpDate" DbType="Date" />
            <asp:Parameter Name="original_Anbud" Type="Boolean" />
            <asp:Parameter Name="original_Quote_Status_ID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_Sent_Date" />
            <asp:Parameter Name="original_PartPrice" Type="Int32" />
            <asp:Parameter Name="original_LastModification" Type="DateTime" />
            <asp:Parameter Name="original_Contact_ID" Type="Int32" />
            <asp:Parameter Name="original_ShippingCost" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsOrdersProducts" runat="server" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsOrdersStatus" runat="server" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" SelectCommand="SELECT * FROM [Order_Status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsOrdersEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsOrdersOrders" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [Order_ID] = @original_Order_ID AND [Project_ID] = @original_Project_ID AND [Order_Status_ID] = @original_Order_Status_ID AND [Employee_ID] = @original_Employee_ID AND (([OrderCreated] = @original_OrderCreated) OR ([OrderCreated] IS NULL AND @original_OrderCreated IS NULL)) AND (([Deadline_Date] = @original_Deadline_Date) OR ([Deadline_Date] IS NULL AND @original_Deadline_Date IS NULL)) AND (([Shipped_Date] = @original_Shipped_Date) OR ([Shipped_Date] IS NULL AND @original_Shipped_Date IS NULL)) AND (([Ship_With] = @original_Ship_With) OR ([Ship_With] IS NULL AND @original_Ship_With IS NULL)) AND (([Ship_Name] = @original_Ship_Name) OR ([Ship_Name] IS NULL AND @original_Ship_Name IS NULL)) AND (([Ship_Address] = @original_Ship_Address) OR ([Ship_Address] IS NULL AND @original_Ship_Address IS NULL)) AND (([Ship_PostalCode] = @original_Ship_PostalCode) OR ([Ship_PostalCode] IS NULL AND @original_Ship_PostalCode IS NULL)) AND (([Ship_City] = @original_Ship_City) OR ([Ship_City] IS NULL AND @original_Ship_City IS NULL)) AND (([Ship_Country] = @original_Ship_Country) OR ([Ship_Country] IS NULL AND @original_Ship_Country IS NULL)) AND (([Quote_ID] = @original_Quote_ID) OR ([Quote_ID] IS NULL AND @original_Quote_ID IS NULL)) AND (([Order_Price] = @original_Order_Price) OR ([Order_Price] IS NULL AND @original_Order_Price IS NULL)) AND (([ProdHours] = @original_ProdHours) OR ([ProdHours] IS NULL AND @original_ProdHours IS NULL)) AND (([Product] = @original_Product) OR ([Product] IS NULL AND @original_Product IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Kommentar] = @original_Kommentar) OR ([Kommentar] IS NULL AND @original_Kommentar IS NULL)) AND (([Order_No] = @original_Order_No) OR ([Order_No] IS NULL AND @original_Order_No IS NULL)) AND (([StatusChanged] = @original_StatusChanged) OR ([StatusChanged] IS NULL AND @original_StatusChanged IS NULL)) AND (([LastChange] = @original_LastChange) OR ([LastChange] IS NULL AND @original_LastChange IS NULL)) AND (([PartPrice] = @original_PartPrice) OR ([PartPrice] IS NULL AND @original_PartPrice IS NULL))" InsertCommand="INSERT INTO [Order] ([Project_ID], [Order_Status_ID], [Employee_ID], [OrderCreated], [Deadline_Date], [Shipped_Date], [Ship_With], [Ship_Name], [Ship_Address], [Ship_PostalCode], [Ship_City], [Ship_Country], [Quote_ID], [Order_Price], [ProdHours], [Product], [Quantity], [Kommentar], [Order_No], [StatusChanged], [LastChange], [PartPrice]) VALUES (@Project_ID, @Order_Status_ID, @Employee_ID, @OrderCreated, @Deadline_Date, @Shipped_Date, @Ship_With, @Ship_Name, @Ship_Address, @Ship_PostalCode, @Ship_City, @Ship_Country, @Quote_ID, @Order_Price, @ProdHours, @Product, @Quantity, @Kommentar, @Order_No, @StatusChanged, @LastChange, @PartPrice)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT dbo.[Order].Order_ID, dbo.[Order].Project_ID, dbo.[Order].Order_Status_ID, dbo.[Order].Employee_ID, dbo.[Order].OrderCreated, dbo.[Order].Deadline_Date, dbo.[Order].Shipped_Date, dbo.[Order].Ship_With, dbo.[Order].Ship_Name, dbo.[Order].Ship_Address, dbo.[Order].Ship_PostalCode, dbo.[Order].Ship_City, dbo.[Order].Ship_Country, dbo.[Order].Quote_ID, dbo.[Order].Order_Price, dbo.[Order].ProdHours, dbo.[Order].Product, dbo.[Order].Quantity, dbo.[Order].Kommentar, dbo.[Order].Order_No, dbo.[Order].StatusChanged, dbo.[Order].LastChange, dbo.[Order].PartPrice, dbo.Project.Employee_ID AS Expr1, dbo.Quote.PartPrice AS Expr2, dbo.Quote.Quote_Price, dbo.Quote.ProdHours AS Expr3, dbo.Project.Name, dbo.Quote.Quote_ID AS Expr4, dbo.Quote.Quantity AS Expr5, dbo.Quote.Contact_ID, dbo.Quote.Customer_ID FROM dbo.[Order] INNER JOIN dbo.Project ON dbo.[Order].Project_ID = dbo.Project.Project_ID INNER JOIN dbo.Quote ON dbo.[Order].Quote_ID = dbo.Quote.Quote_ID AND dbo.Project.Project_ID = dbo.Quote.Project_ID" UpdateCommand="UPDATE [Order] SET [Project_ID] = @Project_ID, [Order_Status_ID] = @Order_Status_ID, [Employee_ID] = @Employee_ID, [OrderCreated] = @OrderCreated, [Deadline_Date] = @Deadline_Date, [Shipped_Date] = @Shipped_Date, [Ship_With] = @Ship_With, [Ship_Name] = @Ship_Name, [Ship_Address] = @Ship_Address, [Ship_PostalCode] = @Ship_PostalCode, [Ship_City] = @Ship_City, [Ship_Country] = @Ship_Country, [Quote_ID] = @Quote_ID, [Order_Price] = @Order_Price, [ProdHours] = @ProdHours, [Product] = @Product, [Quantity] = @Quantity, [Kommentar] = @Kommentar, [Order_No] = @Order_No, [StatusChanged] = @StatusChanged, [LastChange] = @LastChange, [PartPrice] = @PartPrice WHERE [Order_ID] = @original_Order_ID AND [Project_ID] = @original_Project_ID AND [Order_Status_ID] = @original_Order_Status_ID AND [Employee_ID] = @original_Employee_ID AND (([OrderCreated] = @original_OrderCreated) OR ([OrderCreated] IS NULL AND @original_OrderCreated IS NULL)) AND (([Deadline_Date] = @original_Deadline_Date) OR ([Deadline_Date] IS NULL AND @original_Deadline_Date IS NULL)) AND (([Shipped_Date] = @original_Shipped_Date) OR ([Shipped_Date] IS NULL AND @original_Shipped_Date IS NULL)) AND (([Ship_With] = @original_Ship_With) OR ([Ship_With] IS NULL AND @original_Ship_With IS NULL)) AND (([Ship_Name] = @original_Ship_Name) OR ([Ship_Name] IS NULL AND @original_Ship_Name IS NULL)) AND (([Ship_Address] = @original_Ship_Address) OR ([Ship_Address] IS NULL AND @original_Ship_Address IS NULL)) AND (([Ship_PostalCode] = @original_Ship_PostalCode) OR ([Ship_PostalCode] IS NULL AND @original_Ship_PostalCode IS NULL)) AND (([Ship_City] = @original_Ship_City) OR ([Ship_City] IS NULL AND @original_Ship_City IS NULL)) AND (([Ship_Country] = @original_Ship_Country) OR ([Ship_Country] IS NULL AND @original_Ship_Country IS NULL)) AND (([Quote_ID] = @original_Quote_ID) OR ([Quote_ID] IS NULL AND @original_Quote_ID IS NULL)) AND (([Order_Price] = @original_Order_Price) OR ([Order_Price] IS NULL AND @original_Order_Price IS NULL)) AND (([ProdHours] = @original_ProdHours) OR ([ProdHours] IS NULL AND @original_ProdHours IS NULL)) AND (([Product] = @original_Product) OR ([Product] IS NULL AND @original_Product IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Kommentar] = @original_Kommentar) OR ([Kommentar] IS NULL AND @original_Kommentar IS NULL)) AND (([Order_No] = @original_Order_No) OR ([Order_No] IS NULL AND @original_Order_No IS NULL)) AND (([StatusChanged] = @original_StatusChanged) OR ([StatusChanged] IS NULL AND @original_StatusChanged IS NULL)) AND (([LastChange] = @original_LastChange) OR ([LastChange] IS NULL AND @original_LastChange IS NULL)) AND (([PartPrice] = @original_PartPrice) OR ([PartPrice] IS NULL AND @original_PartPrice IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Order_ID" Type="Int32" />
            <asp:Parameter Name="original_Project_ID" Type="Int32" />
            <asp:Parameter Name="original_Order_Status_ID" Type="Int32" />
            <asp:Parameter Name="original_Employee_ID" Type="Int32" />
            <asp:Parameter Name="original_OrderCreated" Type="DateTime" />
            <asp:Parameter DbType="Date" Name="original_Deadline_Date" />
            <asp:Parameter DbType="Date" Name="original_Shipped_Date" />
            <asp:Parameter Name="original_Ship_With" Type="String" />
            <asp:Parameter Name="original_Ship_Name" Type="String" />
            <asp:Parameter Name="original_Ship_Address" Type="String" />
            <asp:Parameter Name="original_Ship_PostalCode" Type="String" />
            <asp:Parameter Name="original_Ship_City" Type="String" />
            <asp:Parameter Name="original_Ship_Country" Type="String" />
            <asp:Parameter Name="original_Quote_ID" Type="Int32" />
            <asp:Parameter Name="original_Order_Price" Type="Int32" />
            <asp:Parameter Name="original_ProdHours" Type="Decimal" />
            <asp:Parameter Name="original_Product" Type="Int32" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
            <asp:Parameter Name="original_Kommentar" Type="String" />
            <asp:Parameter Name="original_Order_No" Type="Int32" />
            <asp:Parameter Name="original_StatusChanged" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="original_LastChange" />
            <asp:Parameter Name="original_PartPrice" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Project_ID" Type="Int32" />
            <asp:Parameter Name="Order_Status_ID" Type="Int32" />
            <asp:Parameter Name="Employee_ID" Type="Int32" />
            <asp:Parameter Name="OrderCreated" Type="DateTime" />
            <asp:Parameter DbType="Date" Name="Deadline_Date" />
            <asp:Parameter DbType="Date" Name="Shipped_Date" />
            <asp:Parameter Name="Ship_With" Type="String" />
            <asp:Parameter Name="Ship_Name" Type="String" />
            <asp:Parameter Name="Ship_Address" Type="String" />
            <asp:Parameter Name="Ship_PostalCode" Type="String" />
            <asp:Parameter Name="Ship_City" Type="String" />
            <asp:Parameter Name="Ship_Country" Type="String" />
            <asp:Parameter Name="Quote_ID" Type="Int32" />
            <asp:Parameter Name="Order_Price" Type="Int32" />
            <asp:Parameter Name="ProdHours" Type="Decimal" />
            <asp:Parameter Name="Product" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Kommentar" Type="String" />
            <asp:Parameter Name="Order_No" Type="Int32" />
            <asp:Parameter Name="StatusChanged" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="LastChange" />
            <asp:Parameter Name="PartPrice" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Project_ID" Type="Int32" />
            <asp:Parameter Name="Order_Status_ID" Type="Int32" />
            <asp:Parameter Name="Employee_ID" Type="Int32" />
            <asp:Parameter Name="OrderCreated" Type="DateTime" />
            <asp:Parameter DbType="Date" Name="Deadline_Date" />
            <asp:Parameter DbType="Date" Name="Shipped_Date" />
            <asp:Parameter Name="Ship_With" Type="String" />
            <asp:Parameter Name="Ship_Name" Type="String" />
            <asp:Parameter Name="Ship_Address" Type="String" />
            <asp:Parameter Name="Ship_PostalCode" Type="String" />
            <asp:Parameter Name="Ship_City" Type="String" />
            <asp:Parameter Name="Ship_Country" Type="String" />
            <asp:Parameter Name="Quote_ID" Type="Int32" />
            <asp:Parameter Name="Order_Price" Type="Int32" />
            <asp:Parameter Name="ProdHours" Type="Decimal" />
            <asp:Parameter Name="Product" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Kommentar" Type="String" />
            <asp:Parameter Name="Order_No" Type="Int32" />
            <asp:Parameter Name="StatusChanged" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="LastChange" />
            <asp:Parameter Name="PartPrice" Type="Int32" />
            <asp:Parameter Name="original_Order_ID" Type="Int32" />
            <asp:Parameter Name="original_Project_ID" Type="Int32" />
            <asp:Parameter Name="original_Order_Status_ID" Type="Int32" />
            <asp:Parameter Name="original_Employee_ID" Type="Int32" />
            <asp:Parameter Name="original_OrderCreated" Type="DateTime" />
            <asp:Parameter DbType="Date" Name="original_Deadline_Date" />
            <asp:Parameter Name="original_Shipped_Date" DbType="Date" />
            <asp:Parameter Name="original_Ship_With" Type="String" />
            <asp:Parameter Name="original_Ship_Name" Type="String" />
            <asp:Parameter Name="original_Ship_Address" Type="String" />
            <asp:Parameter Name="original_Ship_PostalCode" Type="String" />
            <asp:Parameter Name="original_Ship_City" Type="String" />
            <asp:Parameter Name="original_Ship_Country" Type="String" />
            <asp:Parameter Name="original_Quote_ID" Type="Int32" />
            <asp:Parameter Name="original_Order_Price" Type="Int32" />
            <asp:Parameter Name="original_ProdHours" Type="Decimal" />
            <asp:Parameter Name="original_Product" Type="Int32" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
            <asp:Parameter Name="original_Kommentar" Type="String" />
            <asp:Parameter Name="original_Order_No" Type="Int32" />
            <asp:Parameter Name="original_StatusChanged" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="original_LastChange" />
            <asp:Parameter Name="original_PartPrice" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsOrdersProject" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" DeleteCommand="DELETE FROM [Project] WHERE [Project_ID] = @original_Project_ID AND (([Employee_ID] = @original_Employee_ID) OR ([Employee_ID] IS NULL AND @original_Employee_ID IS NULL)) AND (([DateCreated] = @original_DateCreated) OR ([DateCreated] IS NULL AND @original_DateCreated IS NULL)) AND [Name] = @original_Name" InsertCommand="INSERT INTO [Project] ([Employee_ID], [DateCreated], [Name]) VALUES (@Employee_ID, @DateCreated, @Name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Project_ID], [Employee_ID], [DateCreated], [Name] FROM [Project] ORDER BY [Project_ID] DESC" UpdateCommand="UPDATE [Project] SET [Employee_ID] = @Employee_ID, [DateCreated] = @DateCreated, [Name] = @Name WHERE [Project_ID] = @original_Project_ID AND (([Employee_ID] = @original_Employee_ID) OR ([Employee_ID] IS NULL AND @original_Employee_ID IS NULL)) AND (([DateCreated] = @original_DateCreated) OR ([DateCreated] IS NULL AND @original_DateCreated IS NULL)) AND [Name] = @original_Name">
        <DeleteParameters>
            <asp:Parameter Name="original_Project_ID" Type="Int32" />
            <asp:Parameter Name="original_Employee_ID" Type="Int32" />
            <asp:Parameter Name="original_DateCreated" Type="DateTime" />
            <asp:Parameter Name="original_Name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Employee_ID" Type="Int32" />
            <asp:Parameter Name="DateCreated" Type="DateTime" />
            <asp:Parameter Name="Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Employee_ID" Type="Int32" />
            <asp:Parameter Name="DateCreated" Type="DateTime" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="original_Project_ID" Type="Int32" />
            <asp:Parameter Name="original_Employee_ID" Type="Int32" />
            <asp:Parameter Name="original_DateCreated" Type="DateTime" />
            <asp:Parameter Name="original_Name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
