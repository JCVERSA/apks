package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public final class C2850s0 implements Cc {
    public final C2875t0 a;
    public final AppMetricaConfig b;
    public final PublicLogger c;

    public C2850s0(C2875t0 c2875t0, AppMetricaConfig appMetricaConfig, PublicLogger publicLogger) {
        this.a = c2875t0;
        this.b = appMetricaConfig;
        this.c = publicLogger;
    }

    @Override
    public final C2738nc a() {
        C2875t0 c2875t0 = this.a;
        return c2875t0.g.a(this.b, this.c, c2875t0.i.g);
    }
}
