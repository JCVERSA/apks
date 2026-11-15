package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.c74;
import defpackage.y45;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.ReporterConfig;
import kotlin.jvm.internal.Lambda;

final class of extends Lambda implements c74 {
    final ie b;
    final Context c;
    final pf d;
    final String e;
    final jf f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public of(ie ieVar, Context context, pf pfVar, String str, jf jfVar) {
        super(0);
        this.b = ieVar;
        this.c = context;
        this.d = pfVar;
        this.e = str;
        this.f = jfVar;
    }

    @Override
    public final Object invoke() {
        this.b.a(this.c);
        pf pfVar = this.d;
        Context context = this.c;
        String str = this.e;
        jf jfVar = this.f;
        pfVar.getClass();
        try {
            ReporterConfig reporterConfigBuild = ReporterConfig.newConfigBuilder(str).withDataSendingEnabled(jfVar.b(context)).build();
            y45.i(reporterConfigBuild, "build(...)");
            AppMetrica.activateReporter(context, reporterConfigBuild);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
        return AppMetrica.getReporter(this.c, this.e);
    }
}
