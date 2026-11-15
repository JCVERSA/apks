package com.yandex.mobile.ads.impl;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

@defpackage.nt1(c = "com.monetization.ads.base.mediation.prefetch.PrefetchedMediationNetworksDataLoader", f = "PrefetchedMediationNetworksDataLoader.kt", l = {55, 59}, m = "loadNetworksMediationDataInternal")
final class ok1 extends ContinuationImpl {
    Object b;
    final rk1 c;
    int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ok1(rk1 rk1Var, defpackage.wh1<? super ok1> wh1Var) {
        super(wh1Var);
        this.c = rk1Var;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return rk1.a(0L, null, null, this.c, null, this);
    }
}
