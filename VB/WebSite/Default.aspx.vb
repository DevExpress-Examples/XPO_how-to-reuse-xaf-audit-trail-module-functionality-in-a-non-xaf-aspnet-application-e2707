Imports System
Imports DevExpress.Xpo
Imports DevExpress.Persistent.AuditTrail

Partial Public Class _Default
    Inherits System.Web.UI.Page


    Private session_Renamed As Session = XpoHelper.GetNewSession()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        source.Session = session_Renamed
        AuditTrailService.Instance.BeginSessionAudit(session_Renamed, AuditTrailStrategy.OnObjectChanged)
    End Sub

    Private Sub OnAuditTrailServiceInstanceQueryCurrentUserName(ByVal sender As Object, ByVal e As QueryCurrentUserNameEventArgs)
        e.CurrentUserName = Context.User.Identity.Name
    End Sub

    Protected Overrides Sub OnUnload(ByVal e As EventArgs)
        MyBase.OnUnload(e)
        AddHandler AuditTrailService.Instance.QueryCurrentUserName, AddressOf OnAuditTrailServiceInstanceQueryCurrentUserName
        AuditTrailService.Instance.SaveAuditData(session_Renamed)
        RemoveHandler AuditTrailService.Instance.QueryCurrentUserName, AddressOf OnAuditTrailServiceInstanceQueryCurrentUserName
    End Sub
End Class
