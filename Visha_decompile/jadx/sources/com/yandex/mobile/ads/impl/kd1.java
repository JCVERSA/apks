package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import org.json.JSONArray;

@defpackage.nt1(c = "com.monetization.ads.base.mediation.bidding.NetworksHeaderBiddingDataLoader$loadNetworksBiddingData$2", f = "NetworksHeaderBiddingDataLoader.kt", l = {32}, m = "invokeSuspend")
final class kd1 extends SuspendLambda implements s74 {
    int b;
    final ld1 c;
    final Context d;
    final gz1 e;
    final List<lz0> f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kd1(ld1 ld1Var, Context context, gz1 gz1Var, List<lz0> list, defpackage.wh1<? super kd1> wh1Var) {
        super(2, wh1Var);
        this.c = ld1Var;
        this.d = context;
        this.e = gz1Var;
        this.f = list;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        return new kd1(this.c, this.d, this.e, this.f, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((kd1) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.b;
        if (i == 0) {
            kotlin.c.b(obj);
            ld1 ld1Var = this.c;
            Context context = this.d;
            gz1 gz1Var = this.e;
            List<lz0> list = this.f;
            this.b = 1;
            obj = ld1Var.a(context, gz1Var, (List<lz0>) list, (defpackage.wh1<? super JSONArray>) this);
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
