package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.WorkerThread;
import defpackage.u95;
import defpackage.y45;
import defpackage.z45;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

public final class j50 {
    private final o3 a;
    private final ea b;
    private final rk1 c;
    private final u95 d;

    @defpackage.nt1(c = "com.monetization.ads.base.mediation.prefetch.EncodedPrefetchedMediationDataLoader", f = "EncodedPrefetchedMediationDataLoader.kt", l = {33}, m = "loadEncodedPrefetchedMediationData")
    public static final class a extends ContinuationImpl {
        j50 b;
        Object c;
        int e;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            return j50.this.a(null, this);
        }
    }

    public j50(o3 o3Var, fl flVar, ea eaVar, gy0 gy0Var, rk1 rk1Var, u95 u95Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(flVar, "biddingSettings");
        y45.j(eaVar, "adUnitIdMediationPrefetchSettingsProvider");
        y45.j(gy0Var, "mediatedAdapterReporter");
        y45.j(rk1Var, "prefetchedMediationNetworksDataLoader");
        y45.j(u95Var, "jsonEncoder");
        this.a = o3Var;
        this.b = eaVar;
        this.c = rk1Var;
        this.d = u95Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @WorkerThread
    public final Object a(Context context, defpackage.wh1<? super String> wh1Var) {
        a aVar;
        if (wh1Var instanceof a) {
            aVar = (a) wh1Var;
            int i = aVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.e = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(wh1Var);
            }
        } else {
            aVar = new a(wh1Var);
        }
        Object objG = aVar.c;
        Object objF = z45.f();
        int i2 = aVar.e;
        if (i2 == 0) {
            kotlin.c.b(objG);
            f01 f01VarA = this.b.a(this.a.c());
            if (f01VarA == null) {
                return null;
            }
            List<g01> listB = f01VarA.b();
            long jA = f01VarA.a();
            gz1 gz1VarR = this.a.r();
            rk1 rk1Var = this.c;
            aVar.b = this;
            aVar.e = 1;
            rk1Var.getClass();
            objG = defpackage.cl0.g(qu.b(), new nk1(jA, context, gz1VarR, rk1Var, listB, null), aVar);
            if (objG == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this = aVar.b;
            kotlin.c.b(objG);
        }
        u95 u95Var = this.d;
        u95Var.a();
        return u95Var.b(fk1.Companion.serializer(), (fk1) objG);
    }
}
