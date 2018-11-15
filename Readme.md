<!-- default file list -->
*Files to look at*:

* [PersistentClasses.cs](./CS/WebSite/App_Code/PersistentClasses.cs) (VB: [PersistentClasses.vb](./VB/WebSite/App_Code/PersistentClasses.vb))
* [XpoHelper.cs](./CS/WebSite/App_Code/XpoHelper.cs) (VB: [XpoHelper.vb](./VB/WebSite/App_Code/XpoHelper.vb))
* **[Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))**
<!-- default file list end -->
# How to reuse XAF Audit Trail module functionality in a non-XAF ASP.NET application


<p>The XAF Audit Trail module is intended to track changes being made in persistent objects. This module uses the <a href="https://search.devexpress.com/?q=AuditTrailService&f=70&m=Documentation">AuditTrailService</a> class to track changes and write them to the database. It is possible to use this API in a non-XAF application based on XPO, without creating and configuring the <a href="https://documentation.devexpress.com/eXpressAppFramework/DevExpress.ExpressApp.namespace">DevExpress.ExpressApp</a> > <a href="https://documentation.devexpress.com/eXpressAppFramework/DevExpress.ExpressApp.XafApplication.class">XafApplication</a> object as it is usually done in XAF apps. <br><br>To use these features of the Audit Trial module, you will need to reference the <em>DevExpress.Persistent.BaseImpl</em> and <em>DevExpress.Persistent.Base</em> assemblies, which are part of the standard XAF delivery package. <br><br></p>
<p><strong>Important notes</strong>: <br><strong>1.</strong> You need to have a valid license for <a href="https://www.devexpress.com/xaf">the eXpressApp Framework</a> to use this example.<br><strong>2.</strong> AuditTrailService cannot be used with <a href="https://documentation.devexpress.com/CoreLibraries/CustomDocument8921.aspx">ExplicitUnitOfWork</a>. Use UnitOfWork or Session classes to audit data through AuditTrailService. AuditTrailService creates a new session to save audit records based on the data layer of the audited session. So, the data layer becomes shared among this new temporary session and ExplicitUnitOfWork. This violates the "exclusive owner of the database connection" requirement of ExplicitUnitOfWork.</p>
<p> </p>
<p><strong>See Also:</strong></p>
<p><a href="http://documentation.devexpress.com/#Xaf/CustomDocument2782">Audit Trail Module Overview</a><br><a href="https://www.devexpress.com/Support/Center/p/E2274">How to reuse XAF Audit Trail module functionality in a non-XAF WinForms application</a><br><a href="https://www.devexpress.com/Support/Center/p/E2419">How to track changes made to persistent objects, and write them into a separate table</a></p>


<h3>Description</h3>

Starting from version 2013 vol 2, the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebGridViewCommandColumn_NewButtontopic">GridViewCommandColumn.NewButton</a> and <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebGridViewCommandColumn_EditButtontopic">GridViewCommandColumn.EditButton</a> properties are obsolete. Use the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebGridViewCommandColumn_ShowNewButtontopic">GridViewCommandColumn.ShowNewButton</a>, <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebGridViewCommandColumn_ShowEditButtontopic">GridViewCommandColumn.ShowEditButton</a>, <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewCommandButtonSettings_NewButtontopic">ASPxGridView.SettingsCommandButton.NewButton</a>, and <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewCommandButtonSettings_EditButtontopic">ASPxGridView.SettingsCommandButton.EditButton</a> properties instead.

<br/>


