package com.yandex.mobile.ads.impl;

import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.SuspendLambda;

public final class ux implements tx {
    private final ns0 a;
    private final oo1 b;
    private final zz0 c;
    private final kl0 d;
    private final ml0 e;
    private final kotlinx.coroutines.c f;

    @defpackage.nt1(c = "com.yandex.mobile.ads.features.debugpanel.data.repo.DebugPanelReportRepositoryImpl$getReport$2", f = "DebugPanelReportRepositoryImpl.kt", l = {26}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        nx b;
        ox c;
        int d;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return ux.this.new a(wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ux.this.new a((defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            nx nxVarA;
            ox oxVar;
            Object value;
            List<qx> listK;
            Object objF = z45.f();
            int i = this.d;
            if (i == 0) {
                kotlin.c.b(obj);
                nxVarA = ux.this.a.a();
                ox oxVarD = nxVarA.d();
                if (oxVarD == null) {
                    return ll0.b.a;
                }
                oo1 oo1Var = ux.this.b;
                this.b = nxVarA;
                this.c = oxVarD;
                this.d = 1;
                Object objA = oo1Var.a(this);
                if (objA == objF) {
                    return objF;
                }
                oxVar = oxVarD;
                value = objA;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                oxVar = this.c;
                nxVarA = this.b;
                kotlin.c.b(obj);
                value = ((Result) obj).getValue();
            }
            if (Result.m285isFailureimpl(value)) {
                value = null;
            }
            rx rxVar = (rx) value;
            if (rxVar == null || (listK = rxVar.f()) == null) {
                listK = defpackage.y71.k();
            }
            List<qz0> listE = nxVarA.e();
            ArrayList arrayListA = ux.this.c.a(listK);
            return ux.this.e.a(ux.this.d.a(new sx(nxVarA.a(), nxVarA.f(), arrayListA.isEmpty() ? listE : arrayListA, nxVarA.b(), oxVar.b(), oxVar.a())));
        }
    }

    public ux(ns0 ns0Var, oo1 oo1Var, zz0 zz0Var, kl0 kl0Var, ml0 ml0Var, kotlinx.coroutines.c cVar) {
        y45.j(ns0Var, "localDataSource");
        y45.j(oo1Var, "remoteDataSource");
        y45.j(zz0Var, "networksMapper");
        y45.j(kl0Var, "inspectorReportMapper");
        y45.j(ml0Var, "reportStorage");
        y45.j(cVar, "ioDispatcher");
        this.a = ns0Var;
        this.b = oo1Var;
        this.c = zz0Var;
        this.d = kl0Var;
        this.e = ml0Var;
        this.f = cVar;
    }

    @Override
    public final Object a(defpackage.wh1<? super ll0> wh1Var) {
        return defpackage.cl0.g(this.f, new a(null), wh1Var);
    }
}
