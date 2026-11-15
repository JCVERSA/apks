package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import androidx.annotation.AnyThread;
import androidx.annotation.WorkerThread;
import defpackage.y45;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C2875t0 implements Ja {
    public final Context a;
    public final Ia b;
    public final Ke c;
    public final C2822ql d;
    public final Yf e;
    public final C2791pf f;
    public final C2445bi g;
    public final C2744ni h;
    public final L7 i;
    public final Ak j;
    public volatile C2788pc k;
    public final C2527f0 l;
    public boolean m;

    @WorkerThread
    public C2875t0(Context context, Ia ia) {
        this.a = context;
        this.b = ia;
        Ke keB = C2879t4.i().b(context);
        this.c = keB;
        C2863sd.a();
        C2879t4 c2879t4I = C2879t4.i();
        c2879t4I.k().a(new C2456c4(context));
        C2791pf c2791pfA = AbstractC2900u0.a(context, AbstractC2900u0.a(ia.b(), this));
        this.f = c2791pfA;
        L7 l7G = c2879t4I.g();
        this.i = l7G;
        C2744ni c2744niA = AbstractC2900u0.a(c2791pfA, context, ia.getDefaultExecutor());
        this.h = c2744niA;
        l7G.a(c2744niA);
        C2822ql c2822qlA = AbstractC2900u0.a(context, c2744niA, keB, ia.b());
        this.d = c2822qlA;
        c2744niA.a(c2822qlA);
        this.e = AbstractC2900u0.a(c2744niA, keB, ia.b());
        this.g = AbstractC2900u0.a(context, c2791pfA, c2744niA, ia.b(), c2822qlA);
        this.j = c2879t4I.m();
        this.l = new C2527f0(keB);
    }

    @Override
    @WorkerThread
    public final Ya c(ReporterConfig reporterConfig) {
        return this.g.b(reporterConfig);
    }

    @Override
    @WorkerThread
    public final void clearAppEnvironment() {
        j().clearAppEnvironment();
    }

    @Override
    @AnyThread
    public final C2512ea d() {
        return this.d.e();
    }

    @Override
    @AnyThread
    public final String e() {
        return this.d.d();
    }

    @Override
    @AnyThread
    public final Map<String, String> g() {
        return this.d.b();
    }

    @Override
    @AnyThread
    public final AdvIdentifiersResult h() {
        return this.d.a();
    }

    @Override
    @AnyThread
    public final C2788pc i() {
        return this.k;
    }

    public final Pa j() {
        C2788pc c2788pc = this.k;
        y45.g(c2788pc);
        return c2788pc.a;
    }

    @AnyThread
    public final C2445bi k() {
        return this.g;
    }

    @Override
    @WorkerThread
    public final void putAppEnvironmentValue(String str, String str2) {
        j().putAppEnvironmentValue(str, str2);
    }

    @Override
    @WorkerThread
    public final void setDataSendingEnabled(boolean z) {
        j().setDataSendingEnabled(z);
    }

    @Override
    @WorkerThread
    public final void setUserProfileID(String str) {
        j().setUserProfileID(str);
    }

    @Override
    @WorkerThread
    public final void a(AppMetricaConfig appMetricaConfig) {
        boolean z;
        PublicLogger orCreateMainPublicLogger = LoggerStorage.getOrCreateMainPublicLogger(appMetricaConfig.apiKey);
        boolean zA = a(orCreateMainPublicLogger, appMetricaConfig, new C2825r0(this, appMetricaConfig, orCreateMainPublicLogger));
        if (zA || this.m) {
            z = false;
        } else {
            a(appMetricaConfig, orCreateMainPublicLogger);
            z = true;
        }
        if (zA || z) {
            this.c.a(appMetricaConfig);
        } else {
            orCreateMainPublicLogger.warning("AppMetrica SDK already has been activated", new Object[0]);
        }
        if (zA) {
            ImportantLogger.INSTANCE.info("AppMetrica", "Activate AppMetrica with APIKey " + ApiKeyUtils.createPartialApiKey(appMetricaConfig.apiKey), new Object[0]);
        }
        if (z) {
            ImportantLogger.INSTANCE.info("AppMetrica", "Upgrade AppMetrica anonymous mode to normal with APIKey " + ApiKeyUtils.createPartialApiKey(appMetricaConfig.apiKey), new Object[0]);
        }
        this.m = true;
    }

    @Override
    @WorkerThread
    public final void b(boolean z) {
        j().b(z);
    }

    @Override
    @WorkerThread
    public final void a(AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        C2527f0 c2527f0 = this.l;
        AppMetricaConfig appMetricaConfigF = c2527f0.a.f();
        if (appMetricaConfigF == null) {
            C2726n0 c2726n0 = c2527f0.b;
            c2726n0.getClass();
            AppMetricaConfig.Builder builderNewConfigBuilder = AppMetricaConfig.newConfigBuilder("629a824d-c717-4ba5-bc0f-3f3968554d01");
            if (c2726n0.a.c() && y45.e(c2726n0.b.a, Boolean.TRUE)) {
                builderNewConfigBuilder.handleFirstActivationAsUpdate(true);
            }
            Boolean bool = appMetricaLibraryAdapterConfig.advIdentifiersTracking;
            if (bool == null) {
                bool = Boolean.FALSE;
            }
            builderNewConfigBuilder.withAdvIdentifiersTracking(bool.booleanValue());
            appMetricaConfigF = builderNewConfigBuilder.build();
        }
        PublicLogger mainPublicOrAnonymousLogger = LoggerStorage.getMainPublicOrAnonymousLogger();
        if (a(mainPublicOrAnonymousLogger, appMetricaConfigF, new C2850s0(this, appMetricaConfigF, mainPublicOrAnonymousLogger))) {
            ImportantLogger.INSTANCE.info("AppMetrica", "Activate AppMetrica in anonymous mode", new Object[0]);
        }
    }

    @Override
    @AnyThread
    public final void a(int i, Bundle bundle) {
        this.d.b(bundle, null);
    }

    @Override
    @WorkerThread
    public final void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        this.e.a(deferredDeeplinkParametersListener);
    }

    @Override
    @WorkerThread
    public final void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        this.e.a(deferredDeeplinkListener);
    }

    @Override
    @WorkerThread
    public final void a(ReporterConfig reporterConfig) {
        this.g.a(reporterConfig);
    }

    @Override
    @WorkerThread
    public final void a(StartupParamsCallback startupParamsCallback, List<String> list) {
        this.d.a(startupParamsCallback, list, AbstractC2712mb.c(this.f.a.getAsString("PROCESS_CFG_CLIDS")));
    }

    public final boolean a(PublicLogger publicLogger, AppMetricaConfig appMetricaConfig, Cc cc) {
        if (this.k == null) {
            a(appMetricaConfig, publicLogger);
            this.e.a();
            C2738nc c2738ncA = cc.a();
            G7 g7 = new G7(c2738ncA);
            C2788pc c2788pc = new C2788pc(c2738ncA, g7);
            this.b.c().a(g7);
            this.k = c2788pc;
            C3030z5 c3030z5 = this.j.b;
            synchronized (c3030z5) {
                try {
                    c3030z5.a = c2738ncA;
                    Iterator it = c3030z5.b.iterator();
                    while (it.hasNext()) {
                        ((Sd) it.next()).consume(c2738ncA);
                    }
                    c3030z5.b.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
        cc.a();
        return false;
    }

    public final void a(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger) {
        Boolean bool = appMetricaConfig.logs;
        Boolean bool2 = Boolean.TRUE;
        if (bool2.equals(bool)) {
            publicLogger.setEnabled(true);
            PublicLogger.INSTANCE.getAnonymousInstance().setEnabled(true);
        } else {
            publicLogger.setEnabled(false);
            PublicLogger.INSTANCE.getAnonymousInstance().setEnabled(false);
        }
        if (((Boolean) WrapUtils.getOrDefault(appMetricaConfig.crashReporting, bool2)).booleanValue()) {
            this.b.d().a(this.a, appMetricaConfig, this);
            this.b.d().b();
            publicLogger.info("Register application crash handler", new Object[0]);
        } else {
            this.b.d().a();
            publicLogger.info("Disable all crash handlers", new Object[0]);
        }
        if (((Boolean) WrapUtils.getOrDefault(appMetricaConfig.sessionsAutoTrackingEnabled, bool2)).booleanValue()) {
            this.j.a();
        } else {
            Ak ak = this.j;
            synchronized (ak) {
                if (ak.g) {
                    ak.a.b(ak.c, EnumC2700m.RESUMED);
                    ak.a.b(ak.d, EnumC2700m.PAUSED);
                    ak.g = false;
                }
            }
        }
        this.f.d(appMetricaConfig);
        C2822ql c2822ql = this.d;
        c2822ql.e = publicLogger;
        c2822ql.b(appMetricaConfig.customHosts);
        C2822ql c2822ql2 = this.d;
        Object obj = appMetricaConfig.additionalConfig.get("YMM_clids");
        c2822ql2.a(obj instanceof Map ? (Map) obj : null);
        String str = (String) appMetricaConfig.additionalConfig.get("YMM_distributionReferrer");
        this.d.a(str);
        if (str != null) {
            this.d.b("api");
        }
        this.h.a(appMetricaConfig.locationTracking, appMetricaConfig.dataSendingEnabled, appMetricaConfig.advIdentifiersTracking);
        this.d.i();
    }

    @Override
    @WorkerThread
    public final void a(Location location) {
        j().a(location);
    }

    @Override
    @WorkerThread
    public final void a(boolean z) {
        j().a(z);
    }

    @Override
    @WorkerThread
    public final void a(String str, String str2) {
        j().a(str, str2);
    }

    @Override
    public final Za a() {
        return this.g;
    }
}
