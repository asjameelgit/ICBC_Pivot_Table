<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RawDataReport.aspx.cs" Inherits="ICBC_Pivot_Table.RawDataReport" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 508px">
    <form id="form1" runat="server">
        <div style="height: 500px">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:Button ID="ButtonReport" runat="server" OnClick="ButtonReport_Click" Text="Show Raw Data Report" Width="208px" /><br /><br />
            <asp:Button ID="ButtonRefreshData" runat="server" OnClick="ButtonRefreshData_Click" Text="Populate Database" Width="208px" />
            <br />
            <br />
            <rsweb:ReportViewer ID="RawDataReportViewer" runat="server" Height="358px" Width="812px">
            </rsweb:ReportViewer>
        </div>
    </form>
</body>
</html>
