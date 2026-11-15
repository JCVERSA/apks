package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.PreloadInfo;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public final class C3012yc {
    public final Context a;
    public final C2744ni b;
    public final Ad c;
    public final T9 d;
    public final C2992xh e;
    public final C2604i2 f;
    public final C2688lc g;
    public final r h;
    public final C3014ye i;
    public final C2774on j;
    public final C2891tg k;
    public final C6 l;
    public final X m;

    public C3012yc(Context context, C2791pf c2791pf, C2744ni c2744ni, C2822ql c2822ql) {
        this.a = context;
        this.b = c2744ni;
        this.c = new Ad(c2791pf);
        T9 t9 = new T9(context);
        this.d = t9;
        this.e = new C2992xh(c2791pf, new CounterConfiguration(CounterConfigurationReporterType.MAIN));
        this.f = new C2604i2();
        this.g = C2879t4.i().l();
        this.h = new r();
        this.i = new C3014ye(t9);
        this.j = new C2774on();
        this.k = new C2891tg();
        this.l = new C6();
        this.m = new X();
    }

    public final X a() {
        return this.m;
    }

    public final Context b() {
        return this.a;
    }

    public final C6 c() {
        return this.l;
    }

    public final T9 d() {
        return this.d;
    }

    public final C3014ye e() {
        return this.i;
    }

    public final C2688lc f() {
        return this.g;
    }

    public final C2891tg g() {
        return this.k;
    }

    public final C2992xh h() {
        return this.e;
    }

    public final C2744ni i() {
        return this.b;
    }

    public final C2774on j() {
        return this.j;
    }

    public final void a(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger) {
        this.e.b.applyFromConfig(appMetricaConfig);
        C2992xh c2992xh = this.e;
        String str = appMetricaConfig.userProfileID;
        synchronized (c2992xh) {
            c2992xh.f = str;
        }
        C2992xh c2992xh2 = this.e;
        PreloadInfo preloadInfo = appMetricaConfig.preloadInfo;
        Boolean bool = (Boolean) appMetricaConfig.additionalConfig.get("YMM_preloadInfoAutoTracking");
        c2992xh2.d = new C2641jf(preloadInfo, publicLogger, bool != null ? bool.booleanValue() : false);
        StringBuilder sb = new StringBuilder("Actual session timeout is ");
        Integer num = appMetricaConfig.sessionTimeout;
        if (num == null) {
            num = 10;
        }
        sb.append(num.intValue());
        publicLogger.info(sb.toString(), new Object[0]);
    }
}
