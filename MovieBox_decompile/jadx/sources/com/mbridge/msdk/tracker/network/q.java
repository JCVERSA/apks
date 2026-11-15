package com.mbridge.msdk.tracker.network;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class q {

    public final int f37783a;

    public final byte[] f37784b;

    public final Map<String, String> f37785c;

    public final List<g> f37786d;

    public final boolean f37787e;

    public final long f37788f;

    public q(int i10, byte[] bArr, boolean z10, long j10, List<g> list) {
        this(i10, bArr, a(list), list, z10, j10);
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

    private q(int i10, byte[] bArr, Map<String, String> map, List<g> list, boolean z10, long j10) {
        this.f37783a = i10;
        this.f37784b = bArr;
        this.f37785c = map;
        if (list == null) {
            this.f37786d = null;
        } else {
            this.f37786d = Collections.unmodifiableList(list);
        }
        this.f37787e = z10;
        this.f37788f = j10;
    }
}
