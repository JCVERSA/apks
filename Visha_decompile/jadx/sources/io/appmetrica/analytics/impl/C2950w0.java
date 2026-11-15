package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.impl.C2950w0;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;

public final class C2950w0 {
    public final C2801q0 a;
    public final Gb b;
    public final Hb c;
    public final Jb d;
    public final IHandlerExecutor e;

    public C2950w0() {
        C2801q0 c2801q0C = C2879t4.i().c();
        this.a = c2801q0C;
        this.b = new Gb(c2801q0C);
        this.c = new Hb(c2801q0C);
        this.d = new Jb();
        this.e = C2879t4.i().e().a();
    }

    public final void a(Context context, final AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        Gb gb = this.b;
        if (!gb.a.a(context).a || !gb.b.a(appMetricaLibraryAdapterConfig).a) {
            ImportantLogger.INSTANCE.info("[AppMetricaLibraryAdapterProxy]", "Activation failed due to context is null", new Object[0]);
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        Hb hb = this.c;
        hb.b.a(applicationContext);
        LoggerStorage.getMainPublicOrAnonymousLogger().info("Session autotracking enabled", new Object[0]);
        C2879t4.i().f.a();
        hb.a.getClass();
        C2776p0 c2776p0A = C2776p0.a(applicationContext);
        c2776p0A.d.a(null, c2776p0A);
        this.e.execute(new Runnable() {
            @Override
            public final void run() {
                C2950w0.a(this.b, applicationContext, appMetricaLibraryAdapterConfig);
            }
        });
        this.a.getClass();
        synchronized (C2776p0.class) {
            C2776p0.f = true;
        }
    }

    public static final void a(C2950w0 c2950w0, Context context, AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        c2950w0.a.getClass();
        C2776p0 c2776p0A = C2776p0.a(context);
        c2776p0A.f().a(appMetricaLibraryAdapterConfig);
        C2879t4.i().c.a().execute(new RunnableC2777p1(c2776p0A.a));
    }
}
