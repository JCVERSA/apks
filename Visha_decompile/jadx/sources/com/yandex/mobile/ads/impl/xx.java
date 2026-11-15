package com.yandex.mobile.ads.impl;

import defpackage.nw6;
import defpackage.sw6;
import defpackage.y45;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

public final class xx implements vx {
    private final ns0 a;
    private final oo1 b;
    private final cx c;
    private final kotlinx.coroutines.c d;
    private rx e;
    private final nw6 f;

    public xx(ns0 ns0Var, oo1 oo1Var, cx cxVar, kotlinx.coroutines.c cVar) {
        y45.j(ns0Var, "localDataSource");
        y45.j(oo1Var, "remoteDataSource");
        y45.j(cxVar, "dataMerger");
        y45.j(cVar, "ioDispatcher");
        this.a = ns0Var;
        this.b = oo1Var;
        this.c = cxVar;
        this.d = cVar;
        this.f = sw6.b(false, 1, null);
    }

    @Override
    public final Object a(boolean z, ContinuationImpl continuationImpl) {
        return defpackage.cl0.g(this.d, new wx(this, z, null), continuationImpl);
    }

    @Override
    public final boolean a() {
        return this.a.a().c().a();
    }

    @Override
    public final void a(boolean z) {
        this.a.a(z);
    }
}
