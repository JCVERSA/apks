package com.android.net;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public final class k {
    public final int a;
    public final byte[] b;
    public final Map<String, String> c;
    public final List<g> d;
    public final boolean e;
    public final long f;

    private k(int i, byte[] bArr, Map<String, String> map, List<g> list, boolean z, long j) {
        this.a = i;
        this.b = bArr;
        this.c = map;
        this.d = list == null ? null : Collections.unmodifiableList(list);
        this.e = z;
        this.f = j;
    }

    private static List<g> a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new g(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    public k(int i, byte[] bArr, boolean z, long j, List<g> list) {
        this(i, bArr, a(list), list, z, j);
    }

    private static Map<String, String> a(List<g> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (g gVar : list) {
            treeMap.put(gVar.a, gVar.b);
        }
        return treeMap;
    }

    @Deprecated
    private k(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, a(map), false, 0L);
    }

    @Deprecated
    public k(byte[] bArr, Map<String, String> map, byte b) {
        this(bArr, map);
    }
}
