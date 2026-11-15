package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;
import io.appmetrica.analytics.AnrListener;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.ExternalAttribution;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashClientConfig;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashClientModule;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class C2738nc extends T2 implements Pa {
    public static final Long r = Long.valueOf(TimeUnit.SECONDS.toMillis(1));
    public final C2450bn o;
    public final C3012yc p;
    public final C2763oc q;

    public C2738nc(C3012yc c3012yc) {
        super(c3012yc.b(), c3012yc.i(), c3012yc.h(), c3012yc.d(), c3012yc.f(), c3012yc.j(), c3012yc.g(), c3012yc.c(), c3012yc.a(), c3012yc.e());
        this.o = new C2450bn(new Rd("Referral url"));
        this.p = c3012yc;
        this.q = new C2763oc(this);
        l();
    }

    @Override
    public final void a(@NonNull String str, boolean z) {
        this.c.info("App opened via deeplink: " + WrapUtils.wrapToTag(str), new Object[0]);
        C2744ni c2744ni = this.h;
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        HashMap map = new HashMap();
        map.put("type", "open");
        map.put(AuthInfo.Component.CODE_LINK, str);
        map.put(TtmlNode.TEXT_EMPHASIS_AUTO, Boolean.valueOf(z));
        String strB = AbstractC2712mb.b(map);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(strB, "", 8208, 0, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
    }

    @Override
    public final void b(@NonNull String str) {
        this.o.a(str);
        C2744ni c2744ni = this.h;
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        HashMap map = new HashMap();
        map.put("type", "referral");
        map.put(AuthInfo.Component.CODE_LINK, str);
        map.put(TtmlNode.TEXT_EMPHASIS_AUTO, Boolean.FALSE);
        String strB = AbstractC2712mb.b(map);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(strB, "", 8208, 0, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
        this.c.info("Referral URL received: " + WrapUtils.wrapToTag(str), new Object[0]);
    }

    @Override
    public final void c() {
        C2763oc c2763oc = this.q;
        synchronized (c2763oc) {
            c2763oc.b.a(c2763oc.a);
        }
    }

    @Override
    public final List<String> f() {
        return this.b.a.b();
    }

    @Override
    public final String j() {
        return "[MainReporter]";
    }

    @Override
    public final void k() {
        super.k();
        C2879t4.i().k().b();
    }

    public final void l() {
        C2744ni c2744ni = this.h;
        c2744ni.c.a(this.b.a);
        C2604i2 c2604i2 = this.p.f;
        C2713mc c2713mc = new C2713mc(this);
        long jLongValue = r.longValue();
        synchronized (c2604i2) {
            c2604i2.a(c2713mc, jLongValue);
        }
    }

    @Override
    public final void a(@NonNull EnumC2750o enumC2750o) {
        if (enumC2750o == EnumC2750o.b) {
            this.c.info("Enable activity auto tracking", new Object[0]);
            return;
        }
        this.c.warning("Could not enable activity auto tracking. " + enumC2750o.a, new Object[0]);
    }

    @Override
    public final void b(@Nullable Activity activity) {
        if (this.p.h.a(activity, EnumC2800q.PAUSED)) {
            this.c.info("Pause session", new Object[0]);
            c(activity != null ? activity.getClass().getSimpleName() : null);
            C2604i2 c2604i2 = this.p.f;
            synchronized (c2604i2) {
                for (C2579h2 c2579h2 : c2604i2.a) {
                    if (!c2579h2.d) {
                        c2579h2.d = true;
                        c2579h2.b.executeDelayed(c2579h2.e, c2579h2.c);
                    }
                }
            }
        }
    }

    @Override
    public final void a(@Nullable Activity activity) {
        if (this.p.h.a(activity, EnumC2800q.RESUMED)) {
            this.c.info("Resume session", new Object[0]);
            d(activity != null ? activity.getClass().getSimpleName() : null);
            C2604i2 c2604i2 = this.p.f;
            synchronized (c2604i2) {
                for (C2579h2 c2579h2 : c2604i2.a) {
                    if (c2579h2.d) {
                        c2579h2.d = false;
                        c2579h2.b.remove(c2579h2.e);
                        C2738nc c2738nc = c2579h2.a.a;
                        c2738nc.h.c.b(c2738nc.b.a);
                    }
                }
            }
        }
    }

    @Override
    public final void b(boolean z) {
        this.c.info("Set advIdentifiersTracking to %s", Boolean.valueOf(z));
        this.b.b.setAdvIdentifiersTracking(z);
    }

    public final void a(AppMetricaConfig appMetricaConfig, boolean z) {
        if (z) {
            clearAppEnvironment();
        }
        a(appMetricaConfig.appEnvironment);
        b(appMetricaConfig.errorEnvironment);
        Boolean bool = (Boolean) WrapUtils.getOrDefault(appMetricaConfig.nativeCrashReporting, Boolean.TRUE);
        boolean zBooleanValue = bool.booleanValue();
        this.c.info("native crash reporting enabled: %b", bool);
        if (zBooleanValue) {
            Ad ad = this.p.c;
            Context context = this.a;
            ad.d = new C3025z0(this.b.b.getApiKey(), ad.a.a.getAsString("PROCESS_CFG_PACKAGE_NAME"), CounterConfigurationReporterType.MAIN, ad.a.a.getAsInteger("PROCESS_CFG_PROCESS_ID").intValue(), ad.a.a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID"), this.b.d());
            File nativeCrashDirectory = FileUtils.getNativeCrashDirectory(context);
            C3025z0 c3025z0 = null;
            String absolutePath = nativeCrashDirectory != null ? nativeCrashDirectory.getAbsolutePath() : null;
            if (absolutePath != null) {
                NativeCrashClientModule nativeCrashClientModule = ad.b;
                A0 a0 = ad.c;
                C3025z0 c3025z1 = ad.d;
                if (c3025z1 == null) {
                    y45.B("nativeCrashMetadata");
                } else {
                    c3025z0 = c3025z1;
                }
                a0.getClass();
                nativeCrashClientModule.initHandling(context, new NativeCrashClientConfig(absolutePath, A0.a(c3025z0)));
            }
        }
        C2763oc c2763oc = this.q;
        synchronized (c2763oc) {
            try {
                Integer num = appMetricaConfig.anrMonitoringTimeout;
                c2763oc.a = num != null ? num.intValue() : 5;
                Boolean bool2 = appMetricaConfig.anrMonitoring;
                if (bool2 == null) {
                    bool2 = Boolean.FALSE;
                }
                if (bool2.booleanValue()) {
                    c2763oc.b.a(c2763oc.a);
                } else {
                    c2763oc.b.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void a(@Nullable Location location) {
        this.b.b.setManualLocation(location);
        this.c.info("Set location: %s", location);
    }

    @Override
    public final void a(boolean z) {
        this.b.b.setLocationTracking(z);
    }

    @Override
    public final void a(@NonNull Cdo cdo) {
        PublicLogger publicLogger = this.c;
        synchronized (cdo) {
            cdo.b = publicLogger;
        }
        Iterator it = cdo.a.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).consume(publicLogger);
        }
        cdo.a.clear();
    }

    @Override
    public final void a(@NonNull AnrListener anrListener) {
        this.q.a(anrListener);
    }

    @Override
    public final void a(@NonNull ExternalAttribution externalAttribution) {
        this.c.info("External attribution received: %s", externalAttribution);
        C2744ni c2744ni = this.h;
        byte[] bytes = externalAttribution.toBytes();
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(bytes, "", 42, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
    }

    @Override
    public final void a(String str, String str2) {
        super.a(str, str2);
        Ad ad = this.p.c;
        String strD = this.b.d();
        C3025z0 c3025z0 = ad.d;
        if (c3025z0 != null) {
            C3025z0 c3025z1 = new C3025z0(c3025z0.a, c3025z0.b, c3025z0.c, c3025z0.d, c3025z0.e, strD);
            ad.d = c3025z1;
            NativeCrashClientModule nativeCrashClientModule = ad.b;
            ad.c.getClass();
            nativeCrashClientModule.updateAppMetricaMetadata(A0.a(c3025z1));
        }
    }
}
