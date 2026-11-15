package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.coreapi.internal.backport.Provider;

public final class Ih implements Provider {
    public final C2801q0 a;
    public final Context b;
    public final ReporterConfig c;

    public Ih(C2801q0 c2801q0, Context context, ReporterConfig reporterConfig) {
        this.a = c2801q0;
        this.b = context;
        this.c = reporterConfig;
    }

    @Override
    public final Object get() {
        C2801q0 c2801q0 = this.a;
        Context context = this.b;
        ReporterConfig reporterConfig = this.c;
        c2801q0.getClass();
        return C2776p0.a(context).f().c(reporterConfig);
    }
}
