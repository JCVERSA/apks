package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class p2 implements jg2 {
    private final k9 a;
    private final String b;
    private final a52 c;
    private final List<String> d;
    private final Map<String, List<String>> e;
    private r2 f;

    public p2(k9 k9Var, String str, a52 a52Var, List list, ArrayList arrayList, HashMap map) {
        y45.j(k9Var, "adSource");
        y45.j(a52Var, "timeOffset");
        y45.j(list, "breakTypes");
        y45.j(arrayList, "extensions");
        y45.j(map, "trackingEvents");
        this.a = k9Var;
        this.b = str;
        this.c = a52Var;
        this.d = list;
        this.e = map;
    }

    @Override
    public final Map<String, List<String>> a() {
        return this.e;
    }

    public final k9 b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final List<String> d() {
        return this.d;
    }

    public final r2 e() {
        return this.f;
    }

    public final a52 f() {
        return this.c;
    }

    public final void a(r2 r2Var) {
        this.f = r2Var;
    }
}
