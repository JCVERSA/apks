package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public final class fme {
    public final int a;
    public final byte[] b;
    public final Map c;
    public final List d;
    public final boolean e;

    public fme(int i, byte[] bArr, Map map, List list, boolean z, long j) {
        this.a = i;
        this.b = bArr;
        this.c = map;
        this.d = list == null ? null : Collections.unmodifiableList(list);
        this.e = z;
    }

    public static List a(Map map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(new dme((String) entry.getKey(), (String) entry.getValue()));
        }
        return arrayList;
    }

    public fme(int i, byte[] bArr, Map map, boolean z, long j) {
        this(i, bArr, map, a(map), z, j);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public fme(int i, byte[] bArr, boolean z, long j, List list) {
        Map treeMap;
        if (list == null) {
            treeMap = null;
        } else if (list.isEmpty()) {
            treeMap = Collections.emptyMap();
        } else {
            treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                dme dmeVar = (dme) it.next();
                treeMap.put(dmeVar.a(), dmeVar.b());
            }
        }
        this(i, bArr, treeMap, list, z, j);
    }

    public fme(byte[] bArr, Map map) {
        this(200, bArr, map, a(map), false, 0L);
    }
}
