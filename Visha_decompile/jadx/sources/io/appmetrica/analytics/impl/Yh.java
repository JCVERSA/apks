package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.plugins.IPluginReporter;
import io.appmetrica.analytics.profile.UserProfile;
import java.util.Map;

public final class Yh implements Ya {
    public final C2801q0 a;
    public final C2867sh b;
    public final IHandlerExecutor c;
    public final Context d;
    public final ReporterConfig e;
    public final C2595hi f;
    public final De g;

    public Yh(@NonNull ICommonExecutor iCommonExecutor, @NonNull Context context, @NonNull String str) {
        this(context.getApplicationContext(), str, new C2801q0());
    }

    public static Ya a(C2801q0 c2801q0, Context context, ReporterConfig reporterConfig) {
        c2801q0.getClass();
        return C2776p0.a(context).f().c(reporterConfig);
    }

    public final void c(@NonNull String str) {
        ReporterConfig reporterConfigBuild = ReporterConfig.newConfigBuilder(str).build();
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Lh(this, reporterConfigBuild));
    }

    @Override
    public final void clearAppEnvironment() {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Vh(this));
    }

    @Override
    @NonNull
    public final IPluginReporter getPluginExtension() {
        return this.g;
    }

    @Override
    public final void pauseSession() {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Dh(this));
    }

    @Override
    public final void putAppEnvironmentValue(@NonNull String str, @Nullable String str2) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Uh(this, str, str2));
    }

    @Override
    public final void reportAdRevenue(@NonNull AdRevenue adRevenue) {
        this.b.h.a(adRevenue);
        this.f.getClass();
        this.c.execute(new Hh(this, adRevenue));
    }

    @Override
    public final void reportAnr(@NonNull Map<Thread, StackTraceElement[]> map) {
        this.b.j.a(map);
        this.f.getClass();
        this.c.execute(new Rh(this, CollectionUtils.getListFromMap(map)));
    }

    @Override
    public final void reportECommerce(@NonNull ECommerceEvent eCommerceEvent) {
        this.b.i.a(eCommerceEvent);
        this.f.getClass();
        this.c.execute(new Jh(this, eCommerceEvent));
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable Throwable th) {
        this.b.b.a(str);
        this.f.getClass();
        if (th == null) {
            th = new R1();
            th.fillInStackTrace();
        }
        this.c.execute(new RunnableC3042zh(this, str, th));
    }

    @Override
    public final void reportEvent(@NonNull String str) {
        this.b.a.a(str);
        this.f.getClass();
        this.c.execute(new Wh(this, str));
    }

    @Override
    public final void reportRevenue(@NonNull Revenue revenue) {
        this.b.g.a(revenue);
        this.f.getClass();
        this.c.execute(new Gh(this, revenue));
    }

    @Override
    public final void reportUnhandledException(@NonNull Throwable th) {
        this.b.e.a(th);
        this.f.getClass();
        this.c.execute(new Bh(this, th));
    }

    @Override
    public final void reportUserProfile(@NonNull UserProfile userProfile) {
        this.b.f.a(userProfile);
        this.f.getClass();
        this.c.execute(new Fh(this, userProfile));
    }

    @Override
    public final void resumeSession() {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Ch(this));
    }

    @Override
    public final void sendEventsBuffer() {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Th(this));
    }

    @Override
    public final void setDataSendingEnabled(boolean z) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Kh(this, z));
    }

    @Override
    public final void setSessionExtra(@NonNull String str, @Nullable byte[] bArr) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Oh(this, str, bArr));
    }

    @Override
    public final void setUserProfileID(@Nullable String str) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Eh(this, str));
    }

    public Yh(Context context, String str, C2801q0 c2801q0) {
        this(context, new C2867sh(), c2801q0, new C2595hi(), ReporterConfig.newConfigBuilder(str).build());
    }

    @Override
    public final void a(@NonNull C2749nn c2749nn) {
        this.b.d.a(c2749nn);
        this.f.getClass();
        this.c.execute(new Qh(this, c2749nn));
    }

    public Yh(Context context, C2867sh c2867sh, C2801q0 c2801q0, C2595hi c2595hi, ReporterConfig reporterConfig) {
        this(context, c2867sh, c2801q0, c2595hi, reporterConfig, new De(new Ih(c2801q0, context, reporterConfig)));
    }

    @Override
    public final void reportAdRevenue(@NonNull AdRevenue adRevenue, boolean z) {
        this.b.h.a(adRevenue);
        this.f.getClass();
        this.c.execute(new Ph(this, adRevenue, z));
    }

    @Override
    public final void reportEvent(@NonNull String str, @Nullable String str2) {
        this.b.a.a(str);
        this.f.getClass();
        this.c.execute(new Xh(this, str, str2));
    }

    public Yh(Context context, C2867sh c2867sh, C2801q0 c2801q0, C2595hi c2595hi, ReporterConfig reporterConfig, De de) {
        this.c = C2879t4.i().e().a();
        this.d = context;
        this.b = c2867sh;
        this.a = c2801q0;
        this.f = c2595hi;
        this.e = reporterConfig;
        this.g = de;
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable String str2) {
        reportError(str, str2, null);
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable String str2, @Nullable Throwable th) {
        this.b.c.a(str);
        this.f.getClass();
        this.c.execute(new Ah(this, str, str2, th));
    }

    @Override
    public final void a(@NonNull S s) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Sh(this, s));
    }

    @Override
    public final void reportEvent(@NonNull String str, @Nullable Map<String, Object> map) {
        this.b.a.a(str);
        this.f.getClass();
        this.c.execute(new RunnableC3017yh(this, str, CollectionUtils.getListFromMap(map)));
    }

    public final void a(@NonNull ReporterConfig reporterConfig) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Mh(this, reporterConfig));
    }

    @Override
    public final void reportEvent(@NonNull ModuleEvent moduleEvent) {
        this.b.getClass();
        this.f.getClass();
        this.c.execute(new Nh(this, moduleEvent));
    }
}
