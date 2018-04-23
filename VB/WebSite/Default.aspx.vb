Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Xpo
Imports DevExpress.Persistent.AuditTrail

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Private session As Session = XpoHelper.GetNewSession()

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		source.Session = session
		AuditTrailService.Instance.BeginSessionAudit(session, AuditTrailStrategy.OnObjectChanged)
	End Sub

	Private Sub OnAuditTrailServiceInstanceQueryCurrentUserName(ByVal sender As Object, ByVal e As QueryCurrentUserNameEventArgs)
		e.CurrentUserName = Context.User.Identity.Name
	End Sub

	Protected Overrides Sub OnUnload(ByVal e As EventArgs)
		MyBase.OnUnload(e)
		AddHandler AuditTrailService.Instance.QueryCurrentUserName, AddressOf OnAuditTrailServiceInstanceQueryCurrentUserName
		AuditTrailService.Instance.SaveAuditData(session)
		RemoveHandler AuditTrailService.Instance.QueryCurrentUserName, AddressOf OnAuditTrailServiceInstanceQueryCurrentUserName
	End Sub
End Class
