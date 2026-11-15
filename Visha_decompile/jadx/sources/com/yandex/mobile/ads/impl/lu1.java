package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;
import io.appmetrica.analytics.AppMetricaLibraryAdapter;
import kotlin.Result;

public final class lu1 implements zu1 {
    private final sp1 a;
    private final jf b;

    public lu1(s01 s01Var, jf jfVar) {
        y45.j(jfVar, "appMetricaPolicyConfigurator");
        this.a = s01Var;
        this.b = jfVar;
    }

    @Override
    public final void a(Context context, ju1 ju1Var) {
        Object objM279constructorimpl;
        y45.j(context, "context");
        y45.j(ju1Var, "sdkConfiguration");
        boolean zB = this.b.b(context);
        kd kdVarA = this.b.a(context);
        sp1 sp1Var = this.a;
        if (sp1Var != null) {
            sp1Var.a(zB);
        }
        fd.a.getClass();
        y45.j(kdVarA, "configuration");
        try {
            Result.Companion companion = Result.INSTANCE;
            AppMetricaLibraryAdapter.setAdvIdentifiersTracking(kdVarA.a());
            objM279constructorimpl = Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            sp0.b(new Object[0]);
        }
    }
}
