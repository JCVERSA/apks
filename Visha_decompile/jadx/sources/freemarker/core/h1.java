package freemarker.core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

public abstract class h1 {
    public static List a(Map map) {
        ArrayList arrayList = new ArrayList(map.entrySet());
        Collections.sort(arrayList, new Comparator() {
            @Override
            public int compare(Object obj, Object obj2) {
                Map.Entry entry = (Map.Entry) obj;
                t0 t0Var = (t0) entry.getValue();
                Map.Entry entry2 = (Map.Entry) obj2;
                t0 t0Var2 = (t0) entry2.getValue();
                int i = t0Var.d - t0Var2.d;
                if (i != 0) {
                    return i;
                }
                int i2 = t0Var.c - t0Var2.c;
                if (i2 != 0) {
                    return i2;
                }
                if (entry == entry2) {
                    return 0;
                }
                return ((String) entry.getKey()).compareTo((String) entry.getKey());
            }
        });
        return arrayList;
    }
}
