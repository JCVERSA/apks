package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.monetization.ads.base.mediation.prefetch.PrefetchedMediationNetworksDataLoader$loadNetworksMediationData$2", f = "PrefetchedMediationNetworksDataLoader.kt", l = {44}, m = "invokeSuspend")
final class nk1 extends SuspendLambda implements s74 {
    int b;
    final rk1 c;
    final Context d;
    final gz1 e;
    final List<g01> f;
    final long g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nk1(long j, Context context, gz1 gz1Var, rk1 rk1Var, List list, defpackage.wh1 wh1Var) {
        super(2, wh1Var);
        this.c = rk1Var;
        this.d = context;
        this.e = gz1Var;
        this.f = list;
        this.g = j;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        rk1 rk1Var = this.c;
        return new nk1(this.g, this.d, this.e, rk1Var, this.f, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((nk1) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.b;
        if (i == 0) {
            kotlin.c.b(obj);
            rk1 rk1Var = this.c;
            Context context = this.d;
            gz1 gz1Var = this.e;
            List<g01> list = this.f;
            long j = this.g;
            this.b = 1;
            obj = rk1.a(j, context, gz1Var, rk1Var, list, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
        }
        return obj;
    }
}
