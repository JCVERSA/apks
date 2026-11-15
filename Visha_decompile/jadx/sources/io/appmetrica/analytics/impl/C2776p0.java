package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.Location;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public final class C2776p0 implements InterfaceC2413ab {
    public static volatile C2776p0 e = null;
    public static volatile boolean f = false;
    public static volatile boolean g;
    public final Context a;
    public final C2651k0 b;
    public final FutureTask c;
    public final Ia d;

    @AnyThread
    public C2776p0(@NonNull Context context) {
        this.a = context;
        C2651k0 c2651k0B = C2879t4.i().b();
        this.b = c2651k0B;
        this.d = c2651k0B.a(context, C2879t4.i().e());
        this.c = new FutureTask(new Callable() {
            @Override
            public final Object call() {
                return this.b.p();
            }
        });
    }

    @NonNull
    @AnyThread
    public static C2776p0 a(@NonNull Context context) {
        C2776p0 c2776p0 = e;
        if (c2776p0 == null) {
            synchronized (C2776p0.class) {
                try {
                    c2776p0 = e;
                    if (c2776p0 == null) {
                        c2776p0 = new C2776p0(context);
                        c2776p0.j();
                        C2879t4.i().c.a().execute(new RunnableC2751o0(c2776p0));
                        e = c2776p0;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c2776p0;
    }

    @WorkerThread
    public static void b(boolean z) {
        c().b(z);
    }

    @WorkerThread
    public static void clearAppEnvironment() {
        c().clearAppEnvironment();
    }

    @AnyThread
    public static synchronized boolean k() {
        return f;
    }

    @AnyThread
    public static boolean l() {
        return g;
    }

    @AnyThread
    public static synchronized boolean m() {
        C2776p0 c2776p0;
        c2776p0 = e;
        return (c2776p0 == null || !c2776p0.c.isDone() || c2776p0.f().i() == null) ? false : true;
    }

    @VisibleForTesting(otherwise = 5)
    public static synchronized void n() {
        e = null;
        f = false;
        g = false;
    }

    @WorkerThread
    public static void putAppEnvironmentValue(String str, String str2) {
        c().putAppEnvironmentValue(str, str2);
    }

    @AnyThread
    public static synchronized void q() {
        f = true;
    }

    @AnyThread
    public static void r() {
        g = true;
    }

    @Nullable
    @AnyThread
    public static C2776p0 s() {
        return e;
    }

    @WorkerThread
    public static void setDataSendingEnabled(boolean z) {
        c().setDataSendingEnabled(z);
    }

    @WorkerThread
    public static void setUserProfileID(@Nullable String str) {
        c().setUserProfileID(str);
    }

    @AnyThread
    public final void c(@Nullable AppMetricaConfig appMetricaConfig) {
        this.d.a(appMetricaConfig, this);
    }

    @WorkerThread
    public final void d(@NonNull AppMetricaConfig appMetricaConfig) {
        f().a(appMetricaConfig);
        C2879t4.i().c.a().execute(new RunnableC2777p1(this.a));
    }

    @Nullable
    @AnyThread
    public final String e() {
        return f().e();
    }

    public final Ja f() {
        try {
            return (Ja) this.c.get();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Nullable
    @AnyThread
    public final Map<String, String> g() {
        return f().g();
    }

    @NonNull
    @AnyThread
    public final AdvIdentifiersResult h() {
        return f().h();
    }

    @Nullable
    @WorkerThread
    public final C2788pc i() {
        return f().i();
    }

    public final void j() {
        C2630j4 c2630j4 = C2879t4.i().c;
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.o();
            }
        };
        c2630j4.a.getClass();
        new InterruptionSafeThread(runnable, "IAA-INIT_CORE-" + ThreadFactoryC3013yd.a.incrementAndGet()).start();
    }

    public final void o() {
        C2879t4.i().q.a(this.a);
        new C2730n4(this.a).a(this.a);
        C2879t4.i().a(this.a).a();
        this.c.run();
    }

    public final Ja p() {
        Ja ja;
        C2651k0 c2651k0 = this.b;
        Context context = this.a;
        Ia ia = this.d;
        synchronized (c2651k0) {
            try {
                if (c2651k0.d == null) {
                    if (c2651k0.a(context)) {
                        c2651k0.d = new C2925v0();
                    } else {
                        c2651k0.d = new C2875t0(context, ia);
                    }
                }
                ja = c2651k0.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ja;
    }

    @WorkerThread
    public final void b(@NonNull AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        f().a(appMetricaLibraryAdapterConfig);
        C2879t4.i().c.a().execute(new RunnableC2777p1(this.a));
    }

    @NonNull
    @WorkerThread
    public final Ya c(@NonNull ReporterConfig reporterConfig) {
        return f().c(reporterConfig);
    }

    public static Nc c() {
        if (m()) {
            return e.f();
        }
        return C2879t4.i().b;
    }

    @NonNull
    @AnyThread
    public final C2512ea d() {
        return f().d();
    }

    @NonNull
    @AnyThread
    public final C2929v4 b() {
        return this.d.a();
    }

    @WorkerThread
    public static void a(@Nullable Location location) {
        c().a(location);
    }

    @WorkerThread
    public static void a(boolean z) {
        c().a(z);
    }

    @WorkerThread
    public static void a(String str, String str2) {
        c().a(str, str2);
    }

    @WorkerThread
    public final void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        f().a(deferredDeeplinkParametersListener);
    }

    @WorkerThread
    public final void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        f().a(deferredDeeplinkListener);
    }

    @WorkerThread
    public final void a(@NonNull ReporterConfig reporterConfig) {
        f().a(reporterConfig);
    }

    @WorkerThread
    public final void a(@NonNull StartupParamsCallback startupParamsCallback, @NonNull List<String> list) {
        f().a(startupParamsCallback, list);
    }

    @VisibleForTesting(otherwise = 5)
    public static synchronized void a(@Nullable C2776p0 c2776p0) {
        e = c2776p0;
    }

    @Override
    @NonNull
    public final Za a() {
        return f().a();
    }
}
