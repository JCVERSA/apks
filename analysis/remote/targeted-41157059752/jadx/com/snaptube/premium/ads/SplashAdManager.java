package com.snaptube.premium.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.view.Lifecycle;
import androidx.view.j;
import com.dayuwuxian.clean.ui.base.AppUninstallPopupActivity;
import com.snaptube.ad.frequency.FrequencyControlManager;
import com.snaptube.ads.SplashScreenWrapper;
import com.snaptube.ads.activity.SplashAdActivity;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.ads.selfbuild.tracking.SnaptubeTrackingManager;
import com.snaptube.ads_log_v2.AdImpressionSceneTrack;
import com.snaptube.base.BaseApplication;
import com.snaptube.premium.ClipMonitor.ClipMonitorService;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.activity.ActionSendDispatchActivity;
import com.snaptube.premium.activity.ChooseDownloadPathActivity;
import com.snaptube.premium.activity.ChooseFormatActivity;
import com.snaptube.premium.activity.ExploreActivity;
import com.snaptube.premium.activity.ExternalDownloadDialogWrapperActivity;
import com.snaptube.premium.activity.LockFromInsideActivity;
import com.snaptube.premium.activity.LockFromSendActivity;
import com.snaptube.premium.activity.PhoneBoostActivity;
import com.snaptube.premium.activity.PhoneBoostInsideActivity;
import com.snaptube.premium.activity.PhoneBoostJumpActivity;
import com.snaptube.premium.activity.VideoWebViewActivity;
import com.snaptube.premium.activity.YoutubeVideoWebViewActivity;
import com.snaptube.premium.ads.splash.HotSplashAdManager;
import com.snaptube.premium.ads.splash.RewardSplashAdActivity;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.guide.launch.LaunchGuideActivity;
import com.snaptube.premium.log.AppStartRecorder;
import com.snaptube.premium.log.LaunchLogger;
import com.snaptube.premium.log.counter.EventCounterManager;
import com.snaptube.premium.web.WebViewExtKt;
import com.snaptube.util.ProductionEnv;
import com.vungle.ads.BuildConfig;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.base.utils.ThreadPool;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import net.pubnative.mediation.utils.NewUserProtectionUtils;
import o.ba3;
import o.ce;
import o.d1;
import o.fc1;
import o.hc;
import o.hn7;
import o.ic;
import o.in7;
import o.iq7;
import o.jb;
import o.k5;
import o.l10;
import o.lw2;
import o.m01;
import o.n9;
import o.od;
import o.r23;
import o.sn;
import o.t14;
import o.x24;
import o.xu0;
import o.zh4;

public class SplashAdManager implements androidx.view.g {
    public static final long q;
    public static final long r;
    public static volatile SplashAdManager s;
    public static boolean t;
    public static final t14 u;
    public static final Set v;
    public static final List w;
    public static final Set x;
    public final Application a;
    public String b;
    public boolean c;
    public String d;
    public final Handler g;
    public long h;

    public final Application.ActivityLifecycleCallbacks f409o;
    public final n9 p;
    public boolean e = false;
    public boolean f = false;
    public long i = -1;
    public final ba3 j = (ba3) zh4.b("IAdsManager");
    public boolean k = false;
    public boolean l = true;
    public long m = -1;
    public final Runnable n = new in7(this);

    public class AnonymousClass2 extends ArrayList<String> {
        public AnonymousClass2() {
            add("com.mbridge.msdk.reward.player.MBRewardVideoActivity");
            add("com.mbridge.msdk.activity.MBCommonActivity");
            add("com.mbridge.msdk.out.LoadingActivity");
        }
    }

    public class a implements t14 {
        public final Set a = new HashSet();

        public Set a() {
            if (this.a.isEmpty()) {
                this.a.addAll(xu0.k(ExternalDownloadDialogWrapperActivity.class.getName(), RewardSplashAdActivity.class.getName(), ActionSendDispatchActivity.class.getName(), ChooseFormatActivity.class.getName(), ChooseDownloadPathActivity.class.getName(), PhoneBoostActivity.class.getName(), PhoneBoostInsideActivity.class.getName(), PhoneBoostJumpActivity.class.getName(), AppUninstallPopupActivity.class.getName(), LockFromSendActivity.class.getName(), LockFromInsideActivity.class.getName(), VideoWebViewActivity.class.getName(), YoutubeVideoWebViewActivity.class.getName(), LaunchGuideActivity.class.getName()));
            }
            return this.a;
        }

        @Override
        public Object getValue() {
            return a();
        }
    }

    public class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            if (message.what == 0) {
                SplashAdManager.U(SplashAdManager.this);
            }
        }
    }

    public class c implements Runnable {
        public final long a;

        public c(long j) {
            this.a = j;
        }

        @Override
        public void run() {
            HashMap map = new HashMap(16);
            map.put("app_start_pos", AppStartRecorder.a());
            map.put("activity_on_create", Long.valueOf(this.a));
            SplashAdActivity.g1(SplashAdManager.c(SplashAdManager.this), "cold_launch", AdsPos.INTERSTITIAL_LAUNCH.pos(), map);
        }
    }

    public class d implements Application.ActivityLifecycleCallbacks {
        public final List a = new ArrayList();

        public d() {
        }

        @Override
        public void onActivityCreated(Activity activity, Bundle bundle) {
            SplashAdManager.this.h0();
            if (this.a.size() == 0) {
                SplashScreenWrapper splashScreenWrapper = SplashScreenWrapper.a;
                splashScreenWrapper.i(true, "SplashAdManager: first activity created");
                splashScreenWrapper.h(activity);
            }
            String name = activity.getClass().getName();
            Intent intent = activity.getIntent();
            if (intent != null) {
                SplashAdManager.n(SplashAdManager.this, intent.getAction());
            }
            ProductionEnv.debugLog("SplashAdManager", "onActivityCreated " + name);
            if (TextUtils.isEmpty(SplashAdManager.d(SplashAdManager.this))) {
                SplashAdManager.o(SplashAdManager.this, name);
                SplashAdManager.this.v0();
            }
            this.a.add(0, activity);
            SplashAdManager.s(SplashAdManager.this, hn7.b(activity.getIntent()));
        }

        @Override
        public void onActivityDestroyed(Activity activity) {
            ProductionEnv.debugLog("SplashAdManager", "onActivityDestroyed " + activity.getClass().getName());
            this.a.remove(activity);
            if (SplashAdManager.i0(activity.getClass().getSimpleName(), activity.getClass().getName())) {
                SplashAdManager.r(SplashAdManager.this, false);
            }
            if (this.a.size() == 0) {
                SplashAdManager.t(SplashAdManager.this, false);
            }
            SplashScreenWrapper.a.d(activity);
        }

        @Override
        public void onActivityPaused(Activity activity) {
            ProductionEnv.debugLog("SplashAdManager", "onActivityPaused " + activity.getClass().getName());
            if (SplashAdManager.i0(activity.getClass().getSimpleName(), activity.getClass().getName())) {
                SplashAdManager.r(SplashAdManager.this, false);
            }
        }

        @Override
        public void onActivityResumed(Activity activity) {
            String name = activity.getClass().getName();
            ProductionEnv.debugLog("SplashAdManager", "onActivityResumed " + name);
            SplashAdManager.o(SplashAdManager.this, name);
            this.a.remove(activity);
            this.a.add(0, activity);
            SplashAdManager.r(SplashAdManager.this, SplashAdManager.i0(activity.getClass().getSimpleName(), activity.getClass().getName()));
            if (SplashAdManager.g(SplashAdManager.this)) {
                return;
            }
            SplashScreenWrapper.a.i(false, "onAppForeground no called");
        }

        @Override
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            ProductionEnv.debugLog("SplashAdManager", "onActivitySaveInstanceState " + activity.getClass().getName());
        }

        @Override
        public void onActivityStarted(Activity activity) {
            WebView webViewA;
            String name = activity.getClass().getName();
            ProductionEnv.debugLog("SplashAdManager", "onActivityStarted " + name);
            SplashAdManager.o(SplashAdManager.this, name);
            if (!SplashAdManager.f(SplashAdManager.this)) {
                SplashAdManager.s(SplashAdManager.this, hn7.b(activity.getIntent()));
            }
            if (!SplashAdManager.m0(name) || (webViewA = k5.a(activity)) == null) {
                return;
            }
            if (SplashAdManager.V().contains(name)) {
                WebViewExtKt.c(webViewA);
            }
            WebViewExtKt.f(webViewA);
        }

        @Override
        public void onActivityStopped(Activity activity) {
            ProductionEnv.debugLog("SplashAdManager", "onActivityStopped " + activity.getClass().getName());
            SplashAdManager.W(false);
            SplashAdManager.s(SplashAdManager.this, false);
            hn7.c(activity.getIntent());
            SplashAdManager.e(SplashAdManager.this).removeMessages(0);
        }
    }

    public class e extends l10 {
        public e() {
        }

        @Override
        public void onAdError(String str, Throwable th) {
        }

        @Override
        public void onAdFill(String str, String str2, String str3) {
        }

        @Override
        public void onAdImpression(String str, String str2, String str3) {
            if (TextUtils.equals(str, AdsPos.INTERSTITIAL_LAUNCH.pos())) {
                SplashAdManager.M(SplashAdManager.this, System.currentTimeMillis());
            }
            if (hc.d(str) || hc.e(str)) {
                SplashAdManager.B(SplashAdManager.this, System.currentTimeMillis());
            }
        }
    }

    public class f implements lw2 {
        public f() {
        }

        @Override
        public Bundle a(String str, Bundle bundle) {
            return null;
        }

        @Override
        public ic b(String str, Bundle bundle) {
            iq7.b bVarC = iq7.c(AdsPos.INTERSTITIAL_LAUNCH.pos());
            if (bVarC == null || !hc.h(bVarC, d1.i, m01.n, GlobalConfig.getAppMoveBackTimestamp())) {
                return new ic.b("strategy fail", bVarC == null ? "strategy null" : "should show false");
            }
            return ic.c.d;
        }

        @Override
        public ic c(String str, Bundle bundle) {
            return ic.c.d;
        }
    }

    public class g implements lw2 {
        public g() {
        }

        @Override
        public Bundle a(String str, Bundle bundle) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong("min_imp_second_between_full_screen_ad", od.g(AdsPos.HOT_SPLASH.pos()));
            return bundle2;
        }

        @Override
        public ic b(String str, Bundle bundle) {
            if (SplashAdManager.R(SplashAdManager.this)) {
                return new ic.b("in min background stay interval", String.valueOf(System.currentTimeMillis() - SplashAdManager.h(SplashAdManager.this)));
            }
            return SplashAdManager.T(SplashAdManager.this) ? new ic.b("in min impression interval", String.valueOf(System.currentTimeMillis() - SplashAdManager.i(SplashAdManager.this))) : ic.c.d;
        }

        @Override
        public ic c(String str, Bundle bundle) {
            return SplashAdManager.T(SplashAdManager.this) ? new ic.b("in min impression interval", String.valueOf(System.currentTimeMillis() - SplashAdManager.i(SplashAdManager.this))) : ic.c.d;
        }
    }

    public static class h {
        public static final int[] a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            a = iArr;
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        q = timeUnit.toMillis(1L);
        r = timeUnit.toMillis(1L);
        t = true;
        u = new a();
        v = new HashSet(Arrays.asList("com.snaptube.ads.activity.SplashAdActivity", BuildConfig.LIBRARY_PACKAGE_NAME, "com.applovin.adview", com.bytedance.sdk.openadsdk.BuildConfig.LIBRARY_PACKAGE_NAME, "com.mbridge.msdk", "com.huawei.openalliance.ad"));
        w = new AnonymousClass2();
        x = new HashSet(Arrays.asList("phoenix.intent.action.SEARCH_TOOLBAR"));
    }

    public SplashAdManager(Application application) {
        d dVar = new d();
        this.f409o = dVar;
        this.p = new e();
        this.a = application;
        this.g = new b(Looper.getMainLooper());
        application.registerActivityLifecycleCallbacks(dVar);
    }

    public static void B(SplashAdManager splashAdManager, long j) {
        splashAdManager.i = j;
    }

    public static void M(SplashAdManager splashAdManager, long j) {
        splashAdManager.h = j;
    }

    public static boolean R(SplashAdManager splashAdManager) {
        return splashAdManager.n0();
    }

    public static boolean T(SplashAdManager splashAdManager) {
        return splashAdManager.o0();
    }

    public static void U(SplashAdManager splashAdManager) {
        splashAdManager.u0();
    }

    public static List V() {
        return w;
    }

    public static void W(boolean z) {
        t = z;
    }

    public static void a(SplashAdManager splashAdManager) {
        splashAdManager.q0();
    }

    public static Application c(SplashAdManager splashAdManager) {
        return splashAdManager.a;
    }

    public static String d(SplashAdManager splashAdManager) {
        return splashAdManager.b;
    }

    public static SplashAdManager d0() {
        if (s == null) {
            synchronized (SplashAdManager.class) {
                try {
                    if (s == null) {
                        s = new SplashAdManager(BaseApplication.e());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return s;
    }

    public static Handler e(SplashAdManager splashAdManager) {
        return splashAdManager.g;
    }

    public static boolean f(SplashAdManager splashAdManager) {
        return splashAdManager.c;
    }

    public static boolean g(SplashAdManager splashAdManager) {
        return splashAdManager.f;
    }

    public static long h(SplashAdManager splashAdManager) {
        return splashAdManager.m;
    }

    public static long i(SplashAdManager splashAdManager) {
        return splashAdManager.i;
    }

    public static boolean i0(String str, String str2) {
        if (m0(str2)) {
            return true;
        }
        List<String> adActivityNameList = GlobalConfig.getAdActivityNameList();
        if (adActivityNameList == null || adActivityNameList.size() <= 0) {
            return false;
        }
        return adActivityNameList.contains(str);
    }

    public static boolean l0(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return ((Set) u.getValue()).contains(str) || m0(str);
    }

    public static boolean m0(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Iterator it2 = v.iterator();
        while (it2.hasNext()) {
            if (str.contains((String) it2.next())) {
                return true;
            }
        }
        return false;
    }

    public static void n(SplashAdManager splashAdManager, String str) {
        splashAdManager.d = str;
    }

    public static void o(SplashAdManager splashAdManager, String str) {
        splashAdManager.b = str;
    }

    public static void r(SplashAdManager splashAdManager, boolean z) {
        splashAdManager.k = z;
    }

    public static void s(SplashAdManager splashAdManager, boolean z) {
        splashAdManager.c = z;
    }

    public static void t(SplashAdManager splashAdManager, boolean z) {
        splashAdManager.f = z;
    }

    public void A0() {
    }

    public void B0() {
        int firstLaunchAppDay;
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences genericSharedPrefs = GlobalConfig.getGenericSharedPrefs();
        int i = genericSharedPrefs.getInt(GlobalConfig.KEY_SPLASH_AD_USED_DAYS, -1);
        long j = genericSharedPrefs.getLong(GlobalConfig.KEY_SPLASH_AD_LAST_USE_TIME_MILLIS, -1L);
        if (i < 0) {
            firstLaunchAppDay = ((int) GlobalConfig.getFirstLaunchAppDay()) + 1;
        } else {
            firstLaunchAppDay = jCurrentTimeMillis - j > TimeUnit.DAYS.toMillis(1L) ? i + 1 : i;
        }
        if (i != firstLaunchAppDay) {
            genericSharedPrefs.edit().putInt(GlobalConfig.KEY_SPLASH_AD_USED_DAYS, firstLaunchAppDay).putLong(GlobalConfig.KEY_SPLASH_AD_LAST_USE_TIME_MILLIS, jCurrentTimeMillis).apply();
        }
    }

    public boolean C0() {
        return TextUtils.equals(this.b, SplashAdActivity.class.getName());
    }

    public void Y() {
        this.c = true;
    }

    public Bundle a0() {
        Bundle bundle = new Bundle();
        bundle.putLong("key_last_background_mills", this.m);
        bundle.putLong("key_full_screen_ad_imp_millis", this.i);
        return bundle;
    }

    public final ic c0() {
        if (!this.j.h()) {
            return new ic.b("disable", "isGlobalDisable");
        }
        ic icVarE0 = e0();
        ic.a aVar = ic.c;
        if (!aVar.a(icVarE0)) {
            return icVarE0;
        }
        if (this.c) {
            return new ic.b("in exclude activities", "isExcludeLaunchAd");
        }
        if (!HotSplashAdManager.e()) {
            return new ic.b("disable", "isConfigDisable");
        }
        AdsPos adsPos = AdsPos.HOT_SPLASH;
        if (!od.v(adsPos.pos())) {
            return new ic.b("disable", "isAdPosDisable");
        }
        ic icVarB = FrequencyControlManager.a.b(adsPos.pos(), a0());
        if (aVar.a(icVarB)) {
            return (((sn) fc1.a(PhoenixApplication.z())).L().a(adsPos.pos()) || System.currentTimeMillis() - this.m >= TimeUnit.HOURS.toMillis(1L)) ? ic.c.d : new ic.b("no cache", "moreThanOneHour");
        }
        return icVarB;
    }

    public final ic e0() {
        if (TextUtils.isEmpty(this.b) || l0(this.b)) {
            return new ic.b("in exclude activities", this.b);
        }
        if (System.currentTimeMillis() - Config.C0() <= q) {
            return new ic.b("in min notification click interval", String.valueOf(System.currentTimeMillis() - Config.C0()));
        }
        if (System.currentTimeMillis() - Config.F0() <= r) {
            return new ic.b("in min action send interval", String.valueOf(System.currentTimeMillis() - Config.F0()));
        }
        if (x.contains(this.d)) {
            return new ic.b("in exclude actions", this.d);
        }
        return NewUserProtectionUtils.isInNewUserProtection() ? new ic.b("new user protection", "InNewUserProtection") : ic.c.d;
    }

    public final ic f0() {
        ic icVarE0 = e0();
        return !ic.c.a(icVarE0) ? icVarE0 : FrequencyControlManager.a.b(AdsPos.INTERSTITIAL_LAUNCH.pos(), null);
    }

    public final Map g0() {
        HashMap map = new HashMap();
        if (this.h > 0) {
            map.put("previous_interstitial_impression_interval", Long.valueOf((System.currentTimeMillis() - this.h) / 1000));
        }
        return map;
    }

    public void h0() {
        if (this.l) {
            this.l = false;
            ((sn) fc1.a(this.a)).L().g(this.p);
            j.l().getLifecycle().a(this);
        }
    }

    public boolean j0() {
        return this.e;
    }

    public boolean k0() {
        return this.k;
    }

    public final boolean n0() {
        return System.currentTimeMillis() - this.m <= TimeUnit.MINUTES.toMillis(1L);
    }

    public final boolean o0() {
        return this.i > 0 && System.currentTimeMillis() - this.i <= TimeUnit.SECONDS.toMillis((long) od.g(AdsPos.HOT_SPLASH.pos()));
    }

    @Override
    public void onStateChanged(x24 x24Var, Lifecycle.Event event) {
        int i = h.a[event.ordinal()];
        if (i == 1) {
            r0();
        } else {
            if (i != 2) {
                return;
            }
            t0();
        }
    }

    public final boolean p0() {
        String strA = AppStartRecorder.a();
        ProductionEnv.d("SplashAdManager", "launchFrom = " + strA);
        return "Push".equalsIgnoreCase(strA);
    }

    public final void q0() {
        if (this.j.h() && GlobalConfig.isPreloadInterstitialOnAppBackgroundEnable()) {
            SplashAdActivity.c1();
        }
    }

    public final void r0() {
        ProductionEnv.debugLog("SplashAdManager", "onAppBackground ON_STOP");
        HotSplashAdManager.a.f();
        SnaptubeTrackingManager.m();
        this.e = false;
        this.m = System.currentTimeMillis();
        iq7.b bVarC = iq7.c(AdsPos.INTERSTITIAL_LAUNCH.pos());
        this.g.removeCallbacks(this.n);
        this.g.removeMessages(0);
        if (bVarC == null) {
            return;
        }
        this.g.postDelayed(this.n, Math.max(bVarC.i, ((long) bVarC.h) - (System.currentTimeMillis() - m01.n)));
    }

    public final void s0() {
        B0();
        LaunchLogger launchLogger = PhoenixApplication.E;
        launchLogger.J("ad_splash_app_foreground");
        if (z0()) {
            launchLogger.G(true);
            NavigationManager.l1(PhoenixApplication.z(), new Intent(PhoenixApplication.z(), (Class<?>) LaunchGuideActivity.class));
            Config.y5();
            AdImpressionSceneTrack.a.c(t, new ic.b("shown welcome protection", ""));
            return;
        }
        if (Config.u3()) {
            AdImpressionSceneTrack.a.c(t, new ic.b("new user protection", "isFirstLaunch"));
            SplashScreenWrapper.a.i(false, "SplashAdManager:isFirstLaunch");
            return;
        }
        this.g.removeCallbacks(this.n);
        PhoenixApplication.C().y().n0();
        w0();
        ic icVarF0 = f0();
        if (!ic.c.a(icVarF0)) {
            AdImpressionSceneTrack.a.c(t, icVarF0);
            RxBus.d().f(1096);
            SplashScreenWrapper.a.i(false, "SplashAdManager:" + icVarF0.a());
            t = false;
            return;
        }
        try {
            if (!t || !y0()) {
                AdImpressionSceneTrack.a.c(t, new ic.b("disable", "push disable"));
                SplashScreenWrapper.a.i(false, "SplashAdManager:push disable");
                return;
            }
            Long[] lArrQ = launchLogger.q("activity_onCreate");
            long jLongValue = lArrQ != null ? lArrQ[0].longValue() : SystemClock.elapsedRealtime();
            launchLogger.F(true);
            launchLogger.I("splash_ad_duration");
            launchLogger.J("ad_splash_ready_to_show_splash_activity");
            EventCounterManager.a("cold_splash_ads").b();
            ThreadPool.a(new c(jLongValue));
        } catch (Exception e2) {
            AdImpressionSceneTrack.a.c(t, new ic.b("exception", e2.getMessage()));
            ProductionEnv.throwExceptForDebugging("StartActivityException", e2);
            RxBus.d().f(1096);
            SplashScreenWrapper.a.i(false, "SplashAdManager:" + e2.getMessage());
            t = false;
        }
    }

    public final void t0() {
        ProductionEnv.debugLog("SplashAdManager", "onAppForeground ON_START");
        this.e = true;
        HotSplashAdManager.a.h();
        this.f = true;
        r23.e();
        if (t) {
            s0();
            ClipMonitorService.j(PhoenixApplication.z());
        } else if (Build.VERSION.SDK_INT >= 31) {
            u0();
        } else {
            this.g.removeMessages(0);
            this.g.sendEmptyMessage(0);
        }
    }

    public final void u0() {
        ic icVarC0 = c0();
        if (ic.c.a(icVarC0)) {
            EventCounterManager.a("hot_splash_ads").b();
            SplashAdActivity.h1(this.a, true, "hot_launch", AdsPos.HOT_SPLASH.pos(), g0());
            return;
        }
        AdImpressionSceneTrack.a.a(AdsPos.HOT_SPLASH.pos(), icVarC0);
        SplashScreenWrapper.a.i(false, "SplashAdManager:" + icVarC0.a());
    }

    public void v0() {
        if (!t || !x0() || Config.u3() || z0()) {
            return;
        }
        FrequencyControlManager frequencyControlManager = FrequencyControlManager.a;
        AdsPos adsPos = AdsPos.INTERSTITIAL_LAUNCH;
        if (!frequencyControlManager.h(adsPos.pos(), null) || iq7.c(adsPos.pos()) == null) {
            return;
        }
        ((com.snaptube.premium.app.a) fc1.a(PhoenixApplication.z())).H0().c(jb.e(adsPos.pos()).f("ad_request_scene", "application_launch"));
    }

    public final void w0() {
        FrequencyControlManager frequencyControlManager = FrequencyControlManager.a;
        frequencyControlManager.n(AdsPos.INTERSTITIAL_LAUNCH.pos(), new f());
        frequencyControlManager.n(AdsPos.HOT_SPLASH.pos(), new g());
    }

    public final boolean x0() {
        return ic.c.a(e0());
    }

    public final boolean y0() {
        if (!p0()) {
            return true;
        }
        boolean zJ = ce.a(PhoenixApplication.z()).j();
        ProductionEnv.d("SplashAdManager", "splashAdEnable = " + zJ);
        return zJ;
    }

    public boolean z0() {
        return t && !Config.I2() && TextUtils.equals(this.b, ExploreActivity.class.getName()) && AppStartRecorder.g();
    }
}
