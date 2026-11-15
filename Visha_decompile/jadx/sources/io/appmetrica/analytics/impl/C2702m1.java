package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.AnrListener;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ExternalAttribution;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.impl.C2702m1;
import io.appmetrica.analytics.internal.IdentifiersResult;
import io.appmetrica.analytics.internal.js.AppMetricaInitializerJsInterface;
import io.appmetrica.analytics.internal.js.AppMetricaJsInterface;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import io.appmetrica.analytics.profile.UserProfile;
import java.util.List;
import java.util.Map;

public final class C2702m1 {
    public final C2801q0 a;
    public final Cdo b;
    public final C2570gi c;
    public final L7 d;
    public final Jk e;
    public final K2 f;
    public final Fm g;
    public final Ak h;

    public C2702m1(C2801q0 c2801q0, K2 k2, Jk jk, Cdo cdo, Fm fm, C2570gi c2570gi, L7 l7, Ak ak) {
        this.a = c2801q0;
        this.b = cdo;
        this.c = c2570gi;
        this.d = l7;
        this.f = k2;
        this.g = fm;
        this.e = jk;
        this.h = ak;
    }

    public static IHandlerExecutor c() {
        return C2879t4.i().c.a();
    }

    public final void a(@NonNull final Context context, @NonNull final AppMetricaConfig appMetricaConfig) {
        K2 k2 = this.f;
        k2.f.a(context);
        k2.b.a(appMetricaConfig);
        Fm fm = this.g;
        Context applicationContext = context.getApplicationContext();
        fm.e.a(applicationContext);
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(appMetricaConfig.apiKey);
        if (((Boolean) WrapUtils.getOrDefault(appMetricaConfig.sessionsAutoTrackingEnabled, Boolean.TRUE)).booleanValue()) {
            orCreatePublicLogger.info("Session auto tracking enabled", new Object[0]);
            fm.d.a();
        } else {
            orCreatePublicLogger.info("Session auto tracking disabled", new Object[0]);
        }
        fm.a.getClass();
        C2776p0 c2776p0A = C2776p0.a(applicationContext);
        c2776p0A.d.a(appMetricaConfig, c2776p0A);
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new Runnable() {
            @Override
            public final void run() {
                this.b.b(context, appMetricaConfig);
            }
        });
        this.a.getClass();
        synchronized (C2776p0.class) {
            C2776p0.f = true;
        }
    }

    @Nullable
    public final String b() {
        this.a.getClass();
        C2776p0 c2776p0 = C2776p0.e;
        if (c2776p0 == null) {
            return null;
        }
        return c2776p0.f().e();
    }

    public final C2788pc d() {
        this.a.getClass();
        return C2776p0.e.f().i();
    }

    public final void e() {
        d().a.a(this.h.a());
    }

    public final void f() {
        this.f.a.a(null);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new O0(this));
    }

    public final void c(@Nullable Activity activity) {
        this.f.a.a(null);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new Z0(this, activity));
    }

    public final void b(Context context, AppMetricaConfig appMetricaConfig) {
        C2801q0 c2801q0 = this.a;
        Context applicationContext = context.getApplicationContext();
        c2801q0.getClass();
        C2776p0 c2776p0A = C2776p0.a(applicationContext);
        c2776p0A.f().a(this.d.b(appMetricaConfig));
        Context context2 = c2776p0A.a;
        ((G9) C2879t4.i().c.a()).execute(new RunnableC2777p1(context2));
    }

    public final void e(@Nullable String str) {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new M0(this, str));
    }

    public final void d(@NonNull String str) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.j.a(str);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new H0(this, str));
    }

    public C2702m1() {
        this(C2879t4.i().c(), new Cdo());
    }

    public final void c(@NonNull String str, @Nullable String str2) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.s.a(str);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new RunnableC2578h1(this, str, str2));
    }

    public C2702m1(C2801q0 c2801q0, Cdo cdo) {
        this(c2801q0, new K2(c2801q0), new Jk(c2801q0), cdo, new Fm(c2801q0, cdo), C2570gi.a(), C2879t4.i().g(), C2879t4.i().m());
    }

    public final void d(@NonNull String str, @Nullable String str2) {
        K2 k2 = this.f;
        k2.a.a(null);
        if (k2.o.a(str).a) {
            this.g.getClass();
            IHandlerExecutor iHandlerExecutorC = c();
            ((G9) iHandlerExecutorC).b.post(new W0(this, str, str2));
        }
    }

    public final void b(@NonNull String str) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.s.a(str);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new RunnableC2553g1(this, str));
    }

    public final void c(boolean z) {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new J0(this, z));
    }

    public final void b(@NonNull Activity activity) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.c.a(activity);
        this.g.getClass();
        Intent intentA = Fm.a(activity);
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new E0(this, intentA));
    }

    public final void c(@NonNull String str) {
        if (this.e.a((Void) null).a && this.f.n.a(str).a) {
            this.g.getClass();
            IHandlerExecutor iHandlerExecutorC = c();
            ((G9) iHandlerExecutorC).b.post(new X0(this, str));
        }
    }

    public final void a(@Nullable Activity activity) {
        this.f.a.a(null);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new RunnableC2528f1(this, activity));
    }

    public final void b(boolean z) {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new L0(this, z));
    }

    public final void a(@NonNull Application application) {
        this.f.e.a(application);
        this.g.c.a(application);
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new Runnable() {
            @Override
            public final void run() {
                this.b.e();
            }
        });
    }

    public final void b(@NonNull String str, @Nullable String str2) {
        this.f.l.a(str);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new U0(this, str, str2));
    }

    public final void a(@NonNull String str, @Nullable Map<String, Object> map) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.s.a(str);
        this.g.getClass();
        List listFromMap = CollectionUtils.getListFromMap(map);
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new RunnableC2603i1(this, str, listFromMap));
    }

    public final void b(@NonNull final Object... objArr) {
        this.f.a.a(null);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new Runnable() {
            @Override
            public final void run() {
                C2702m1.a(objArr);
            }
        });
    }

    public final void b(@NonNull Context context) {
        this.f.f.a(context);
        this.g.e.a(context);
        this.a.getClass();
        C2776p0.a(context);
    }

    public final void a(@NonNull String str, @Nullable Throwable th) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.t.a(str);
        this.g.getClass();
        if (th == null) {
            th = new R1();
            th.fillInStackTrace();
        }
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new RunnableC2627j1(this, str, th));
    }

    public final void a(@NonNull String str, @Nullable String str2, @Nullable Throwable th) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.u.a(str);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new RunnableC2652k1(this, str, str2, th));
    }

    public final void a(@NonNull Throwable th) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.v.a(th);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new RunnableC2677l1(this, th));
    }

    public final void a(@NonNull String str) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.i.a(str);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new F0(this, str));
    }

    public final void a(@NonNull Intent intent) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.d.a(intent);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new G0(this, intent));
    }

    public final void a(@Nullable Location location) {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new I0(this, location));
    }

    public final void a(boolean z) {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new K0(this, z));
    }

    public final void a(@NonNull UserProfile userProfile) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.w.a(userProfile);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new N0(this, userProfile));
    }

    public final void a(@NonNull Revenue revenue) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.x.a(revenue);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new P0(this, revenue));
    }

    public final void a(@NonNull AdRevenue adRevenue) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.y.a(adRevenue);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new Q0(this, adRevenue));
    }

    public final void a(@NonNull ECommerceEvent eCommerceEvent) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.z.a(eCommerceEvent);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new R0(this, eCommerceEvent));
    }

    public final void a(@NonNull DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.g.a(deferredDeeplinkParametersListener);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new S0(this, deferredDeeplinkParametersListener));
    }

    public final void a(@NonNull DeferredDeeplinkListener deferredDeeplinkListener) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.g.a(deferredDeeplinkListener);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new T0(this, deferredDeeplinkListener));
    }

    @NonNull
    public final Ya a(@NonNull Context context, @NonNull String str) {
        K2 k2 = this.f;
        k2.f.a(context);
        k2.k.a(str);
        Fm fm = this.g;
        fm.e.a(context.getApplicationContext());
        return this.c.a(context.getApplicationContext(), str);
    }

    public final void a(@NonNull Context context, @NonNull ReporterConfig reporterConfig) {
        K2 k2 = this.f;
        k2.f.a(context);
        k2.h.a(reporterConfig);
        Fm fm = this.g;
        fm.e.a(context.getApplicationContext());
        C2570gi c2570gi = this.c;
        Context applicationContext = context.getApplicationContext();
        if (((Yh) c2570gi.a.get(reporterConfig.apiKey)) == null) {
            synchronized (c2570gi.a) {
                try {
                    if (((Yh) c2570gi.a.get(reporterConfig.apiKey)) == null) {
                        String str = reporterConfig.apiKey;
                        IHandlerExecutor iHandlerExecutorA = C2879t4.i().c.a();
                        c2570gi.b.getClass();
                        if (C2776p0.e == null) {
                            ((G9) iHandlerExecutorA).b.post(new RunnableC2520ei(c2570gi, applicationContext));
                        }
                        Yh yh = new Yh(applicationContext.getApplicationContext(), str, new C2801q0());
                        c2570gi.a.put(str, yh);
                        yh.a(reporterConfig);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void a(@NonNull WebView webView) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.m.a(webView);
        Cdo cdo = this.g.b;
        cdo.getClass();
        try {
            if (webView.getSettings().getJavaScriptEnabled()) {
                webView.addJavascriptInterface(new AppMetricaJsInterface(this), "AppMetrica");
                webView.addJavascriptInterface(new AppMetricaInitializerJsInterface(this), "AppMetricaInitializer");
                ao aoVar = new ao();
                synchronized (cdo) {
                    try {
                        PublicLogger publicLogger = cdo.b;
                        if (publicLogger == null) {
                            cdo.a.add(aoVar);
                        } else {
                            aoVar.consume(publicLogger);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } else {
                cdo.a(new bo());
            }
        } catch (Throwable th2) {
            cdo.a(new co(th2));
        }
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new V0(this));
    }

    @NonNull
    public final IdentifiersResult a(@NonNull Context context) {
        this.f.f.a(context);
        Fm fm = this.g;
        Context applicationContext = context.getApplicationContext();
        fm.e.a(applicationContext);
        fm.f.a(applicationContext);
        return C2879t4.i().a(context.getApplicationContext()).a();
    }

    public final void a(@NonNull String str, @Nullable String str2) {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new Y0(this, str, str2));
    }

    public final void a() {
        this.f.getClass();
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new RunnableC2403a1(this));
    }

    public final void a(@NonNull Context context, @NonNull StartupParamsCallback startupParamsCallback, @NonNull List<String> list) {
        K2 k2 = this.f;
        k2.f.a(context);
        k2.p.a(startupParamsCallback);
        Fm fm = this.g;
        fm.e.a(context.getApplicationContext());
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new RunnableC2428b1(this, context, startupParamsCallback, list));
    }

    public final void a(@NonNull AnrListener anrListener) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.q.a(anrListener);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new RunnableC2453c1(this, anrListener));
    }

    public final void a(@NonNull ExternalAttribution externalAttribution) {
        K2 k2 = this.f;
        k2.a.a(null);
        k2.r.a(externalAttribution);
        this.g.getClass();
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new RunnableC2478d1(this, externalAttribution));
    }

    public static void a(Object[] objArr) {
        ModuleAdRevenueProcessor moduleAdRevenueProcessorA = C2879t4.i().k().a();
        if (moduleAdRevenueProcessorA != null) {
            moduleAdRevenueProcessorA.process(objArr);
        }
    }

    public final void a(@NonNull Map<Thread, StackTraceElement[]> map) {
        this.f.A.a(map);
        this.g.getClass();
        List listFromMap = CollectionUtils.getListFromMap(map);
        IHandlerExecutor iHandlerExecutorC = c();
        ((G9) iHandlerExecutorC).b.post(new RunnableC2503e1(this, listFromMap));
    }

    public static Pa a(C2702m1 c2702m1) {
        return c2702m1.d().a;
    }
}
