package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public final class dg {
    private static final AtomicBoolean f = new AtomicBoolean(false);
    private final Context a;
    private final bv1 b;
    private final pw1 c;
    private final sp1 d;
    private final p80 e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public dg(Context context, bv1 bv1Var) {
        this(context, bv1Var, pw1.a.a(), bv1Var.c(), p80.a.a(context));
        int i = pw1.l;
    }

    public final void a() {
        ju1 ju1VarA = this.c.a(this.a);
        if (ju1VarA == null || !ju1VarA.r0() || f.getAndSet(true)) {
            return;
        }
        for (n80 n80Var : this.e.b()) {
            if (n80Var.d() != null) {
                m80 m80VarD = n80Var.d();
                new t80(this.a, new o3(n80Var.c(), this.b), m80VarD).a(m80VarD.c());
            }
            this.e.a(n80Var.f());
            long jCurrentTimeMillis = System.currentTimeMillis() - n80Var.f();
            Map mapC = kotlin.collections.a.C(n80Var.e());
            mapC.put("interval", gq0.a(jCurrentTimeMillis));
            op1.b bVar = op1.b.M;
            f fVarA = n80Var.a();
            y45.j(bVar, "reportType");
            y45.j(mapC, "reportData");
            this.d.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapC), fVarA));
        }
        this.e.a();
    }

    public dg(Context context, bv1 bv1Var, pw1 pw1Var, sp1 sp1Var, p80 p80Var) {
        y45.j(context, "appContext");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(pw1Var, "settings");
        y45.j(sp1Var, "metricaReporter");
        y45.j(p80Var, "falseClickDataStorage");
        this.a = context;
        this.b = bv1Var;
        this.c = pw1Var;
        this.d = sp1Var;
        this.e = p80Var;
    }
}
