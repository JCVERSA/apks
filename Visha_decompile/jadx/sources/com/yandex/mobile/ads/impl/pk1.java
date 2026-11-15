package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.monetization.ads.base.mediation.prefetch.PrefetchedMediationNetworksDataLoader$loadNetworksMediationDataInternal$asyncAdaptersResults$1", f = "PrefetchedMediationNetworksDataLoader.kt", l = {}, m = "invokeSuspend")
final class pk1 extends SuspendLambda implements s74 {
    private Object b;
    final List<g01> c;
    final rk1 d;
    final Context e;
    final gz1 f;
    final long g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pk1(long j, Context context, gz1 gz1Var, rk1 rk1Var, List list, defpackage.wh1 wh1Var) {
        super(2, wh1Var);
        this.c = list;
        this.d = rk1Var;
        this.e = context;
        this.f = gz1Var;
        this.g = j;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        List<g01> list = this.c;
        rk1 rk1Var = this.d;
        pk1 pk1Var = new pk1(this.g, this.e, this.f, rk1Var, list, wh1Var);
        pk1Var.b = obj;
        return pk1Var;
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((pk1) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        kotlin.c.b(obj);
        defpackage.nk1 nk1Var = (defpackage.nk1) this.b;
        List<g01> list = this.c;
        rk1 rk1Var = this.d;
        Context context = this.e;
        gz1 gz1Var = this.f;
        long j = this.g;
        ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
        for (g01 g01Var : list) {
            rk1Var.getClass();
            arrayList.add(defpackage.el0.b(nk1Var, null, null, new mk1(rk1Var, g01Var, context, j, gz1Var, null), 3, null));
        }
        return arrayList;
    }
}
