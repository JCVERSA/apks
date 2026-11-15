package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;

public abstract class my5 extends ly5 {
    public static pc9 D(Map map) {
        y45.j(map, "<this>");
        return i81.b0(map.entrySet());
    }

    public static List E(Map map) {
        y45.j(map, "<this>");
        if (map.size() == 0) {
            return y71.k();
        }
        Iterator it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return y71.k();
        }
        Map.Entry entry = (Map.Entry) it.next();
        if (!it.hasNext()) {
            return x71.e(new Pair(entry.getKey(), entry.getValue()));
        }
        ArrayList arrayList = new ArrayList(map.size());
        arrayList.add(new Pair(entry.getKey(), entry.getValue()));
        do {
            Map.Entry entry2 = (Map.Entry) it.next();
            arrayList.add(new Pair(entry2.getKey(), entry2.getValue()));
        } while (it.hasNext());
        return arrayList;
    }
}
