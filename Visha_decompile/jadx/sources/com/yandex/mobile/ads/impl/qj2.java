package com.yandex.mobile.ads.impl;

import defpackage.af5;
import defpackage.y45;
import java.util.List;

public final class qj2 implements y30.c {
    static final af5[] c = {ta.a(qj2.class, "cacheListener", "getCacheListener()Lcom/monetization/ads/nativeads/video/cache/VideoCacheListener;", 0)};
    private static final List<Integer> d;
    private static final List<Integer> e;
    private static final List<Integer> f;
    private final String a;
    private final go1 b;

    static {
        List<Integer> listN = defpackage.y71.n(3, 4);
        d = listN;
        List<Integer> listN2 = defpackage.y71.n(1, 5);
        e = listN2;
        f = defpackage.i81.J0(listN, listN2);
    }

    public qj2(String str, ee2 ee2Var) {
        y45.j(str, "requestId");
        y45.j(ee2Var, "videoCacheListener");
        this.a = str;
        this.b = ho1.a(ee2Var);
    }

    @Override
    public final void a(y30 y30Var, w30 w30Var) {
        ee2 ee2Var;
        ee2 ee2Var2;
        y45.j(y30Var, "downloadManager");
        y45.j(w30Var, "download");
        if (y45.e(w30Var.a.b, this.a)) {
            if (d.contains(Integer.valueOf(w30Var.b)) && (ee2Var2 = (ee2) this.b.getValue(this, c[0])) != null) {
                ee2Var2.a();
            }
            if (e.contains(Integer.valueOf(w30Var.b)) && (ee2Var = (ee2) this.b.getValue(this, c[0])) != null) {
                ee2Var.c();
            }
            if (f.contains(Integer.valueOf(w30Var.b))) {
                y30Var.a((y30.c) this);
            }
        }
    }
}
