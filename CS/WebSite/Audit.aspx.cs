using System;

public partial class Audit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        source.Session = XpoHelper.GetNewSession();
    }
}
