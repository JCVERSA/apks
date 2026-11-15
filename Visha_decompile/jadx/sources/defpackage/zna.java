package defpackage;

import java.util.Hashtable;
import java.util.TreeMap;

public class zna {
    public String a = "";
    public String b = "";
    public String c = "";
    public String d = "";
    public String e = "";
    public String f = "";
    public boolean k = true;
    public int l = 0;
    public boolean m = false;
    public Hashtable g = new Hashtable();
    public Hashtable h = new Hashtable();
    public TreeMap i = new TreeMap();
    public String j = "List of non fatal errors produced during parsing:\n\n";

    public void a() {
        Hashtable hashtable = new Hashtable();
        for (m2a m2aVar : this.i.values()) {
            p1a p1aVar = m2aVar.a;
            if (p1aVar != null) {
                String str = p1aVar.a;
                if (!hashtable.containsKey(str)) {
                    hashtable.put(str, m2aVar.a);
                }
            }
        }
        this.g = hashtable;
    }

    public String toString() {
        return "TimedTextObject{title='" + this.a + "', description='" + this.b + "', copyrigth='" + this.c + "', author='" + this.d + "', fileName='" + this.e + "', language='" + this.f + "', styling=" + this.g + ", layout=" + this.h + ", captions=" + this.i + ", warnings='" + this.j + "', useASSInsteadOfSSA=" + this.k + ", offset=" + this.l + ", built=" + this.m + '}';
    }
}
