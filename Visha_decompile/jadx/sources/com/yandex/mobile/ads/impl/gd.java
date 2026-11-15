package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;
import io.appmetrica.analytics.AppMetricaLibraryAdapter;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;

public final class gd {
    private static final AtomicBoolean d = new AtomicBoolean(false);
    private final jf a;
    private final mt0 b;
    private final pw1 c;

    public gd() {
        jf jfVar = new jf();
        mt0 mt0Var = new mt0();
        int i = pw1.l;
        this(jfVar, mt0Var, pw1.a.a());
    }

    public final void a(Context context) {
        Object objM279constructorimpl;
        y45.j(context, "context");
        ju1 ju1VarA = this.c.a(context);
        boolean z = ju1VarA != null && ju1VarA.l();
        this.b.getClass();
        if (mt0.d(context) && !z && d.compareAndSet(false, true)) {
            kd kdVarA = this.a.a(context);
            fd.a.getClass();
            y45.j(context, "context");
            y45.j(kdVarA, "configuration");
            try {
                Result.Companion companion = Result.INSTANCE;
                AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfigBuild = AppMetricaLibraryAdapterConfig.newConfigBuilder().withAdvIdentifiersTracking(kdVarA.a()).build();
                y45.i(appMetricaLibraryAdapterConfigBuild, "build(...)");
                AppMetricaLibraryAdapter.activate(context, appMetricaLibraryAdapterConfigBuild);
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

    public gd(jf jfVar, mt0 mt0Var, pw1 pw1Var) {
        y45.j(jfVar, "appMetricaPolicyConfigurator");
        y45.j(mt0Var, "manifestAnalyzer");
        y45.j(pw1Var, "sdkSettings");
        this.a = jfVar;
        this.b = mt0Var;
        this.c = pw1Var;
    }
}
