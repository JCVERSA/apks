package m5;

import java.util.Hashtable;
import java.util.TreeMap;

public class d {

    public String f66267a = "";

    public String f66268b = "";

    public String f66269c = "";

    public String f66270d = "";

    public String f66271e = "";

    public String f66272f = "";

    public boolean f66277k = true;

    public int f66278l = 0;

    public boolean f66279m = false;

    public Hashtable f66273g = new Hashtable();

    public Hashtable f66274h = new Hashtable();

    public TreeMap f66275i = new TreeMap();

    public String f66276j = "List of non fatal errors produced during parsing:\n\n";

    public void a() {
        Hashtable hashtable = new Hashtable();
        for (b bVar : this.f66275i.values()) {
            a aVar = bVar.f66262a;
            if (aVar != null) {
                String str = aVar.f66253a;
                if (!hashtable.containsKey(str)) {
                    hashtable.put(str, bVar.f66262a);
                }
            }
        }
        this.f66273g = hashtable;
    }
}
