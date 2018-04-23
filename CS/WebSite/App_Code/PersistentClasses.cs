using DevExpress.Xpo;

namespace DXSample {
    [Persistent("Persons")]
    public class Person :XPObject {
        public Person(Session session) : base(session) { }

        private string fName;
        public string Name {
            get { return fName; }
            set { SetPropertyValue<string>("Name", ref fName, value); }
        }
    }
}