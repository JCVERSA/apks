package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.WorkerThread;
import defpackage.y45;
import defpackage.z45;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

public final class mf0 {
    private final o3 a;

    @defpackage.nt1(c = "com.monetization.ads.base.mediation.bidding.HeaderBiddingDataLoader", f = "HeaderBiddingDataLoader.kt", l = {18}, m = "loadHeaderBiddingData")
    public static final class a extends ContinuationImpl {
        Object b;
        int d;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.d |= Integer.MIN_VALUE;
            return mf0.this.a(null, null, this);
        }
    }

    public mf0(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        this.a = o3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @WorkerThread
    public final Object a(Context context, fl flVar, defpackage.wh1<? super String> wh1Var) {
        a aVar;
        if (wh1Var instanceof a) {
            aVar = (a) wh1Var;
            int i = aVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.d = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(wh1Var);
            }
        } else {
            aVar = new a(wh1Var);
        }
        Object objA = aVar.b;
        Object objF = z45.f();
        int i2 = aVar.d;
        if (i2 == 0) {
            kotlin.c.b(objA);
            o3 o3Var = this.a;
            uj ujVar = new uj();
            da daVar = new da(flVar);
            gy0 gy0Var = new gy0(o3Var, null);
            i50 i50Var = new i50(o3Var, flVar, ujVar, daVar, gy0Var, new ld1(gy0Var));
            aVar.d = 1;
            objA = i50Var.a(context, aVar);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(objA);
        }
        return (String) objA;
    }
}
