package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.y45;
import java.util.Map;

public final class tv1 {
    private final sp1 a;
    private final boolean b;
    private final z32 c;
    private final kz0 d;
    private final ch1 e;

    public tv1(sp1 sp1Var, boolean z, g5 g5Var) {
        this(sp1Var, z, g5Var, new z32(), new kz0(), new sv1(g5Var));
    }

    public final void a(w3 w3Var, gl0 gl0Var, kr krVar) {
        y45.j(w3Var, "adRequestError");
        y45.j(gl0Var, "initializationCallSource");
        sp1 sp1Var = this.a;
        op1.b bVar = op1.b.Y;
        Map mapP = kotlin.collections.a.p(abb.a("failure_reason", w3Var.c()), abb.a("call_source", gl0Var.a()), abb.a("configuration_source", krVar != null ? krVar.a() : null), abb.a("durations", this.e.a()));
        y45.j(bVar, "reportType");
        y45.j(mapP, "reportData");
        sp1Var.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapP), (f) null));
    }

    public tv1(sp1 sp1Var, boolean z, g5 g5Var, z32 z32Var, kz0 kz0Var, ch1 ch1Var) {
        y45.j(sp1Var, "reporter");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(z32Var, "systemCurrentTimeProvider");
        y45.j(kz0Var, "integratedNetworksProvider");
        y45.j(ch1Var, "phasesParametersProvider");
        this.a = sp1Var;
        this.b = z;
        this.c = z32Var;
        this.d = kz0Var;
        this.e = ch1Var;
    }

    public final void a(ju1 ju1Var, gl0 gl0Var, kr krVar) {
        y45.j(ju1Var, "sdkConfiguration");
        y45.j(gl0Var, "initializationCallSource");
        sp1 sp1Var = this.a;
        op1.b bVar = op1.b.X;
        this.c.getClass();
        Map mapP = kotlin.collections.a.p(abb.a("creation_date", Long.valueOf(System.currentTimeMillis())), abb.a("startup_version", ju1Var.O()), abb.a("user_consent", ju1Var.A0()), abb.a("integrated_mediation", this.d.a(this.b)), abb.a("call_source", gl0Var.a()), abb.a("configuration_source", krVar != null ? krVar.a() : null), abb.a("durations", this.e.a()));
        y45.j(bVar, "reportType");
        y45.j(mapP, "reportData");
        sp1Var.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapP), (f) null));
    }
}
