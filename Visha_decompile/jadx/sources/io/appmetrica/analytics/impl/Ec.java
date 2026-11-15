package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.internal.CounterConfiguration;

public final class Ec extends T2 {
    public Ec(Context context, C2791pf c2791pf, ReporterConfig reporterConfig, C2744ni c2744ni, T9 t9) {
        this(context, c2744ni, new C2992xh(c2791pf, new CounterConfiguration(reporterConfig), reporterConfig.userProfileID), t9, C2879t4.i().l(), new C2774on(), new C2891tg(), new C6(), new X(), new C3014ye(t9));
    }

    @Override
    public final String j() {
        return "[ManualReporter]";
    }

    public Ec(Context context, C2744ni c2744ni, C2992xh c2992xh, T9 t9, C2688lc c2688lc, C2774on c2774on, C2891tg c2891tg, C6 c6, X x, C3014ye c3014ye) {
        super(context, c2744ni, c2992xh, t9, c2688lc, c2774on, c2891tg, c6, x, c3014ye);
        C2879t4.i().getClass();
    }
}
