Imports Microsoft.VisualBasic
Imports System

Partial Public Class Audit
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		source.Session = XpoHelper.GetNewSession()
	End Sub
End Class
