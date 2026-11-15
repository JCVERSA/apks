package com.android.volley;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class g {

    public final int f18617a;

    public final byte[] f18618b;

    public final Map f18619c;

    public final List f18620d;

    public final boolean f18621e;

    public final long f18622f;

    public g(int i10, byte[] bArr, Map map, boolean z10, long j10) {
        this(i10, bArr, map, a(map), z10, j10);
    }

    private static List a(Map map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(new e((String) entry.getKey(), (String) entry.getValue()));
        }
        return arrayList;
    }

    private static Map b(List list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            treeMap.put(eVar.a(), eVar.b());
        }
        return treeMap;
    }

    public g(int i10, byte[] bArr, boolean z10, long j10, List list) {
        this(i10, bArr, b(list), list, z10, j10);
    }

    public g(byte[] bArr, Map map) {
        this(200, bArr, map, false, 0L);
    }

    private g(int i10, byte[] bArr, Map map, List list, boolean z10, long j10) {
        this.f18617a = i10;
        this.f18618b = bArr;
        this.f18619c = map;
        if (list == null) {
            this.f18620d = null;
        } else {
            this.f18620d = Collections.unmodifiableList(list);
        }
        this.f18621e = z10;
        this.f18622f = j10;
    }
}
