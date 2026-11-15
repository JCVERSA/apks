package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Handler;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.impl.C2626j0;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import io.appmetrica.analytics.logger.common.BaseReleaseLogger;

public final class C2626j0 implements Ia {
    public final Context a;
    public final IHandlerExecutor b;
    public final C2929v4 c = new C2929v4();
    public final Handler d = f().getHandler();
    public final W1 e = new W1();
    public final C2812qb f = new C2812qb();

    public C2626j0(Context context, C2630j4 c2630j4) {
        this.a = context;
        this.b = c2630j4.a();
        BaseReleaseLogger.init(context);
        f().execute(new Runnable() {
            @Override
            public final void run() {
                C2626j0.e();
            }
        });
        a().a();
        Z3.a().onCreate();
    }

    public static final void e() {
        ImportantLogger.INSTANCE.info("AppMetrica", "Initializing of AppMetrica, " + StringUtils.capitalize("release") + " type, Version 7.7.2, API Level " + AppMetrica.getLibraryApiLevel() + ", Dated 05.04.2025.", new Object[0]);
    }

    @Override
    public final C2929v4 a() {
        return this.c;
    }

    @Override
    public final Handler b() {
        return this.d;
    }

    @Override
    public final W1 c() {
        return this.e;
    }

    @Override
    public final C2812qb d() {
        return this.f;
    }

    public final IHandlerExecutor f() {
        return this.b;
    }

    @Override
    public final ICommonExecutor getDefaultExecutor() {
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0029 A[Catch: all -> 0x000e, TryCatch #0 {all -> 0x000e, blocks: (B:3:0x0001, B:6:0x0007, B:8:0x000b, B:11:0x0010, B:14:0x0017, B:19:0x0032, B:21:0x0036, B:22:0x0038, B:25:0x003f, B:28:0x004c, B:26:0x0045, B:15:0x001d, B:17:0x0029), top: B:33:0x0001 }] */
    @Override
    public final synchronized void a(AppMetricaConfig appMetricaConfig, InterfaceC2413ab interfaceC2413ab) {
        try {
            if (!C2776p0.g) {
                if (appMetricaConfig == null) {
                    this.f.c();
                    this.f.b();
                    if (appMetricaConfig != null) {
                        this.f.a(this.a, appMetricaConfig, interfaceC2413ab);
                    }
                } else {
                    Boolean bool = appMetricaConfig.crashReporting;
                    if (bool == null) {
                        bool = Boolean.TRUE;
                    }
                    if (bool.booleanValue()) {
                        this.f.c();
                        this.f.b();
                        if (appMetricaConfig != null) {
                            this.f.a(this.a, appMetricaConfig, interfaceC2413ab);
                        }
                    } else {
                        this.f.a();
                    }
                }
                if (appMetricaConfig == null) {
                    this.e.b();
                } else {
                    Boolean bool2 = appMetricaConfig.appOpenTrackingEnabled;
                    if (bool2 == null) {
                        bool2 = Boolean.TRUE;
                    }
                    if (bool2.booleanValue()) {
                        this.e.b();
                    } else {
                        this.e.c();
                    }
                }
                if (appMetricaConfig != null) {
                    C2776p0.g = true;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
