package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.z45;
import java.util.List;

public final class rk1 {
    private final cy0<com.monetization.ads.mediation.base.a> a;
    private final jk1 b;
    private final kk1 c;
    private final ik1 d;

    public rk1(gy0 gy0Var) {
        this(gy0Var, new cy0(gy0Var), new jk1(), new kk1(), new ik1());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    public static final Object a(long j, Context context, gz1 gz1Var, rk1 rk1Var, List list, defpackage.wh1 wh1Var) {
        ok1 ok1Var;
        rk1Var.getClass();
        if (wh1Var instanceof ok1) {
            ok1Var = (ok1) wh1Var;
            int i = ok1Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                ok1Var.d = i - Integer.MIN_VALUE;
            } else {
                ok1Var = new ok1(rk1Var, wh1Var);
            }
        } else {
            ok1Var = new ok1(rk1Var, wh1Var);
        }
        Object objG = ok1Var.b;
        Object objF = z45.f();
        int i2 = ok1Var.d;
        if (i2 != 0) {
            if (i2 == 1) {
                kotlin.c.b(objG);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(objG);
            }
            return new fk1((List) objG);
        }
        kotlin.c.b(objG);
        pk1 pk1Var = new pk1(j, context, gz1Var, rk1Var, list, null);
        ok1Var.d = 1;
        objG = kotlinx.coroutines.d.g(pk1Var, ok1Var);
        if (objG == objF) {
            return objF;
        }
        kotlinx.coroutines.c cVarA = qu.a();
        qk1 qk1Var = new qk1((List) objG, null);
        ok1Var.d = 2;
        objG = defpackage.cl0.g(cVarA, qk1Var, ok1Var);
        if (objG == objF) {
            return objF;
        }
        return new fk1((List) objG);
    }

    public rk1(gy0 gy0Var, cy0<com.monetization.ads.mediation.base.a> cy0Var, jk1 jk1Var, kk1 kk1Var, ik1 ik1Var) {
        y45.j(gy0Var, "mediatedAdapterReporter");
        y45.j(cy0Var, "mediatedAdapterCreator");
        y45.j(jk1Var, "prefetchedMediationNetworkDataLoader");
        y45.j(kk1Var, "prefetchedMediationNetworkMapper");
        y45.j(ik1Var, "prefetchedMediationInfoFactory");
        this.a = cy0Var;
        this.b = jk1Var;
        this.c = kk1Var;
        this.d = ik1Var;
    }
}
