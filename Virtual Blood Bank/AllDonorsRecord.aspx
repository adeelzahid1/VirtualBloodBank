<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllDonorsRecord.aspx.cs" Inherits="Virtual_Blood_Bank.AllDonorsRecord1" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource1" ToolPanelView="None" />
        <p>
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <Report FileName="AllDonorsRecord.rpt">
                </Report>
            </CR:CrystalReportSource>
            <br />
        </p>
        <p>
            &nbsp;</p>
    <div>
    
    </div>
    </form>
</body>
</html>
