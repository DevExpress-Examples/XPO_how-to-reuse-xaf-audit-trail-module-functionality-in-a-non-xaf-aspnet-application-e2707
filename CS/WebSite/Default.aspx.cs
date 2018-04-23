using System;
using DevExpress.Xpo;
using DevExpress.Persistent.AuditTrail;

public partial class _Default : System.Web.UI.Page 
{
    Session session = XpoHelper.GetNewSession();

    protected void Page_Load(object sender, EventArgs e)
    {
        source.Session = session;
        AuditTrailService.Instance.BeginSessionAudit(session, AuditTrailStrategy.OnObjectChanged);
    }

    void  OnAuditTrailServiceInstanceQueryCurrentUserName(object sender, QueryCurrentUserNameEventArgs e)
    {
        e.CurrentUserName = Context.User.Identity.Name;
    }

    protected override void OnUnload(EventArgs e) {
        base.OnUnload(e);
        AuditTrailService.Instance.QueryCurrentUserName += OnAuditTrailServiceInstanceQueryCurrentUserName;
        AuditTrailService.Instance.SaveAuditData(session);
        AuditTrailService.Instance.QueryCurrentUserName -= OnAuditTrailServiceInstanceQueryCurrentUserName;
    }
}
