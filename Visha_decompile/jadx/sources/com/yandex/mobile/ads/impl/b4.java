package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class b4 {
    private final List<k4> a;
    private int b;

    public b4(ArrayList arrayList) {
        y45.j(arrayList, "adGroupPlaybackItems");
        this.a = arrayList;
    }

    public final void a() {
        this.b = this.a.size();
    }

    public final zb2<go0> b() {
        k4 k4Var = (k4) defpackage.i81.r0(this.a, this.b);
        if (k4Var != null) {
            return k4Var.c();
        }
        return null;
    }

    public final do0 c() {
        k4 k4Var = (k4) defpackage.i81.r0(this.a, this.b);
        if (k4Var != null) {
            return k4Var.a();
        }
        return null;
    }

    public final mg2 d() {
        k4 k4Var = (k4) defpackage.i81.r0(this.a, this.b);
        if (k4Var != null) {
            return k4Var.d();
        }
        return null;
    }

    public final k4 e() {
        return (k4) defpackage.i81.r0(this.a, this.b + 1);
    }

    public final k4 f() {
        int i = this.b + 1;
        this.b = i;
        return (k4) defpackage.i81.r0(this.a, i);
    }

    public final k4 a(zb2<go0> zb2Var) {
        Object next;
        y45.j(zb2Var, "videoAdInfo");
        Iterator<T> it = this.a.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (y45.e(((k4) next).c(), zb2Var)) {
                return (k4) next;
            }
        }
        next = null;
        return (k4) next;
    }
}
