package com.mbridge.msdk.foundation.same.net.toolbox;

import com.mbridge.msdk.tracker.network.g;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class a {

    public final byte[] f34617a;

    public final List<g> f34618b;

    public final Map<String, String> f34619c;

    public final int f34620d;

    public a(int i10, byte[] bArr, List<g> list) {
        this(i10, bArr, a(list), list);
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
            treeMap.put(gVar.a(), gVar.b());
        }
        return treeMap;
    }

    private a(int i10, byte[] bArr, Map<String, String> map, List<g> list) {
        this.f34620d = i10;
        this.f34617a = bArr;
        this.f34619c = map;
        if (list == null) {
            this.f34618b = null;
        } else {
            this.f34618b = Collections.unmodifiableList(list);
        }
    }
}
