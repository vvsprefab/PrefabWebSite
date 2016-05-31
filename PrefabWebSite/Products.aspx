<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="PrefabWebSite.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxGridView ID="ASPxGridViewProducts" runat="server" AutoGenerateColumns="False" DataSourceID="dsProducts" EnableTheming="True" KeyFieldName="Inventory_ID" Theme="Glass" Width="90%">
        <SettingsPager Mode="ShowAllRecords" NumericButtonCount="30" PageSize="30">
        </SettingsPager>
        <SettingsEditing Mode="Inline">
        </SettingsEditing>
        <Settings ShowHeaderFilterButton="True" />
        <SettingsBehavior AllowFocusedRow="True" />
        <SettingsDataSecurity AllowDelete="False" />
        <SettingsSearchPanel Delay="600" Visible="True" />
        <Columns>
            <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="Inventory_ID" ReadOnly="True" Visible="False" VisibleIndex="1">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <EditFormSettings Visible="False" />
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Picture" Visible="False" VisibleIndex="2">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Art.nr" FieldName="Article_No" VisibleIndex="3">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Navn" FieldName="Name" VisibleIndex="4">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="ExcludeFromList" Visible="False" VisibleIndex="6">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn Caption="Beskrivelse" FieldName="Description" MinWidth="200" VisibleIndex="5" Width="10%">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Lagerhylle" FieldName="StoragePosition" VisibleIndex="7">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="reportName" Visible="False" VisibleIndex="8">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="appListName" Visible="False" VisibleIndex="9">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="reportDescription" Visible="False" VisibleIndex="10">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="DN" FieldName="Dimension_DN" VisibleIndex="11">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Kategori" FieldName="Category_ID" VisibleIndex="12">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Pris pr stk" FieldName="Unit_Price" VisibleIndex="14">
                <PropertiesTextEdit DisplayFormatString="n">
                </PropertiesTextEdit>
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SmådelerKostnad" VisibleIndex="16">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="ProdTimer oppstart" FieldName="ProdHoursStartup" VisibleIndex="17">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="ProdTimer per stk" FieldName="ProdHoursQty" VisibleIndex="18">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Spenning" FieldName="Voltage" VisibleIndex="19">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn Caption="Trådløs" FieldName="Wireless" VisibleIndex="20">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn Caption="Antall på lager" FieldName="UnitsInStock" VisibleIndex="21">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Antall på vei inn" FieldName="UnitsOnOrder" VisibleIndex="22">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Bestillingsnivå" FieldName="ReorderLevel" VisibleIndex="23">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Produsent" FieldName="Manufacturer" VisibleIndex="24">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Dimesjon" FieldName="Dimension_LxWxD" VisibleIndex="25">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Multiplier" VisibleIndex="26">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NRF" VisibleIndex="27">
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Leverandør" FieldName="Supplier_ID" VisibleIndex="13">
                <PropertiesComboBox DataSourceID="dsSuppliers" TextField="Company_Name" ValueField="Supplier_ID">
                </PropertiesComboBox>
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Valuta" FieldName="Currency_ID" VisibleIndex="15">
                <PropertiesComboBox DataSourceID="dsCurrency" TextField="Name" ValueField="Currency_ID">
                </PropertiesComboBox>
                <SettingsHeaderFilter Mode="CheckedList">
                </SettingsHeaderFilter>
                <CellStyle HorizontalAlign="Left">
                    <Border BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="dsCurrency" runat="server" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" SelectCommand="SELECT * FROM [Currency]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsSuppliers" runat="server" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" SelectCommand="SELECT * FROM [Suppliers]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsProducts" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VVSPrefabConnectionString %>" DeleteCommand="DELETE FROM [inventest] WHERE [Inventory_ID] = @original_Inventory_ID AND (([Picture] = @original_Picture) OR ([Picture] IS NULL AND @original_Picture IS NULL)) AND (([Article_No] = @original_Article_No) OR ([Article_No] IS NULL AND @original_Article_No IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([ExcludeFromList] = @original_ExcludeFromList) OR ([ExcludeFromList] IS NULL AND @original_ExcludeFromList IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([StoragePosition] = @original_StoragePosition) OR ([StoragePosition] IS NULL AND @original_StoragePosition IS NULL)) AND (([reportName] = @original_reportName) OR ([reportName] IS NULL AND @original_reportName IS NULL)) AND (([appListName] = @original_appListName) OR ([appListName] IS NULL AND @original_appListName IS NULL)) AND (([reportDescription] = @original_reportDescription) OR ([reportDescription] IS NULL AND @original_reportDescription IS NULL)) AND (([Dimension_DN] = @original_Dimension_DN) OR ([Dimension_DN] IS NULL AND @original_Dimension_DN IS NULL)) AND (([Category_ID] = @original_Category_ID) OR ([Category_ID] IS NULL AND @original_Category_ID IS NULL)) AND (([Supplier_ID] = @original_Supplier_ID) OR ([Supplier_ID] IS NULL AND @original_Supplier_ID IS NULL)) AND (([Unit_Price] = @original_Unit_Price) OR ([Unit_Price] IS NULL AND @original_Unit_Price IS NULL)) AND (([Currency_ID] = @original_Currency_ID) OR ([Currency_ID] IS NULL AND @original_Currency_ID IS NULL)) AND (([SmådelerKostnad] = @original_SmådelerKostnad) OR ([SmådelerKostnad] IS NULL AND @original_SmådelerKostnad IS NULL)) AND (([ProdHoursStartup] = @original_ProdHoursStartup) OR ([ProdHoursStartup] IS NULL AND @original_ProdHoursStartup IS NULL)) AND (([ProdHoursQty] = @original_ProdHoursQty) OR ([ProdHoursQty] IS NULL AND @original_ProdHoursQty IS NULL)) AND (([Voltage] = @original_Voltage) OR ([Voltage] IS NULL AND @original_Voltage IS NULL)) AND (([Wireless] = @original_Wireless) OR ([Wireless] IS NULL AND @original_Wireless IS NULL)) AND (([UnitsInStock] = @original_UnitsInStock) OR ([UnitsInStock] IS NULL AND @original_UnitsInStock IS NULL)) AND (([UnitsOnOrder] = @original_UnitsOnOrder) OR ([UnitsOnOrder] IS NULL AND @original_UnitsOnOrder IS NULL)) AND (([ReorderLevel] = @original_ReorderLevel) OR ([ReorderLevel] IS NULL AND @original_ReorderLevel IS NULL)) AND (([Manufacturer] = @original_Manufacturer) OR ([Manufacturer] IS NULL AND @original_Manufacturer IS NULL)) AND (([Dimension_LxWxD] = @original_Dimension_LxWxD) OR ([Dimension_LxWxD] IS NULL AND @original_Dimension_LxWxD IS NULL)) AND (([Multiplier] = @original_Multiplier) OR ([Multiplier] IS NULL AND @original_Multiplier IS NULL)) AND (([NRF] = @original_NRF) OR ([NRF] IS NULL AND @original_NRF IS NULL))" InsertCommand="INSERT INTO [inventest] ([Picture], [Article_No], [Name], [ExcludeFromList], [Description], [StoragePosition], [reportName], [appListName], [reportDescription], [Dimension_DN], [Category_ID], [Supplier_ID], [Unit_Price], [Currency_ID], [SmådelerKostnad], [ProdHoursStartup], [ProdHoursQty], [Voltage], [Wireless], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Manufacturer], [Dimension_LxWxD], [Multiplier], [NRF]) VALUES (@Picture, @Article_No, @Name, @ExcludeFromList, @Description, @StoragePosition, @reportName, @appListName, @reportDescription, @Dimension_DN, @Category_ID, @Supplier_ID, @Unit_Price, @Currency_ID, @SmådelerKostnad, @ProdHoursStartup, @ProdHoursQty, @Voltage, @Wireless, @UnitsInStock, @UnitsOnOrder, @ReorderLevel, @Manufacturer, @Dimension_LxWxD, @Multiplier, @NRF)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [inventest] WHERE ([ExcludeFromList] = @ExcludeFromList)" UpdateCommand="UPDATE [inventest] SET [Picture] = @Picture, [Article_No] = @Article_No, [Name] = @Name, [ExcludeFromList] = @ExcludeFromList, [Description] = @Description, [StoragePosition] = @StoragePosition, [reportName] = @reportName, [appListName] = @appListName, [reportDescription] = @reportDescription, [Dimension_DN] = @Dimension_DN, [Category_ID] = @Category_ID, [Supplier_ID] = @Supplier_ID, [Unit_Price] = @Unit_Price, [Currency_ID] = @Currency_ID, [SmådelerKostnad] = @SmådelerKostnad, [ProdHoursStartup] = @ProdHoursStartup, [ProdHoursQty] = @ProdHoursQty, [Voltage] = @Voltage, [Wireless] = @Wireless, [UnitsInStock] = @UnitsInStock, [UnitsOnOrder] = @UnitsOnOrder, [ReorderLevel] = @ReorderLevel, [Manufacturer] = @Manufacturer, [Dimension_LxWxD] = @Dimension_LxWxD, [Multiplier] = @Multiplier, [NRF] = @NRF WHERE [Inventory_ID] = @original_Inventory_ID AND (([Picture] = @original_Picture) OR ([Picture] IS NULL AND @original_Picture IS NULL)) AND (([Article_No] = @original_Article_No) OR ([Article_No] IS NULL AND @original_Article_No IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([ExcludeFromList] = @original_ExcludeFromList) OR ([ExcludeFromList] IS NULL AND @original_ExcludeFromList IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([StoragePosition] = @original_StoragePosition) OR ([StoragePosition] IS NULL AND @original_StoragePosition IS NULL)) AND (([reportName] = @original_reportName) OR ([reportName] IS NULL AND @original_reportName IS NULL)) AND (([appListName] = @original_appListName) OR ([appListName] IS NULL AND @original_appListName IS NULL)) AND (([reportDescription] = @original_reportDescription) OR ([reportDescription] IS NULL AND @original_reportDescription IS NULL)) AND (([Dimension_DN] = @original_Dimension_DN) OR ([Dimension_DN] IS NULL AND @original_Dimension_DN IS NULL)) AND (([Category_ID] = @original_Category_ID) OR ([Category_ID] IS NULL AND @original_Category_ID IS NULL)) AND (([Supplier_ID] = @original_Supplier_ID) OR ([Supplier_ID] IS NULL AND @original_Supplier_ID IS NULL)) AND (([Unit_Price] = @original_Unit_Price) OR ([Unit_Price] IS NULL AND @original_Unit_Price IS NULL)) AND (([Currency_ID] = @original_Currency_ID) OR ([Currency_ID] IS NULL AND @original_Currency_ID IS NULL)) AND (([SmådelerKostnad] = @original_SmådelerKostnad) OR ([SmådelerKostnad] IS NULL AND @original_SmådelerKostnad IS NULL)) AND (([ProdHoursStartup] = @original_ProdHoursStartup) OR ([ProdHoursStartup] IS NULL AND @original_ProdHoursStartup IS NULL)) AND (([ProdHoursQty] = @original_ProdHoursQty) OR ([ProdHoursQty] IS NULL AND @original_ProdHoursQty IS NULL)) AND (([Voltage] = @original_Voltage) OR ([Voltage] IS NULL AND @original_Voltage IS NULL)) AND (([Wireless] = @original_Wireless) OR ([Wireless] IS NULL AND @original_Wireless IS NULL)) AND (([UnitsInStock] = @original_UnitsInStock) OR ([UnitsInStock] IS NULL AND @original_UnitsInStock IS NULL)) AND (([UnitsOnOrder] = @original_UnitsOnOrder) OR ([UnitsOnOrder] IS NULL AND @original_UnitsOnOrder IS NULL)) AND (([ReorderLevel] = @original_ReorderLevel) OR ([ReorderLevel] IS NULL AND @original_ReorderLevel IS NULL)) AND (([Manufacturer] = @original_Manufacturer) OR ([Manufacturer] IS NULL AND @original_Manufacturer IS NULL)) AND (([Dimension_LxWxD] = @original_Dimension_LxWxD) OR ([Dimension_LxWxD] IS NULL AND @original_Dimension_LxWxD IS NULL)) AND (([Multiplier] = @original_Multiplier) OR ([Multiplier] IS NULL AND @original_Multiplier IS NULL)) AND (([NRF] = @original_NRF) OR ([NRF] IS NULL AND @original_NRF IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Inventory_ID" Type="Int32" />
            <asp:Parameter Name="original_Picture" Type="String" />
            <asp:Parameter Name="original_Article_No" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_ExcludeFromList" Type="Boolean" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_StoragePosition" Type="String" />
            <asp:Parameter Name="original_reportName" Type="String" />
            <asp:Parameter Name="original_appListName" Type="String" />
            <asp:Parameter Name="original_reportDescription" Type="String" />
            <asp:Parameter Name="original_Dimension_DN" Type="String" />
            <asp:Parameter Name="original_Category_ID" Type="Int32" />
            <asp:Parameter Name="original_Supplier_ID" Type="Int32" />
            <asp:Parameter Name="original_Unit_Price" Type="Decimal" />
            <asp:Parameter Name="original_Currency_ID" Type="Int32" />
            <asp:Parameter Name="original_SmådelerKostnad" Type="Int32" />
            <asp:Parameter Name="original_ProdHoursStartup" Type="Decimal" />
            <asp:Parameter Name="original_ProdHoursQty" Type="Decimal" />
            <asp:Parameter Name="original_Voltage" Type="String" />
            <asp:Parameter Name="original_Wireless" Type="Boolean" />
            <asp:Parameter Name="original_UnitsInStock" Type="Int32" />
            <asp:Parameter Name="original_UnitsOnOrder" Type="Int32" />
            <asp:Parameter Name="original_ReorderLevel" Type="Int32" />
            <asp:Parameter Name="original_Manufacturer" Type="String" />
            <asp:Parameter Name="original_Dimension_LxWxD" Type="String" />
            <asp:Parameter Name="original_Multiplier" Type="Decimal" />
            <asp:Parameter Name="original_NRF" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Article_No" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ExcludeFromList" Type="Boolean" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="StoragePosition" Type="String" />
            <asp:Parameter Name="reportName" Type="String" />
            <asp:Parameter Name="appListName" Type="String" />
            <asp:Parameter Name="reportDescription" Type="String" />
            <asp:Parameter Name="Dimension_DN" Type="String" />
            <asp:Parameter Name="Category_ID" Type="Int32" />
            <asp:Parameter Name="Supplier_ID" Type="Int32" />
            <asp:Parameter Name="Unit_Price" Type="Decimal" />
            <asp:Parameter Name="Currency_ID" Type="Int32" />
            <asp:Parameter Name="SmådelerKostnad" Type="Int32" />
            <asp:Parameter Name="ProdHoursStartup" Type="Decimal" />
            <asp:Parameter Name="ProdHoursQty" Type="Decimal" />
            <asp:Parameter Name="Voltage" Type="String" />
            <asp:Parameter Name="Wireless" Type="Boolean" />
            <asp:Parameter Name="UnitsInStock" Type="Int32" />
            <asp:Parameter Name="UnitsOnOrder" Type="Int32" />
            <asp:Parameter Name="ReorderLevel" Type="Int32" />
            <asp:Parameter Name="Manufacturer" Type="String" />
            <asp:Parameter Name="Dimension_LxWxD" Type="String" />
            <asp:Parameter Name="Multiplier" Type="Decimal" />
            <asp:Parameter Name="NRF" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="False" Name="ExcludeFromList" Type="Boolean" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Article_No" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ExcludeFromList" Type="Boolean" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="StoragePosition" Type="String" />
            <asp:Parameter Name="reportName" Type="String" />
            <asp:Parameter Name="appListName" Type="String" />
            <asp:Parameter Name="reportDescription" Type="String" />
            <asp:Parameter Name="Dimension_DN" Type="String" />
            <asp:Parameter Name="Category_ID" Type="Int32" />
            <asp:Parameter Name="Supplier_ID" Type="Int32" />
            <asp:Parameter Name="Unit_Price" Type="Decimal" />
            <asp:Parameter Name="Currency_ID" Type="Int32" />
            <asp:Parameter Name="SmådelerKostnad" Type="Int32" />
            <asp:Parameter Name="ProdHoursStartup" Type="Decimal" />
            <asp:Parameter Name="ProdHoursQty" Type="Decimal" />
            <asp:Parameter Name="Voltage" Type="String" />
            <asp:Parameter Name="Wireless" Type="Boolean" />
            <asp:Parameter Name="UnitsInStock" Type="Int32" />
            <asp:Parameter Name="UnitsOnOrder" Type="Int32" />
            <asp:Parameter Name="ReorderLevel" Type="Int32" />
            <asp:Parameter Name="Manufacturer" Type="String" />
            <asp:Parameter Name="Dimension_LxWxD" Type="String" />
            <asp:Parameter Name="Multiplier" Type="Decimal" />
            <asp:Parameter Name="NRF" Type="Int32" />
            <asp:Parameter Name="original_Inventory_ID" Type="Int32" />
            <asp:Parameter Name="original_Picture" Type="String" />
            <asp:Parameter Name="original_Article_No" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_ExcludeFromList" Type="Boolean" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_StoragePosition" Type="String" />
            <asp:Parameter Name="original_reportName" Type="String" />
            <asp:Parameter Name="original_appListName" Type="String" />
            <asp:Parameter Name="original_reportDescription" Type="String" />
            <asp:Parameter Name="original_Dimension_DN" Type="String" />
            <asp:Parameter Name="original_Category_ID" Type="Int32" />
            <asp:Parameter Name="original_Supplier_ID" Type="Int32" />
            <asp:Parameter Name="original_Unit_Price" Type="Decimal" />
            <asp:Parameter Name="original_Currency_ID" Type="Int32" />
            <asp:Parameter Name="original_SmådelerKostnad" Type="Int32" />
            <asp:Parameter Name="original_ProdHoursStartup" Type="Decimal" />
            <asp:Parameter Name="original_ProdHoursQty" Type="Decimal" />
            <asp:Parameter Name="original_Voltage" Type="String" />
            <asp:Parameter Name="original_Wireless" Type="Boolean" />
            <asp:Parameter Name="original_UnitsInStock" Type="Int32" />
            <asp:Parameter Name="original_UnitsOnOrder" Type="Int32" />
            <asp:Parameter Name="original_ReorderLevel" Type="Int32" />
            <asp:Parameter Name="original_Manufacturer" Type="String" />
            <asp:Parameter Name="original_Dimension_LxWxD" Type="String" />
            <asp:Parameter Name="original_Multiplier" Type="Decimal" />
            <asp:Parameter Name="original_NRF" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
