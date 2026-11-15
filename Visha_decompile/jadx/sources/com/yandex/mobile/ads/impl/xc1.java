package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public final class xc1 {
    public final int a;
    public final byte[] b;

    @Nullable
    public final Map<String, String> c;

    @Nullable
    public final List<kf0> d;
    public final boolean e;

    @Deprecated
    public xc1() {
        throw null;
    }

    @Nullable
    private static List<kf0> a(@Nullable Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new kf0(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    private xc1(int i, byte[] bArr, @Nullable Map map, @Nullable List list, boolean z) {
        this.a = i;
        this.b = bArr;
        this.c = map;
        if (list == null) {
            this.d = null;
        } else {
            this.d = Collections.unmodifiableList(list);
        }
        this.e = z;
    }

    @Nullable
    private static Map<String, String> a(@Nullable List<kf0> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (kf0 kf0Var : list) {
            treeMap.put(kf0Var.a(), kf0Var.b());
        }
        return treeMap;
    }

    @Deprecated
    public xc1(int i, byte[] bArr, @Nullable Map map, boolean z) {
        this(i, bArr, map, a((Map<String, String>) map), z);
    }

    public xc1(int i, byte[] bArr, boolean z, long j, @Nullable List<kf0> list) {
        this(i, bArr, a(list), list, z);
    }
}
