
using Microsoft.Reporting.WebForms;
using System;
using System.Linq;
using System.Web.UI.WebControls;
using IcbcDatabase.Model;
using IcbcDatabase;

namespace ICBC_Pivot_Table
{
    public partial class RawDataReport : System.Web.UI.Page
    {
        icbcEntities dbEntities = new icbcEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void ButtonReport_Click(object sender, EventArgs e)
        {
            
            RawDataReportViewer.LocalReport.DataSources.Clear();
            ReportDataSource rds = new ReportDataSource("RawDataSet", dbEntities.RawDatas.ToList());

            RawDataReportViewer.LocalReport.ReportPath = Server.MapPath("RawDataReport.rdlc");
            RawDataReportViewer.LocalReport.DataSources.Add(rds);

            RawDataReportViewer.LocalReport.Refresh();

        }

        protected void ButtonRefreshData_Click(object sender, EventArgs e)
        {
            RefreshData.Refresh();
        }
    }
}