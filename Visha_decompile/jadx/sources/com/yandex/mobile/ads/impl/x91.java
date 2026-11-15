package com.yandex.mobile.ads.impl;

import defpackage.s74;
import defpackage.y45;

public final class x91 implements defpackage.hk1 {
    private final g51 b;
    private final hk1.b c;

    public x91(g51 g51Var) {
        y45.j(g51Var, "nativeAdCreationListener");
        this.b = g51Var;
        this.c = defpackage.hk1.w1;
    }

    @Override
    public final <R> R fold(R r, s74 s74Var) {
        return (R) hk1.a.a(this, r, s74Var);
    }

    @Override
    public final <E extends kotlin.coroutines.d.b> E get(kotlin.coroutines.d.c cVar) {
        return (E) hk1.a.b(this, cVar);
    }

    @Override
    public final kotlin.coroutines.d.c getKey() {
        return this.c;
    }

    @Override
    public final void handleException(kotlin.coroutines.d dVar, Throwable th) {
        y45.j(dVar, "context");
        y45.j(th, "exception");
        th.getClass();
        sp0.c(new Object[0]);
        this.b.a(w7.d());
    }

    @Override
    public final kotlin.coroutines.d minusKey(kotlin.coroutines.d.c cVar) {
        return hk1.a.c(this, cVar);
    }

    @Override
    public final kotlin.coroutines.d plus(kotlin.coroutines.d dVar) {
        return hk1.a.d(this, dVar);
    }
}
