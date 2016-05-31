using System;
using DevExpress.Web;

namespace PrefabWebSite {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void ASPxGridViewDetail_Quotes_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["Project_ID"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }

        protected void ASPxGridViewDetail_Contacts_BeforePerformDataSelect1(object sender, EventArgs e)
        {
            Session["Contact_ID"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }

        protected void ASPxGridViewDetail_Orders_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["Project_ID"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }
    }
}