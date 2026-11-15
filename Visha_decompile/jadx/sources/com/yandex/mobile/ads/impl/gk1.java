package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.WorkerThread;
import defpackage.y45;
import defpackage.z45;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

public final class gk1 {
    private final o3 a;

    @defpackage.nt1(c = "com.monetization.ads.base.mediation.prefetch.PrefetchedMediationDataLoader", f = "PrefetchedMediationDataLoader.kt", l = {19}, m = "loadPrefetchedMediationData")
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
            return gk1.this.a(null, null, this);
        }
    }

    public gk1(o3 o3Var) {
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
            ea eaVar = new ea(flVar);
            gy0 gy0Var = new gy0(o3Var, null);
            rk1 rk1Var = new rk1(gy0Var);
            vq0.a.getClass();
            j50 j50Var = new j50(o3Var, flVar, eaVar, gy0Var, rk1Var, vq0.a());
            aVar.d = 1;
            objA = j50Var.a(context, aVar);
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
