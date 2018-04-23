<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.2, Version=8.2.10.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Xpo.v8.2, Version=8.2.10.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v8.2, Version=8.2.10.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <dx:XpoDataSource ID="source" runat="server" TypeName="DXSample.Person" />
    <dx:ASPxGridView runat="server" DataSourceID="source" KeyFieldName="Oid">
        <Columns>
            <dx:GridViewCommandColumn>
                <NewButton Visible="true" />
                <EditButton Visible="true" />
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="Name" />
        </Columns>
    </dx:ASPxGridView>
    <a href="Audit.aspx">View Audit</a>
    </form>
</body>
</html>
