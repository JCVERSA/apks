package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.VisibleForTesting;
import defpackage.y45;
import java.util.ArrayList;

public final class g61 extends ck<y61> {
    private final j32 A;
    private final i51 B;
    private final a C;
    private final v51 D;
    private final u61 w;
    private final p61 x;
    private final a71 y;
    private final d71 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g61(Context context, bv1 bv1Var, u61 u61Var, o3 o3Var, p61 p61Var, g5 g5Var, defpackage.nk1 nk1Var, a71 a71Var, d71 d71Var, j32 j32Var, i51 i51Var) {
        super(context, g5Var, o3Var, nk1Var);
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(u61Var, "requestData");
        y45.j(o3Var, "adConfiguration");
        y45.j(p61Var, "nativeAdOnLoadListener");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(nk1Var, "coroutineScope");
        y45.j(a71Var, "adResponseControllerFactoryCreator");
        y45.j(d71Var, "nativeAdResponseReportManager");
        y45.j(j32Var, "strongReferenceKeepingManager");
        y45.j(i51Var, "nativeAdCreationManager");
        this.w = u61Var;
        this.x = p61Var;
        this.y = a71Var;
        this.z = d71Var;
        this.A = j32Var;
        this.B = i51Var;
        this.C = new a();
        this.D = new v51(context, this, this);
        p61Var.a(d71Var);
    }

    @Override
    public final boolean a(v7 v7Var) {
        return true;
    }

    @Override
    public final synchronized void b(v7 v7Var) {
        throw null;
    }

    @Override
    @SuppressLint({"VisibleForTests"})
    public final w3 x() {
        return n().c();
    }

    public final void y() {
        c();
        p().a();
        g().a();
        this.x.a();
        this.A.a(xq0.b, this);
        a(j5.b);
        this.B.a();
    }

    public final void z() {
        v7 v7VarA = this.w.a();
        if (!this.w.d().a()) {
            b(w7.q());
            return;
        }
        g5 g5VarI = i();
        f5 f5Var = f5.e;
        bk.a(g5VarI, f5Var, "adLoadingPhaseType", f5Var, null);
        this.A.b(xq0.b, this);
        f().a(Integer.valueOf(this.w.b()));
        f().a(v7VarA.a());
        f().a(this.w.c());
        f().a(v7VarA.k());
        f().a(this.w.e());
        synchronized (this) {
            c(v7VarA);
        }
    }

    @VisibleForTesting
    public final class a implements g51 {
        public a() {
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "error");
            g61.this.i().a(f5.e);
            g61.this.b(w3Var);
        }

        @Override
        public final void a(q61 q61Var) {
            y45.j(q61Var, "nativeAd");
            g61.this.t();
            g61.this.x.a(q61Var);
        }

        @Override
        public final void a(ArrayList arrayList) {
            y45.j(arrayList, "nativeAds");
            g61.this.t();
            g61.this.x.a(arrayList);
        }

        @Override
        public final void a(k81 k81Var) {
            y45.j(k81Var, "sliderAd");
            g61.this.t();
            g61.this.x.a(k81Var);
        }
    }

    @Override
    public final ak<y61> a(String str, String str2) {
        y45.j(str, "url");
        y45.j(str2, "query");
        return this.D.a(this.w.d(), f(), this.w.a(), str, str2);
    }

    public final void a(o8<y61> o8Var, s51 s51Var) {
        y45.j(o8Var, "adResponse");
        y45.j(s51Var, "adFactoriesProvider");
        if (h()) {
            return;
        }
        this.B.a(o8Var, o8Var.I(), s51Var, this.C);
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        this.x.b(w3Var);
    }

    @Override
    public final void a(o8<y61> o8Var) {
        y45.j(o8Var, "adResponse");
        super.a((o8) o8Var);
        this.z.a(o8Var);
        if (h()) {
            return;
        }
        l81 l81VarA = this.y.a(o8Var).a(this);
        Context contextA = p0.a();
        if (contextA != null) {
            sp0.a(new Object[0]);
        }
        if (contextA == null) {
            contextA = l();
        }
        l81VarA.a(contextA, o8Var);
    }

    public final void a(vt vtVar) {
        this.x.a(vtVar);
    }

    public final void a(bu buVar) {
        this.x.a(buVar);
    }

    public final void a(ku kuVar) {
        this.x.a(kuVar);
    }
}
