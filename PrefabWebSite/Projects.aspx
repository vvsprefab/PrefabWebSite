<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Projects.aspx.cs" Inherits="PrefabWebSite._Default" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <%-- DXCOMMENT: Configure your datasource for ASPxGridView --%>


<%-- DXCOMMENT: Configure your datasource for ASPxGridView --%>
    <dx:ASPxGridView ID="ASPxGridViewMaster" runat="server" AutoGenerateColumns="False" DataSourceID="dsProject" KeyFieldName="Project_ID" Width="90%" EnableTheming="True" Theme="Glass">
        <SettingsDetail ShowDetailRow="True" />
        <Templates>
            <DetailRow>
                <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="1" EnableTheming="True" Theme="Glass">
                    <TabPages>
                        <dx:TabPage Name="Tilbud" Text="Tilbud">
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    <dx:ASPxGridView ID="ASPxGridViewDetail_Quotes" runat="server" AutoGenerateColumns="False" DataSourceID="dsQuotes" KeyFieldName="Quote_ID" OnBeforePerformDataSelect="ASPxGridViewDetail_Quotes_BeforePerformDataSelect" Theme="Office2010Silver">
                                        <SettingsDetail ShowDetailRow="True" />
                                        <Templates>
                                            <DetailRow>
                                                <dx:ASPxGridView ID="ASPxGridViewDetail_Contacts" runat="server" AutoGenerateColumns="False" DataSourceID="dsContacts" KeyFieldName="Contact_ID" OnBeforePerformDataSelect="ASPxGridViewDetail_Contacts_BeforePerformDataSelect1">
                                                    <SettingsEditing Mode="Inline">
                                                        <BatchEditSettings StartEditAction="DblClick" />
                                                    </SettingsEditing>
                                                    <Settings ShowColumnHeaders="False" />
                                                    <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                                                    <Columns>
                                                        <dx:GridViewDataTextColumn FieldName="Contact_ID" ReadOnly="True" Visible="False" VisibleIndex="0">
                                                            <EditFormSettings Visible="False" />
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="First_Name" VisibleIndex="1">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Middle_Name" VisibleIndex="2">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Last_Name" VisibleIndex="3">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Phone_office" VisibleIndex="4">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Phone_mobile" VisibleIndex="5">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="email" VisibleIndex="6">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Company_cust" Visible="False" VisibleIndex="7">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Company_supp" VisibleIndex="8">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Avdeling" VisibleIndex="9">
                                                        </dx:GridViewDataTextColumn>
                                                    </Columns>
                                                </dx:ASPxGridView>
                                            </DetailRow>
                                        </Templates>
                                        <SettingsEditing Mode="Batch">
                                            <BatchEditSettings StartEditAction="DblClick" />
                                        </SettingsEditing>
                                        <Settings ShowHeaderFilterButton="True" />
                                        <SettingsSearchPanel Visible="True" />
                                        <Columns>
                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" ShowNewButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn FieldName="Quote_ID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                <EditFormSettings Visible="False" />
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Project_ID" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Tilbud" FieldName="Quote_No" ShowInCustomizationForm="True" VisibleIndex="3">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataDateColumn Caption="Opprettet" FieldName="Quote_Date" ShowInCustomizationForm="True" VisibleIndex="7">
                                                <SettingsHeaderFilter Mode="DateRangeCalendar">
                                                </SettingsHeaderFilter>
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataDateColumn>
                                            <dx:GridViewDataTextColumn Caption="Pris" FieldName="Quote_Price" ShowInCustomizationForm="True" VisibleIndex="8">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Antall" FieldName="Quantity" ShowInCustomizationForm="True" VisibleIndex="10">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="ProdTimer" FieldName="ProdHours" ShowInCustomizationForm="True" VisibleIndex="11">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataDateColumn Caption="Følges opp" FieldName="FollowUpDate" ShowInCustomizationForm="True" VisibleIndex="12">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataDateColumn>
                                            <dx:GridViewDataCheckColumn FieldName="Anbud" ShowInCustomizationForm="True" VisibleIndex="13">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataCheckColumn>
                                            <dx:GridViewDataDateColumn Caption="Sendt" FieldName="Sent_Date" ShowInCustomizationForm="True" VisibleIndex="15">
                                                <SettingsHeaderFilter Mode="DateRangeCalendar">
                                                </SettingsHeaderFilter>
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataDateColumn>
                                            <dx:GridViewDataTextColumn FieldName="PartPrice" ShowInCustomizationForm="True" Visible="False" VisibleIndex="16">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataDateColumn FieldName="LastModification" ShowInCustomizationForm="True" Visible="False" VisibleIndex="17">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataDateColumn>
                                            <dx:GridViewDataTextColumn FieldName="Contact_ID" ShowInCustomizationForm="True" Visible="False" VisibleIndex="18">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="ShippingCost" ShowInCustomizationForm="True" Visible="False" VisibleIndex="19">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataProgressBarColumn FieldName="Sannsynlighet" ShowInCustomizationForm="True" VisibleIndex="4">
                                                <PropertiesProgressBar DisplayFormatString="">
                                                </PropertiesProgressBar>
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataProgressBarColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="Kunde" FieldName="Customer_ID" ShowInCustomizationForm="True" VisibleIndex="5">
                                                <PropertiesComboBox DataSourceID="dsCustomers" TextField="Company_Name" ValueField="Customer_ID">
                                                </PropertiesComboBox>
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="Selger" FieldName="Employee_ID" ShowInCustomizationForm="True" VisibleIndex="6">
                                                <PropertiesComboBox DataSourceID="dsEmployee" TextField="Initials" ValueField="Employee_ID">
                                                </PropertiesComboBox>
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="Produkt" FieldName="Product" ShowInCustomizationForm="True" VisibleIndex="9">
                                                <PropertiesComboBox DataSourceID="dsProducts" TextField="Name" ValueField="ProductID">
                                                </PropertiesComboBox>
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="Status" FieldName="Quote_Status_ID" ShowInCustomizationForm="True" VisibleIndex="14">
                                                <PropertiesComboBox DataSourceID="dsStatus" TextField="Status_Text" ValueField="Quote_Status_ID">
                                                </PropertiesComboBox>
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataComboBoxColumn>
                                        </Columns>
                                    </dx:ASPxGridView>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:TabPage>
                        <dx:TabPage Name="Ordre" Text="Ordre">
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    <dx:ASPxGridView ID="ASPxGridViewDetail_Orders" runat="server" AutoGenerateColumns="False" DataSourceID="dsOrders" KeyFieldName="Order_ID" OnBeforePerformDataSelect="ASPxGridViewDetail_Orders_BeforePerformDataSelect" EnableTheming="True" Theme="Glass">
                                        <Columns>
                                            <dx:GridViewDataTextColumn FieldName="Order_ID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                                                <EditFormSettings Visible="False" />
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Project_ID" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Order_Status_ID" ShowInCustomizationForm="True" VisibleIndex="2">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Employee_ID" ShowInCustomizationForm="True" VisibleIndex="3">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataDateColumn FieldName="OrderCreated" ShowInCustomizationForm="True" VisibleIndex="4">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataDateColumn>
                                            <dx:GridViewDataDateColumn FieldName="Deadline_Date" ShowInCustomizationForm="True" VisibleIndex="5">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataDateColumn>
                                            <dx:GridViewDataDateColumn FieldName="Shipped_Date" ShowInCustomizationForm="True" VisibleIndex="6">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataDateColumn>
                                            <dx:GridViewDataTextColumn FieldName="Ship_With" ShowInCustomizationForm="True" Visible="False" VisibleIndex="7">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Ship_Name" ShowInCustomizationForm="True" Visible="False" VisibleIndex="8">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Ship_Address" ShowInCustomizationForm="True" Visible="False" VisibleIndex="9">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Ship_PostalCode" ShowInCustomizationForm="True" Visible="False" VisibleIndex="10">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Ship_City" ShowInCustomizationForm="True" Visible="False" VisibleIndex="11">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Ship_Country" ShowInCustomizationForm="True" Visible="False" VisibleIndex="12">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Quote_ID" ShowInCustomizationForm="True" Visible="False" VisibleIndex="13">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Order_Price" ShowInCustomizationForm="True" VisibleIndex="14">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="ProdHours" ShowInCustomizationForm="True" VisibleIndex="15">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Product" ShowInCustomizationForm="True" VisibleIndex="16">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Quantity" ShowInCustomizationForm="True" VisibleIndex="17">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Kommentar" ShowInCustomizationForm="True" VisibleIndex="18">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Order_No" ShowInCustomizationForm="True" VisibleIndex="19">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataCheckColumn FieldName="StatusChanged" ShowInCustomizationForm="True" Visible="False" VisibleIndex="20">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataCheckColumn>
                                            <dx:GridViewDataDateColumn FieldName="LastChange" ShowInCustomizationForm="True" VisibleIndex="21">
                                                <CellStyle HorizontalAlign="Left">
                                                    <Border BorderStyle="None" />
                                                </CellStyle>
                                            </dx:GridViewDataDateColumn>
                                        </Columns>
                                    </dx:ASPxGridView>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:TabPage>
                    </TabPages>
                </dx:ASPxPageControl>
            </DetailRow>
        </Templates>
        <SettingsPager PageSize="22">
        </SettingsPager>
        <SettingsEditing Mode="Batch">
            <BatchEditSettings StartEditAction="DblClick" />
        </SettingsEditing>
        <SettingsSearchPanel Visible="True" />
        <Columns>
            <dx:GridViewDataTextColumn Caption="ID" FieldName="Project_ID" ReadOnly="True" VisibleIndex="0">
                <EditFormSettings Visible="False" />
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="DateCreated" VisibleIndex="3">
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn Caption="Navn" FieldName="Name" VisibleIndex="1">
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Teknisk" FieldName="Employee_ID" VisibleIndex="2">
                <PropertiesComboBox DataSourceID="dsEmployee" TextField="Initials" ValueField="Employee_ID">
                </PropertiesComboBox>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="dsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsContacts" runat="server" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" SelectCommand="SELECT * FROM [Contacts] WHERE ([Contact_ID] = @Contact_ID)">
        <SelectParameters>
            <asp:SessionParameter Name="Contact_ID" SessionField="Contact_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsQuotes" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" DeleteCommand="DELETE FROM [Quote] WHERE [Quote_ID] = @original_Quote_ID AND [Project_ID] = @original_Project_ID AND [Quote_No] = @original_Quote_No AND (([Sannsynlighet] = @original_Sannsynlighet) OR ([Sannsynlighet] IS NULL AND @original_Sannsynlighet IS NULL)) AND (([Customer_ID] = @original_Customer_ID) OR ([Customer_ID] IS NULL AND @original_Customer_ID IS NULL)) AND [Employee_ID] = @original_Employee_ID AND [Quote_Date] = @original_Quote_Date AND (([Quote_Price] = @original_Quote_Price) OR ([Quote_Price] IS NULL AND @original_Quote_Price IS NULL)) AND (([Product] = @original_Product) OR ([Product] IS NULL AND @original_Product IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([ProdHours] = @original_ProdHours) OR ([ProdHours] IS NULL AND @original_ProdHours IS NULL)) AND (([FollowUpDate] = @original_FollowUpDate) OR ([FollowUpDate] IS NULL AND @original_FollowUpDate IS NULL)) AND (([Anbud] = @original_Anbud) OR ([Anbud] IS NULL AND @original_Anbud IS NULL)) AND [Quote_Status_ID] = @original_Quote_Status_ID AND (([Sent_Date] = @original_Sent_Date) OR ([Sent_Date] IS NULL AND @original_Sent_Date IS NULL)) AND (([PartPrice] = @original_PartPrice) OR ([PartPrice] IS NULL AND @original_PartPrice IS NULL)) AND (([LastModification] = @original_LastModification) OR ([LastModification] IS NULL AND @original_LastModification IS NULL)) AND (([Contact_ID] = @original_Contact_ID) OR ([Contact_ID] IS NULL AND @original_Contact_ID IS NULL)) AND (([ShippingCost] = @original_ShippingCost) OR ([ShippingCost] IS NULL AND @original_ShippingCost IS NULL))" InsertCommand="INSERT INTO [Quote] ([Project_ID], [Quote_No], [Sannsynlighet], [Customer_ID], [Employee_ID], [Quote_Date], [Quote_Price], [Product], [Quantity], [ProdHours], [FollowUpDate], [Anbud], [Quote_Status_ID], [Sent_Date], [PartPrice], [LastModification], [Contact_ID], [ShippingCost]) VALUES (@Project_ID, @Quote_No, @Sannsynlighet, @Customer_ID, @Employee_ID, @Quote_Date, @Quote_Price, @Product, @Quantity, @ProdHours, @FollowUpDate, @Anbud, @Quote_Status_ID, @Sent_Date, @PartPrice, @LastModification, @Contact_ID, @ShippingCost)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Quote_ID], [Project_ID], [Quote_No], [Sannsynlighet], [Customer_ID], [Employee_ID], [Quote_Date], [Quote_Price], [Product], [Quantity], [ProdHours], [FollowUpDate], [Anbud], [Quote_Status_ID], [Sent_Date], [PartPrice], [LastModification], [Contact_ID], [ShippingCost] FROM [Quote] WHERE ([Project_ID] = @Project_ID) ORDER BY [Quote_No]" UpdateCommand="UPDATE [Quote] SET [Project_ID] = @Project_ID, [Quote_No] = @Quote_No, [Sannsynlighet] = @Sannsynlighet, [Customer_ID] = @Customer_ID, [Employee_ID] = @Employee_ID, [Quote_Date] = @Quote_Date, [Quote_Price] = @Quote_Price, [Product] = @Product, [Quantity] = @Quantity, [ProdHours] = @ProdHours, [FollowUpDate] = @FollowUpDate, [Anbud] = @Anbud, [Quote_Status_ID] = @Quote_Status_ID, [Sent_Date] = @Sent_Date, [PartPrice] = @PartPrice, [LastModification] = @LastModification, [Contact_ID] = @Contact_ID, [ShippingCost] = @ShippingCost WHERE [Quote_ID] = @original_Quote_ID AND [Project_ID] = @original_Project_ID AND [Quote_No] = @original_Quote_No AND (([Sannsynlighet] = @original_Sannsynlighet) OR ([Sannsynlighet] IS NULL AND @original_Sannsynlighet IS NULL)) AND (([Customer_ID] = @original_Customer_ID) OR ([Customer_ID] IS NULL AND @original_Customer_ID IS NULL)) AND [Employee_ID] = @original_Employee_ID AND [Quote_Date] = @original_Quote_Date AND (([Quote_Price] = @original_Quote_Price) OR ([Quote_Price] IS NULL AND @original_Quote_Price IS NULL)) AND (([Product] = @original_Product) OR ([Product] IS NULL AND @original_Product IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([ProdHours] = @original_ProdHours) OR ([ProdHours] IS NULL AND @original_ProdHours IS NULL)) AND (([FollowUpDate] = @original_FollowUpDate) OR ([FollowUpDate] IS NULL AND @original_FollowUpDate IS NULL)) AND (([Anbud] = @original_Anbud) OR ([Anbud] IS NULL AND @original_Anbud IS NULL)) AND [Quote_Status_ID] = @original_Quote_Status_ID AND (([Sent_Date] = @original_Sent_Date) OR ([Sent_Date] IS NULL AND @original_Sent_Date IS NULL)) AND (([PartPrice] = @original_PartPrice) OR ([PartPrice] IS NULL AND @original_PartPrice IS NULL)) AND (([LastModification] = @original_LastModification) OR ([LastModification] IS NULL AND @original_LastModification IS NULL)) AND (([Contact_ID] = @original_Contact_ID) OR ([Contact_ID] IS NULL AND @original_Contact_ID IS NULL)) AND (([ShippingCost] = @original_ShippingCost) OR ([ShippingCost] IS NULL AND @original_ShippingCost IS NULL))">
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
        <SelectParameters>
            <asp:SessionParameter Name="Project_ID" SessionField="Project_ID" Type="Int32" />
        </SelectParameters>
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
    <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsStatus" runat="server" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" SelectCommand="SELECT * FROM [Quote_Status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsOrders" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [Order_ID] = @original_Order_ID AND [Project_ID] = @original_Project_ID AND [Order_Status_ID] = @original_Order_Status_ID AND [Employee_ID] = @original_Employee_ID AND (([OrderCreated] = @original_OrderCreated) OR ([OrderCreated] IS NULL AND @original_OrderCreated IS NULL)) AND (([Deadline_Date] = @original_Deadline_Date) OR ([Deadline_Date] IS NULL AND @original_Deadline_Date IS NULL)) AND (([Shipped_Date] = @original_Shipped_Date) OR ([Shipped_Date] IS NULL AND @original_Shipped_Date IS NULL)) AND (([Ship_With] = @original_Ship_With) OR ([Ship_With] IS NULL AND @original_Ship_With IS NULL)) AND (([Ship_Name] = @original_Ship_Name) OR ([Ship_Name] IS NULL AND @original_Ship_Name IS NULL)) AND (([Ship_Address] = @original_Ship_Address) OR ([Ship_Address] IS NULL AND @original_Ship_Address IS NULL)) AND (([Ship_PostalCode] = @original_Ship_PostalCode) OR ([Ship_PostalCode] IS NULL AND @original_Ship_PostalCode IS NULL)) AND (([Ship_City] = @original_Ship_City) OR ([Ship_City] IS NULL AND @original_Ship_City IS NULL)) AND (([Ship_Country] = @original_Ship_Country) OR ([Ship_Country] IS NULL AND @original_Ship_Country IS NULL)) AND (([Quote_ID] = @original_Quote_ID) OR ([Quote_ID] IS NULL AND @original_Quote_ID IS NULL)) AND (([Order_Price] = @original_Order_Price) OR ([Order_Price] IS NULL AND @original_Order_Price IS NULL)) AND (([ProdHours] = @original_ProdHours) OR ([ProdHours] IS NULL AND @original_ProdHours IS NULL)) AND (([Product] = @original_Product) OR ([Product] IS NULL AND @original_Product IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Kommentar] = @original_Kommentar) OR ([Kommentar] IS NULL AND @original_Kommentar IS NULL)) AND (([Order_No] = @original_Order_No) OR ([Order_No] IS NULL AND @original_Order_No IS NULL)) AND [StatusChanged] = @original_StatusChanged AND (([LastChange] = @original_LastChange) OR ([LastChange] IS NULL AND @original_LastChange IS NULL))" InsertCommand="INSERT INTO [Order] ([Project_ID], [Order_Status_ID], [Employee_ID], [OrderCreated], [Deadline_Date], [Shipped_Date], [Ship_With], [Ship_Name], [Ship_Address], [Ship_PostalCode], [Ship_City], [Ship_Country], [Quote_ID], [Order_Price], [ProdHours], [Product], [Quantity], [Kommentar], [Order_No], [StatusChanged], [LastChange]) VALUES (@Project_ID, @Order_Status_ID, @Employee_ID, @OrderCreated, @Deadline_Date, @Shipped_Date, @Ship_With, @Ship_Name, @Ship_Address, @Ship_PostalCode, @Ship_City, @Ship_Country, @Quote_ID, @Order_Price, @ProdHours, @Product, @Quantity, @Kommentar, @Order_No, @StatusChanged, @LastChange)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Order] WHERE ([Project_ID] = @Project_ID) ORDER BY [Order_No]" UpdateCommand="UPDATE [Order] SET [Project_ID] = @Project_ID, [Order_Status_ID] = @Order_Status_ID, [Employee_ID] = @Employee_ID, [OrderCreated] = @OrderCreated, [Deadline_Date] = @Deadline_Date, [Shipped_Date] = @Shipped_Date, [Ship_With] = @Ship_With, [Ship_Name] = @Ship_Name, [Ship_Address] = @Ship_Address, [Ship_PostalCode] = @Ship_PostalCode, [Ship_City] = @Ship_City, [Ship_Country] = @Ship_Country, [Quote_ID] = @Quote_ID, [Order_Price] = @Order_Price, [ProdHours] = @ProdHours, [Product] = @Product, [Quantity] = @Quantity, [Kommentar] = @Kommentar, [Order_No] = @Order_No, [StatusChanged] = @StatusChanged, [LastChange] = @LastChange WHERE [Order_ID] = @original_Order_ID AND [Project_ID] = @original_Project_ID AND [Order_Status_ID] = @original_Order_Status_ID AND [Employee_ID] = @original_Employee_ID AND (([OrderCreated] = @original_OrderCreated) OR ([OrderCreated] IS NULL AND @original_OrderCreated IS NULL)) AND (([Deadline_Date] = @original_Deadline_Date) OR ([Deadline_Date] IS NULL AND @original_Deadline_Date IS NULL)) AND (([Shipped_Date] = @original_Shipped_Date) OR ([Shipped_Date] IS NULL AND @original_Shipped_Date IS NULL)) AND (([Ship_With] = @original_Ship_With) OR ([Ship_With] IS NULL AND @original_Ship_With IS NULL)) AND (([Ship_Name] = @original_Ship_Name) OR ([Ship_Name] IS NULL AND @original_Ship_Name IS NULL)) AND (([Ship_Address] = @original_Ship_Address) OR ([Ship_Address] IS NULL AND @original_Ship_Address IS NULL)) AND (([Ship_PostalCode] = @original_Ship_PostalCode) OR ([Ship_PostalCode] IS NULL AND @original_Ship_PostalCode IS NULL)) AND (([Ship_City] = @original_Ship_City) OR ([Ship_City] IS NULL AND @original_Ship_City IS NULL)) AND (([Ship_Country] = @original_Ship_Country) OR ([Ship_Country] IS NULL AND @original_Ship_Country IS NULL)) AND (([Quote_ID] = @original_Quote_ID) OR ([Quote_ID] IS NULL AND @original_Quote_ID IS NULL)) AND (([Order_Price] = @original_Order_Price) OR ([Order_Price] IS NULL AND @original_Order_Price IS NULL)) AND (([ProdHours] = @original_ProdHours) OR ([ProdHours] IS NULL AND @original_ProdHours IS NULL)) AND (([Product] = @original_Product) OR ([Product] IS NULL AND @original_Product IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Kommentar] = @original_Kommentar) OR ([Kommentar] IS NULL AND @original_Kommentar IS NULL)) AND (([Order_No] = @original_Order_No) OR ([Order_No] IS NULL AND @original_Order_No IS NULL)) AND [StatusChanged] = @original_StatusChanged AND (([LastChange] = @original_LastChange) OR ([LastChange] IS NULL AND @original_LastChange IS NULL))">
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
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Project_ID" SessionField="Project_ID" Type="Int32" />
        </SelectParameters>
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
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsProject" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" DeleteCommand="DELETE FROM [Project] WHERE [Project_ID] = @original_Project_ID AND (([Employee_ID] = @original_Employee_ID) OR ([Employee_ID] IS NULL AND @original_Employee_ID IS NULL)) AND (([DateCreated] = @original_DateCreated) OR ([DateCreated] IS NULL AND @original_DateCreated IS NULL)) AND [Name] = @original_Name" InsertCommand="INSERT INTO [Project] ([Employee_ID], [DateCreated], [Name]) VALUES (@Employee_ID, @DateCreated, @Name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Project_ID], [Employee_ID], [DateCreated], [Name] FROM [Project] ORDER BY [Project_ID] DESC" UpdateCommand="UPDATE [Project] SET [Employee_ID] = @Employee_ID, [DateCreated] = @DateCreated, [Name] = @Name WHERE [Project_ID] = @original_Project_ID AND (([Employee_ID] = @original_Employee_ID) OR ([Employee_ID] IS NULL AND @original_Employee_ID IS NULL)) AND (([DateCreated] = @original_DateCreated) OR ([DateCreated] IS NULL AND @original_DateCreated IS NULL)) AND [Name] = @original_Name">
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