<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Audit.aspx.vb" Inherits="Audit" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Xpo.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>



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