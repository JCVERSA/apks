package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;

public final class C2931v6 extends T2 {
    public final C2956w6 o;
    public final C2799pn p;

    public C2931v6(Context context, C2791pf c2791pf, AppMetricaConfig appMetricaConfig, C2744ni c2744ni, T9 t9) {
        this(context, c2744ni, new C2992xh(c2791pf, new CounterConfiguration(appMetricaConfig, CounterConfigurationReporterType.CRASH), appMetricaConfig.userProfileID), t9, new C2956w6(context), new C2799pn(), C2879t4.i().l(), new C2774on(), new C2891tg(), new C6(), new X(), new C3014ye(t9));
    }

    @Override
    public final void a(@NonNull C2749nn c2749nn) {
        this.o.a(this.p.a(c2749nn, this.b));
        this.c.info("Unhandled exception received: " + c2749nn, new Object[0]);
    }

    public final void b(@NonNull AppMetricaConfig appMetricaConfig) {
        b(appMetricaConfig.errorEnvironment);
    }

    @Override
    public final String j() {
        return "[CrashReporter]";
    }

    public C2931v6(Context context, C2744ni c2744ni, C2992xh c2992xh, T9 t9, C2956w6 c2956w6, C2799pn c2799pn, C2688lc c2688lc, C2774on c2774on, C2891tg c2891tg, C6 c6, X x, C3014ye c3014ye) {
        super(context, c2744ni, c2992xh, t9, c2688lc, c2774on, c2891tg, c6, x, c3014ye);
        this.o = c2956w6;
        this.p = c2799pn;
        C2879t4.i().getClass();
    }
}
