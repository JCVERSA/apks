package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class gt {
    private final bv1 a;
    private final List<zb2<go0>> b;
    private final List<go0> c;
    private final String d;
    private final p2 e;
    private final ht f;
    private final long g;

    public gt(bv1 bv1Var, ArrayList arrayList, ArrayList arrayList2, String str, p2 p2Var, ht htVar, long j) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(arrayList, "videoAdInfoList");
        y45.j(arrayList2, "videoAds");
        y45.j(str, "type");
        y45.j(p2Var, "adBreak");
        y45.j(htVar, "adBreakPosition");
        this.a = bv1Var;
        this.b = arrayList;
        this.c = arrayList2;
        this.d = str;
        this.e = p2Var;
        this.f = htVar;
        this.g = j;
    }

    public final void a(a00 a00Var) {
    }

    public final ht b() {
        return this.f;
    }

    public final a00 c() {
        return null;
    }

    public final bv1 d() {
        return this.a;
    }

    public final String e() {
        return this.d;
    }

    public final List<zb2<go0>> f() {
        return this.b;
    }

    public final List<go0> g() {
        return this.c;
    }

    public final String toString() {
        return "ad_break_#" + this.g;
    }

    public final p2 a() {
        return this.e;
    }
}
