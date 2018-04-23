<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Audit.aspx.cs" Inherits="Audit" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.2, Version=8.2.10.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Xpo.v8.2, Version=8.2.10.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <dx:XpoDataSource ID="source" runat="server" TypeName="DevExpress.Persistent.BaseImpl.AuditDataItemPersistent" />
    <dx:ASPxGridView runat="server" DataSourceID="source">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="UserName" />
            <dx:GridViewDataDateColumn FieldName="ModifiedOn" />
            <dx:GridViewDataTextColumn FieldName="OperationType" />
            <dx:GridViewDataTextColumn FieldName="Description" />
            <dx:GridViewDataTextColumn FieldName="OldValue" />
            <dx:GridViewDataTextColumn FieldName="NewValue" />
            <dx:GridViewDataTextColumn FieldName="PropertyName" />
        </Columns>
    </dx:ASPxGridView>
    </div>
    <a href="Default.aspx">Home</a>
    </form>
</body>
</html>
