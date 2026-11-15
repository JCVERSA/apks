package com.yandex.mobile.ads.impl;

import defpackage.ccb;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class pp1 {
    private final Map<String, Object> a;
    private f b;

    public pp1(Map map, int i) {
        this((Map<String, ? extends Object>) ((i & 1) != 0 ? kotlin.collections.a.l() : map), (f) null);
    }

    public final f a() {
        return this.b;
    }

    public final Map<String, Object> b() {
        return this.a;
    }

    public final void a(f fVar) {
        this.b = fVar;
    }

    public final void b(Object obj, String str) {
        y45.j(str, "key");
        if (obj != null) {
            this.a.put(str, obj);
        } else {
            y45.j(str, "key");
            this.a.put(str, "undefined");
        }
    }

    public pp1(Map<String, ? extends Object> map, f fVar) {
        y45.j(map, "reportData");
        map = ccb.o(map) ? map : null;
        this.a = map == null ? new LinkedHashMap<>() : map;
        this.b = fVar;
    }

    public final void a(Map<String, ? extends Object> map) {
        y45.j(map, "data");
        this.a.putAll(map);
    }

    public final void a(List list) {
        y45.j("active_experiments", "key");
        if (list == null || !(!list.isEmpty())) {
            return;
        }
        this.a.put("active_experiments", list);
    }

    public final void a(Object obj, String str) {
        y45.j(str, "key");
        if (obj != null) {
            this.a.put(str, obj);
        }
    }
}
