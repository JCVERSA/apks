package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class vu1 implements qk.a<ju1>, eq1 {
    private final pu1 a;
    private final nu1.a b;
    private final g5 c;
    private final Context d;
    private final kr e;

    public vu1(Context context, pu1 pu1Var, ou1.a.b bVar, g5 g5Var) {
        y45.j(context, "context");
        y45.j(pu1Var, "sdkConfigurationProvider");
        y45.j(bVar, "sdkConfigurationLoadListener");
        y45.j(g5Var, "adLoadingPhasesManager");
        this.a = pu1Var;
        this.b = bVar;
        this.c = g5Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.d = applicationContext;
        this.e = kr.c;
    }

    @Override
    public final void a(si2 si2Var) {
        y45.j(si2Var, "error");
        this.c.a(f5.o);
        this.b.a(si2Var, this.e);
    }

    @Override
    public final void b() {
        this.c.a(f5.n);
        g5 g5Var = this.c;
        f5 f5Var = f5.o;
        bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
    }

    @Override
    public final void a(Object obj) {
        ju1 ju1Var = (ju1) obj;
        y45.j(ju1Var, "sdkConfiguration");
        this.a.a(this.d, ju1Var);
        this.c.a(f5.o);
        this.b.a(ju1Var, this.e);
    }
}
