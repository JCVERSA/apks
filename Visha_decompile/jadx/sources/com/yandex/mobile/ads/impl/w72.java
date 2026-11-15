package com.yandex.mobile.ads.impl;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class w72 implements n32 {
    private final s72 b;
    private final long[] c;
    private final Map<String, v72> d;
    private final Map<String, t72> e;
    private final Map<String, String> f;

    public w72(s72 s72Var, HashMap map, HashMap map2, HashMap map3) {
        this.b = s72Var;
        this.e = map2;
        this.f = map3;
        this.d = Collections.unmodifiableMap(map);
        this.c = s72Var.b();
    }

    @Override
    public final long a(int i) {
        return this.c[i];
    }

    @Override
    public final List<hv> b(long j) {
        return this.b.a(j, this.d, this.e, this.f);
    }

    @Override
    public final int a() {
        return this.c.length;
    }

    @Override
    public final int a(long j) {
        int iA = f92.a(this.c, j, false);
        if (iA < this.c.length) {
            return iA;
        }
        return -1;
    }
}
