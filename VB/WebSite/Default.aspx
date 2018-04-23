<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.3, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Xpo.v8.3, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v8.3, Version=8.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

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