using DXSample;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using DevExpress.Xpo.Metadata;
using DevExpress.Persistent.AuditTrail;
using bi = DevExpress.Persistent.BaseImpl;

/// <summary>
/// Summary description for XpoHelper
/// </summary>
public static class XpoHelper {
    static XpoHelper() {
        XPDictionary dict = new ReflectionDictionary();
        dict.GetDataStoreSchema(typeof(Person).Assembly);
        AuditTrailService.Instance.SetXPDictionary(dict);
        AuditTrailService.Instance.AuditDataStore = new AuditDataStore<bi.AuditDataItemPersistent, bi.AuditedObjectWeakReference>();
    }

    public static Session GetNewSession() {
        return new Session(DataLayer);
    }

    public static UnitOfWork GetNewUnitOfWork() {
        return new UnitOfWork(DataLayer);
    }

    private readonly static object lockObject = new object();

    static volatile IDataLayer fDataLayer;
    static IDataLayer DataLayer {
        get {
            if (fDataLayer == null) {
                lock (lockObject) {
                    if (fDataLayer == null) {
                        fDataLayer = GetDataLayer();
                    }
                }
            }
            return fDataLayer;
        }
    }

    private static IDataLayer GetDataLayer() {
        XpoDefault.Session = null;
        XPDictionary dict = new ReflectionDictionary();
        dict.GetDataStoreSchema(typeof(Person).Assembly, typeof(bi.AuditDataItemPersistent).Assembly, typeof(AuditDataItem).Assembly);
        return new ThreadSafeDataLayer(dict, 
            XpoDefault.GetConnectionProvider(MSSqlConnectionProvider.GetConnectionString("(local)", "Q295139"),
            AutoCreateOption.DatabaseAndSchema));
    }
}
