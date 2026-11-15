package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.ReporterConfig;

public final class Mh implements Runnable {
    public final ReporterConfig a;
    public final Yh b;

    public Mh(Yh yh, ReporterConfig reporterConfig) {
        this.b = yh;
        this.a = reporterConfig;
    }

    @Override
    public final void run() {
        Yh yh = this.b;
        ReporterConfig reporterConfig = this.a;
        C2801q0 c2801q0 = yh.a;
        Context context = yh.d;
        c2801q0.getClass();
        C2776p0.a(context).f().a(reporterConfig);
    }
}
