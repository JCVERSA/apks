package com.snaptube.ads.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.core.view.WindowInsetsCompat;
import com.snaptube.ad.tracker.activity.AdActivityTracker;
import com.snaptube.ads.R$id;
import com.snaptube.ads.R$layout;
import com.snaptube.ads.R$style;
import com.snaptube.ads.SplashScreenWrapper;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.ads.view.SplashAdView;
import com.snaptube.ads_log_v2.AdForm;
import com.snaptube.ads_log_v2.AdLogV2Action;
import com.snaptube.ads_log_v2.AdLogV2Event;
import com.snaptube.base.BaseActivity;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.premium.viewmodel.UiDarkConfig;
import com.snaptube.ui.library.R$color;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.base.utils.ThreadPool;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import net.pubnative.mediation.adapter.model.SnaptubeNativeAdModel;
import net.pubnative.mediation.request.model.AdLogDataFromAdModel;
import net.pubnative.mediation.request.model.PubnativeAdModel;
import o.b7;
import o.ba3;
import o.c7;
import o.d1;
import o.e1;
import o.en7;
import o.fc1;
import o.fn7;
import o.gb;
import o.gn7;
import o.h9;
import o.hh3;
import o.iq7;
import o.jn7;
import o.m01;
import o.mm8;
import o.qd3;
import o.ql3;
import o.rl3;
import o.sr7;
import o.vh3;
import o.wu7;
import o.xk7;
import o.zh4;

public class SplashAdActivity extends BaseActivity implements rl3 {
    public static final List n = Arrays.asList(AdForm.INTERSTITIAL, AdForm.REWARDED);

    public static String f354o = null;
    public static gn7 p;
    public m01 b;

    @Inject
    hh3 c;

    @Inject
    b7 d;

    @Inject
    gb e;
    public wu7 f;
    public boolean g;
    public String h;
    public iq7.b i;
    public String j;
    public boolean k = false;
    public View l;
    public SplashImpressionSceneTracker m;

    public class a implements com.snaptube.ad.tracker.activity.a.b {
        public a() {
        }

        @Override
        public void onLifecycleLeave(Map map) {
            if (SplashAdActivity.C0(SplashAdActivity.this) instanceof SplashAdView) {
                ((SplashAdView) SplashAdActivity.C0(SplashAdActivity.this)).a2(map);
            }
        }

        @Override
        public void onLifecycleNoTrack(Map map) {
        }

        @Override
        public void onLifecycleStart() {
            if (SplashAdActivity.C0(SplashAdActivity.this) instanceof SplashAdView) {
                ((SplashAdView) SplashAdActivity.C0(SplashAdActivity.this)).b2();
            }
        }

        @Override
        public void onLifecycleTrack(Map map) {
            if (SplashAdActivity.C0(SplashAdActivity.this) instanceof SplashAdView) {
                ((SplashAdView) SplashAdActivity.C0(SplashAdActivity.this)).c2(map);
            }
        }
    }

    public class b implements d1.b {
        public b() {
        }

        @Override
        public void a(boolean z) {
            gn7 gn7Var;
            PubnativeAdModel pubnativeAdModel;
            boolean z2 = false;
            SplashScreenWrapper.a.i(false, "SplashAdActivity:onAdClosed");
            ProductionEnv.debugLog("SplashAdActivity", "onAdClosed..." + z);
            RxBus.d().f(1096);
            ((qd3) zh4.b("ILoggerManager")).i();
            SplashAdActivity.this.c.c();
            SplashAdActivity splashAdActivity = SplashAdActivity.this;
            h9 h9VarA = splashAdActivity.d.a(SplashAdActivity.B0(splashAdActivity));
            if (h9VarA != null && (pubnativeAdModel = h9VarA.c) != null && pubnativeAdModel.getAdForm() == AdForm.REWARDED) {
                z2 = true;
            }
            SplashAdActivity.H0(SplashAdActivity.this, jn7.a(z, z2));
            if (z || (gn7Var = SplashAdActivity.p) == null) {
                return;
            }
            gn7Var.a();
        }

        @Override
        public void b() {
            ProductionEnv.debugLog("SplashAdActivity", "onAdReward...");
            if (SplashAdActivity.F0(SplashAdActivity.this)) {
                SplashAdActivity.H0(SplashAdActivity.this, 3);
            }
        }

        @Override
        public void i() {
            ProductionEnv.debugLog("SplashAdActivity", "onAdClick...");
            SplashAdActivity splashAdActivity = SplashAdActivity.this;
            h9 h9VarA = splashAdActivity.d.a(SplashAdActivity.B0(splashAdActivity));
            if (SplashAdActivity.F0(SplashAdActivity.this) && (SplashAdActivity.D0(SplashAdActivity.this) || h9VarA == null || !h9VarA.d().isValid() || SplashAdActivity.E0(SplashAdActivity.this) == null)) {
                SplashAdActivity.H0(SplashAdActivity.this, 4);
            }
            gn7 gn7Var = SplashAdActivity.p;
            if (gn7Var != null) {
                gn7Var.a();
            }
        }

        @Override
        public void j() {
            gn7 gn7Var = SplashAdActivity.p;
            if (gn7Var != null) {
                gn7Var.j();
            }
        }

        @Override
        public void k() {
            e1.a(this);
        }

        @Override
        public void u() {
        }
    }

    public interface c {
        void F(SplashAdActivity splashAdActivity);
    }

    public static void A0(SplashAdActivity splashAdActivity, RxBus.d dVar) {
        splashAdActivity.Y0(dVar);
    }

    public static String B0(SplashAdActivity splashAdActivity) {
        return splashAdActivity.j;
    }

    public static View C0(SplashAdActivity splashAdActivity) {
        return splashAdActivity.l;
    }

    public static boolean D0(SplashAdActivity splashAdActivity) {
        return splashAdActivity.g;
    }

    public static iq7.b E0(SplashAdActivity splashAdActivity) {
        return splashAdActivity.i;
    }

    public static boolean F0(SplashAdActivity splashAdActivity) {
        return splashAdActivity.S0();
    }

    public static void H0(SplashAdActivity splashAdActivity, int i) {
        splashAdActivity.e1(i);
    }

    public static String N0() {
        if (TextUtils.isEmpty(f354o)) {
            iq7.b bVarC = iq7.c(AdsPos.INTERSTITIAL_LAUNCH.pos());
            f354o = bVarC != null ? bVarC.b : null;
        }
        return f354o;
    }

    private void R0() {
        UiDarkConfig uiDarkConfigC = UiDarkConfig.c();
        int i = R$color.bg_transparent;
        sr7.q(getWindow(), WindowInsetsCompat.Type.g());
        sr7.m(this, ((Boolean) uiDarkConfigC.g().invoke()).booleanValue(), !((Boolean) uiDarkConfigC.f().invoke()).booleanValue(), 0, getResources().getColor(i), false, true);
    }

    public static void Z0(h9 h9Var) {
        SnaptubeNativeAdModel snaptubeNativeAdModel = (SnaptubeNativeAdModel) h9Var.c;
        long waitTimeStart = snaptubeNativeAdModel.getWaitTimeStart();
        AdLogV2Event.a aVarQ = AdLogV2Event.a.b(AdLogV2Action.AD_SKIP_LOADING).Q(new AdLogDataFromAdModel(snaptubeNativeAdModel));
        HashMap map = new HashMap();
        map.put("wait_time", Long.valueOf(System.currentTimeMillis() - waitTimeStart));
        aVarQ.x(map);
        com.snaptube.ads_log_v2.b.g().j(aVarQ.a());
    }

    public static void c1() {
        d1(N0());
    }

    public static void d1(String str) {
        ba3 ba3Var = (ba3) zh4.b("IAdsManager");
        if (ba3Var.h()) {
            ba3Var.k(str);
        }
    }

    public static boolean g1(Context context, String str, String str2, Map map) {
        return h1(context, false, str, str2, map);
    }

    public static boolean h1(Context context, boolean z, String str, String str2, Map map) {
        return i1(context, z, str, str2, true, map);
    }

    public static boolean i1(Context context, boolean z, String str, String str2, boolean z2, Map map) {
        return ((vh3) zh4.b("ISplashAdsManager")).d(context, z, str, str2, z2, map);
    }

    private void j1(String str) {
        if (V0()) {
            ((qd3) zh4.b("ILoggerManager")).j(str);
        }
    }

    public static boolean l1(Context context, String str, String str2, Map map) {
        ba3 ba3Var = (ba3) zh4.b("IAdsManager");
        if (context == null || !ba3Var.h() || !ba3Var.b().a(str2)) {
            return false;
        }
        try {
            h9 h9VarA = c7.a(context).a(str2);
            PubnativeAdModel pubnativeAdModel = h9VarA != null ? h9VarA.c : null;
            if (pubnativeAdModel != null && n.contains(pubnativeAdModel.getAdForm())) {
                pubnativeAdModel.putExtras("trigger_tag", str);
                if (map != null) {
                    for (Map.Entry entry : map.entrySet()) {
                        pubnativeAdModel.putExtras((String) entry.getKey(), entry.getValue());
                    }
                }
                return true;
            }
        } catch (Exception unused) {
        }
        return h1(context, true, str, str2, map);
    }

    public static boolean m1(Context context, boolean z, String str, String str2) {
        return ((vh3) zh4.b("ISplashAdsManager")).c(context, z, str, str2, false);
    }

    public static void z0(h9 h9Var) {
        Z0(h9Var);
    }

    public final PubnativeAdModel I0() {
        View view = this.l;
        if (view instanceof SplashAdView) {
            return ((SplashAdView) view).getAdData();
        }
        return null;
    }

    public final long J0(Intent intent) {
        if (intent != null && intent.getExtras() != null) {
            Object obj = intent.getExtras().get("extras");
            if (obj instanceof HashMap) {
                try {
                    return SystemClock.elapsedRealtime() - ((Long) ((HashMap) obj).get("activity_on_create")).longValue();
                } catch (Exception e) {
                    ProductionEnv.debugLog("SplashAdActivity", "ignore = " + e);
                }
            }
        }
        return 0L;
    }

    public SplashImpressionSceneTracker P0() {
        return this.m;
    }

    public d1.b Q0() {
        return new b();
    }

    public final boolean S0() {
        View view = this.l;
        return view != null && (view instanceof SplashAdView) && ((SplashAdView) view).getIsAppOpenAdForm();
    }

    public final boolean V0() {
        return TextUtils.equals(this.h, "cold_launch");
    }

    public final void Y0(RxBus.d dVar) {
        Object obj;
        int i = dVar.a;
        if (i == 1052) {
            if (S0()) {
                e1(7);
                return;
            }
            return;
        }
        if (i == 1214) {
            if (!S0() || ((obj = dVar.d) != null && Boolean.parseBoolean(obj.toString()))) {
                this.k = true;
                return;
            } else {
                e1(1);
                return;
            }
        }
        if (i == 1211) {
            if (S0()) {
                e1(4);
            }
        } else if (i == 1212 && S0()) {
            e1(1);
        }
    }

    public final void b1() {
        int i = Build.VERSION.SDK_INT;
        if (i == 26 || i == 27) {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                Class<?> cls2 = Integer.TYPE;
                if (1 == ((Integer) cls.getMethod("getInt", String.class, cls2).invoke(null, "ro.miui.notch", 0)).intValue()) {
                    Window.class.getMethod("addExtraFlags", cls2).invoke(getWindow(), 1792);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final void e1(int i) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        n1();
        try {
            finish();
            if (!S0()) {
                RxBus.d().i(new RxBus.d(jn7.b(i), i, this.j, I0()));
            }
        } catch (Exception e) {
            ProductionEnv.logException("SplashAdActivity", e);
        }
        j1("ad_splash_activity_finish");
        j1("ad_splash_activity_finish_after_click");
        j1("ad_splash_activity_finish_after_close");
    }

    @Override
    public boolean enableTransparentStatusBar() {
        return false;
    }

    @Override
    public ql3 g() {
        return P0();
    }

    public final void n1() {
        h9 h9VarA = this.d.a(this.j);
        if (h9VarA == null || !(h9VarA.c instanceof SnaptubeNativeAdModel)) {
            return;
        }
        ThreadPool.a(new en7(h9VarA));
    }

    @Override
    public void onBackPressed() {
        PubnativeAdModel pubnativeAdModel;
        iq7.b bVar = this.i;
        if (bVar != null && bVar.y) {
            View view = this.l;
            if (view instanceof SplashAdView) {
                SplashAdView splashAdView = (SplashAdView) view;
                if (splashAdView.getIsShowActionLoadingView()) {
                    return;
                }
                h9 h9VarA = this.d.a(this.j);
                if (h9VarA != null && (pubnativeAdModel = h9VarA.c) != null) {
                    pubnativeAdModel.putExtras("back_pressed", Boolean.TRUE);
                    h9VarA.c.putExtras("trigger_tag", "system_back");
                }
                splashAdView.x2(null);
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        PubnativeAdModel pubnativeAdModel;
        overridePendingTransition(0, 0);
        if (getWindow() != null) {
            getWindow().getDecorView().setSystemUiVisibility(4);
        }
        AdActivityTracker.g(this, new a());
        Intent intent = getIntent();
        this.g = TextUtils.equals(intent.getStringExtra("entrance"), "hot_launch");
        String stringExtra = intent.getStringExtra(IntentUtil.POS);
        this.j = stringExtra;
        this.m = new SplashImpressionSceneTracker(stringExtra);
        boolean booleanExtra = intent.getBooleanExtra("show_cover_bg", true);
        if (this.g || !booleanExtra) {
            mm8.a(this);
            setTheme(R$style.P4_Theme_AdSplashTransparent);
        }
        super.onCreate(bundle);
        this.h = intent.getStringExtra("entrance");
        j1("ad_splash_activity_on_create");
        if (AdsPos.INTERSTITIAL_LAUNCH.pos().equals(this.j) || AdsPos.HOT_SPLASH.pos().equals(this.j)) {
            SplashScreenWrapper.a.h(this);
        }
        setContentView(R$layout.activity_splash_ad);
        View viewFindViewById = findViewById(R$id.ad_splash_cover);
        sr7.x(viewFindViewById.findViewById(R$id.splash_layout), xk7.d(this), true, false, false);
        R0();
        b1();
        ((c) fc1.a(getApplicationContext())).F(this);
        boolean booleanExtra2 = intent.getBooleanExtra("force_show", false);
        h9 h9VarA = this.d.a(this.j);
        boolean z = this.g && h9VarA != null && (pubnativeAdModel = h9VarA.c) != null && pubnativeAdModel.getAdForm() == AdForm.NATIVE;
        if (!booleanExtra || z) {
            viewFindViewById.setVisibility(4);
        }
        this.i = iq7.c(this.j);
        this.f = RxBus.d().c(1212, 1211, 1214, 1052).t0(new fn7(this));
        m01 m01Var = new m01(this, J0(intent));
        this.b = m01Var;
        m01Var.c(booleanExtra2);
        boolean zK = this.b.k(this.j, Q0());
        View viewFindViewById2 = findViewById(R$id.container);
        this.l = viewFindViewById2;
        if (viewFindViewById2 instanceof SplashAdView) {
            ((SplashAdView) this.l).setUseCache(intent.getBooleanExtra("use_cache", false));
            ((SplashAdView) this.l).setWaterFallLoadTimeout(intent.getLongExtra("waterfall_load_time_out", -1L));
            if (z) {
                ((SplashAdView) this.l).setMinSplashDuration(1L);
            }
        }
        if (zK) {
            this.c.a();
        } else {
            RxBus.d().f(1096);
            e1(1);
        }
        j1("ad_splash_activity_on_create_end");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        SplashScreenWrapper.a.i(false, "SplashAdActivity:onDestroy");
        this.m.a();
        this.c.c();
        wu7 wu7Var = this.f;
        if (wu7Var != null) {
            wu7Var.unsubscribe();
        }
        if (TextUtils.isEmpty(this.j)) {
            return;
        }
        this.d.c(this.j);
    }

    @Override
    public void onResume() {
        try {
            super.onResume();
        } catch (Exception e) {
            ProductionEnv.logException("SplashAdActivity", e);
        }
        getWindow().getDecorView().setSystemUiVisibility(5380);
    }

    @Override
    public void onStop() {
        super.onStop();
        if (this.k) {
            if (S0()) {
                e1(4);
                return;
            }
            m01 m01Var = this.b;
            if (m01Var != null) {
                this.k = false;
                m01Var.j();
            }
        }
    }
}
