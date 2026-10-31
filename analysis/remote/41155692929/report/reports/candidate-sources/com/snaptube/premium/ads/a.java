package com.snaptube.premium.ads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.mbridge.msdk.MBridgeConstans;
import com.snaptube.ad.tracker.TrackManager;
import com.snaptube.adLog.AdLogDiskCache;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.ads.base.network.DoHEnabledAdNetworkConfig;
import com.snaptube.ads.feedback.AdFeedbackDataManager;
import com.snaptube.ads.guardian.policy.AdGuardPolicy$WhiteListPolicy;
import com.snaptube.ads.selfbuild.ApkBroadCastReceiver;
import com.snaptube.ads_log_v2.AdLogAttributionCache;
import com.snaptube.ads_log_v2.AdLogV2Action;
import com.snaptube.ads_log_v2.AdLogV2Event;
import com.snaptube.plugin.extension.DownloadEventLocalRecorder;
import com.snaptube.premium.R;
import com.snaptube.premium.ads.splash.AdClickEventReceiver;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.base.utils.ThreadPool;
import dagger.Lazy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import net.pubnative.mediation.broadcast.MediationEventBus;
import net.pubnative.mediation.config.model.RequestTimeModel;
import net.pubnative.mediation.request.model.AdLogDataFromAdModel;
import net.pubnative.mediation.request.model.PubnativeAdModel;
import o.ae;
import o.bg5;
import o.ca;
import o.ca3;
import o.cj0;
import o.e57;
import o.fc1;
import o.jb;
import o.jg0;
import o.lg0;
import o.s5;
import o.s7;
import o.sn;
import o.ua;
import o.wu7;
import o.xd;
import o.y48;
import o.yd;
import o.yh7;
import o.ym6;
import o.z54;
import o.zd;
import o.zk6;

public class a implements ca3, cj0.d {
    public static String g;
    public static final AdLogAttributionCache.c h = new C0411a();
    public final Context a;
    public final SharedPreferences b;

    @Inject
    @Named(MBridgeConstans.DYNAMIC_VIEW_WX_APP)
    Lazy<bg5> c;
    public wu7 d;
    public final HashMap e;
    public final BroadcastReceiver f = new c();

    public class C0411a implements AdLogAttributionCache.c {
        @Override
        public void onAppInstalled(String str, boolean z) {
            AdLogV2Event adLogV2EventL = AdLogAttributionCache.j().l(str);
            if (adLogV2EventL != null) {
                e57.d(adLogV2EventL.getOriginalAdString());
            }
        }
    }

    public class b implements Runnable {
        public final PubnativeAdModel a;
        public final long b;

        public b(PubnativeAdModel pubnativeAdModel, long j) {
            this.a = pubnativeAdModel;
            this.b = j;
        }

        @Override
        public void run() {
            com.snaptube.ads_log_v2.b.g().j(AdLogV2Event.a.b(AdLogV2Action.AD_CLOSE).Q(new AdLogDataFromAdModel(this.a)).v(this.b).a());
        }
    }

    public class c extends BroadcastReceiver {

        public class C0412a implements lg0 {
            public final Uri a;

            public C0412a(Uri uri) {
                this.a = uri;
            }

            @Override
            public void onFailure(jg0 jg0Var, IOException iOException) {
                ProductionEnv.d("AdsManager", "report failed. " + this.a);
            }

            @Override
            public void onResponse(jg0 jg0Var, ym6 ym6Var) {
                ProductionEnv.d("AdsManager", "report success. " + ym6Var.e() + ", uri: " + this.a);
            }
        }

        public c() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            String stringExtra = intent.getStringExtra("com.snaptube.premium.ad.analytics.extra.URL");
            if (TextUtils.isEmpty(stringExtra) || !TextUtils.equals("com.snaptube.premium.ad.analytics.REPORT", action)) {
                return;
            }
            Uri uri = Uri.parse(stringExtra);
            String queryParameter = uri.getQueryParameter(MediationEventBus.PARAM_PROVIDER);
            String queryParameter2 = uri.getQueryParameter("action");
            AdGuardPolicy$WhiteListPolicy.a(context, uri.getQueryParameter("store_id"), queryParameter);
            if (a.W(a.this, queryParameter, queryParameter2)) {
                FirebasePerfOkHttpClient.enqueue(((bg5) a.this.c.get()).a(new zk6.a().s(stringExtra).d().b()), new C0412a(uri));
            }
        }
    }

    public static class d {
        public int a;
        public int b;
        public List c;
        public List d;
        public int e;
        public boolean f;
        public int g;
        public int h;
        public List i;
        public int j;
        public int k;

        public d(int i, int i2, String str, int i3, boolean z, int i4, String str2, int i5, String str3, int i6, int i7) {
            this.a = i;
            this.b = i2;
            this.e = i3;
            this.f = z;
            this.g = i4;
            this.c = b(str);
            this.d = a(str2);
            this.h = i5;
            this.i = b(str3);
            this.j = i6;
            this.k = i7;
        }

        public static List b(String str) {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(str)) {
                for (String str2 : str.split(RequestTimeModel.DELIMITER)) {
                    try {
                        arrayList.add(Integer.valueOf(Integer.parseInt(str2.trim())));
                    } catch (NumberFormatException unused) {
                    }
                }
            }
            return arrayList;
        }

        public final List a(String str) {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(str)) {
                try {
                    for (String str2 : str.split(RequestTimeModel.DELIMITER)) {
                        arrayList.add(Integer.valueOf(Integer.parseInt(str2.trim())));
                    }
                } catch (NumberFormatException unused) {
                }
            }
            return arrayList;
        }
    }

    public a(Context context) {
        this.a = context;
        ((com.snaptube.premium.app.a) fc1.a(context)).i0(this);
        this.b = context.getSharedPreferences(PubnativeAdModel.PREF_NAME, 0);
        this.e = new HashMap(8);
    }

    public static void S(a aVar, RxBus.d dVar) {
        aVar.k0(dVar);
    }

    public static void T(Map.Entry entry) {
        i0(entry);
    }

    public static void U(a aVar) {
        aVar.j0();
    }

    public static void V(Throwable th) {
        l0(th);
    }

    public static boolean W(a aVar, String str, String str2) {
        return aVar.f0(str, str2);
    }

    public static String a0() {
        return g;
    }

    public static void i0(Map.Entry entry) {
        ((sn) fc1.a(PhoenixApplication.z())).H0().c(jb.e((String) entry.getKey()));
    }

    public static void l0(Throwable th) {
        ProductionEnv.throwExceptForDebugging(new IllegalStateException(th));
    }

    public static void p0(String str) {
        g = str;
    }

    @Override
    public Set A() {
        return this.b.getStringSet("/block_config/user_tags", Collections.emptySet());
    }

    @Override
    public Set B() {
        return this.b.getStringSet("/vungle/block_normal_replacements", Collections.emptySet());
    }

    @Override
    public Set C() {
        return this.b.getStringSet("/mintegral/meta_white_list", Collections.emptySet());
    }

    @Override
    public int D() {
        return this.b.getInt("/tracker/ad_track_video_visibility_polling_interval", 200);
    }

    @Override
    public Set E() {
        return this.b.getStringSet("/mintegral/meta_black_list", Collections.emptySet());
    }

    @Override
    public int F(String str) {
        return this.b.getInt("/impression_quota/" + str, 1);
    }

    @Override
    public String G(String str) {
        return this.b.getString("/" + str + "/ad_unit", str);
    }

    @Override
    public double H() {
        try {
            return Double.parseDouble(this.b.getString("/start_download_interstitial/preload_block_percentage", MBridgeConstans.ENDCARD_URL_TYPE_PL));
        } catch (NumberFormatException unused) {
            return 0.0d;
        }
    }

    @Override
    public int I(String str) {
        return this.b.getInt("/max_stale/" + str, 3600000);
    }

    @Override
    public boolean J() {
        return this.b.getBoolean("/vungle/catch_checkpoint0_url", false);
    }

    @Override
    public Set K() {
        return this.b.getStringSet("/ad_client_bidding_strategy", Collections.emptySet());
    }

    @Override
    public boolean L(String str) {
        return this.b.getBoolean("/" + str + "/should_show_loading_on_web_click", true);
    }

    @Override
    public boolean M() {
        return this.b.getBoolean("/impression_frequency_control_strategy/is_remove_cache", true);
    }

    @Override
    public long N() {
        return ((long) this.b.getInt("/banner/auto_refresh_interval", 60)) * TimeUnit.SECONDS.toMillis(1L);
    }

    @Override
    public int O(String str) {
        return this.b.getInt("/impression_timeout_quota/" + str, Y());
    }

    @Override
    public int P() {
        return this.b.getInt("/tracker/ad_track_visibility_polling_interval", 100);
    }

    @Override
    public boolean Q() {
        return this.b.getBoolean("/tracker/ad_track_enable_impression_realtime", true);
    }

    @Override
    public Set R() {
        return this.b.getStringSet("/vungle/normal_replacements", Collections.emptySet());
    }

    public Boolean X(String str, boolean z) {
        return Boolean.valueOf(this.b.getBoolean(str, z));
    }

    public final int Y() {
        return this.b.getInt("/impression_timeout_quota/default", 1);
    }

    public d Z(String str) {
        d dVar = (d) this.e.get(str);
        if (dVar != null) {
            return dVar;
        }
        return new d(this.b.getInt("/" + str + "/start_pos", 0), this.b.getInt("/" + str + "/step", 0), this.b.getString("/" + str + "/steps", null), this.b.getInt("/" + str + "/placements_num", 0), this.b.getBoolean("/" + str + "/twice_confirm", false), this.b.getInt("/" + str + "/sub_items_num", 0), this.b.getString("/" + str + "/stagger_small_layouts", null), this.b.getInt("/" + str + "/flavor", 0), this.b.getString("/" + str + "/flavors", null), this.b.getInt("/" + str + "/impression_gap", 5), this.b.getInt("/" + str + "/display_interval", 4));
    }

    @Override
    public boolean a() {
        return this.b.getBoolean("/infomobi1/enable", false);
    }

    @Override
    public Set b() {
        return this.b.getStringSet("/vungle/vm_urls", Collections.emptySet());
    }

    public int b0(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        int iIntValue = ((Integer) d0(str, "small_screen_pixels", Integer.class)).intValue();
        DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
        return (displayMetrics == null || iIntValue <= 0 || Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > iIntValue) ? ((Integer) d0(str, "flavor", Integer.class)).intValue() : ((Integer) d0(str, "small_screen_flavor", Integer.class)).intValue();
    }

    @Override
    public String c(String str, String str2) {
        return this.b.getString("/" + str + "/ad_frequency_control_rules/" + str2, "");
    }

    public int c0(String str, int i) {
        return this.b.getInt(str, i);
    }

    @Override
    public long d() {
        return ((long) this.b.getInt("/new_water_fall/banner_show_delay", 8)) * TimeUnit.SECONDS.toMillis(1L);
    }

    public Object d0(String str, String str2, Class cls) {
        if (cls == Integer.class || cls == Integer.TYPE) {
            return Integer.valueOf(this.b.getInt("/" + str + "/" + str2, 0));
        }
        if (cls == Boolean.class || cls == Boolean.TYPE) {
            return Boolean.valueOf(this.b.getBoolean("/" + str + "/" + str2, false));
        }
        if (cls != String.class) {
            return null;
        }
        return this.b.getString("/" + str + "/" + str2, "");
    }

    @Override
    public long e(String str) {
        return DownloadEventLocalRecorder.a.g(str);
    }

    public final void e0() {
        this.e.put(AdsPos.NATIVE_YOUTUBE_FEEDSTREAM.pos(), new d(3, 4, null, 3, false, 0, null, 0, "26,26,26", 5, 4));
        this.e.put(AdsPos.NATIVE_YOUTUBE_DETAILS_BANNER.pos(), new d(3, 3, null, 3, false, 0, null, 0, "18,18,18", 5, 3));
        this.e.put(AdsPos.NATIVE_MYFILE_ALL_PLAY_LIST.pos(), new d(2, 8, null, 3, false, 0, null, 0, "25,25,25", 5, 8));
        this.e.put(AdsPos.SEARCH_VIDEO_RESULT.pos(), new d(2, 10, null, 3, false, 0, null, 0, null, 5, 10));
    }

    @Override
    public boolean f() {
        return this.b.getBoolean("/ad_error_stack_log/enable", false);
    }

    public final boolean f0(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        if (Config.u1() >= this.b.getInt("/ad_analytics_report/rate", 100)) {
            return false;
        }
        String string = this.b.getString("/ad_analytics_report/enabled", null);
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        List listAsList = Arrays.asList(string.split(RequestTimeModel.DELIMITER));
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        return listAsList.contains(sb.toString());
    }

    @Override
    public Set g() {
        return this.b.getStringSet("/ad_cache_strategy", Collections.emptySet());
    }

    public boolean g0() {
        return this.b.getBoolean("/locker_music_player/enable", false);
    }

    @Override
    public String h() {
        return this.b.getString("/tracker/ad_track_impression_mapping_field", null);
    }

    public boolean h0() {
        return this.b.getBoolean("/app_upload/enable", false);
    }

    @Override
    public boolean i() {
        return this.b.getBoolean("/hot_splash/background_delayed_preload_enable", false);
    }

    @Override
    public boolean j() {
        return this.b.getBoolean("/splash_ad_from_push/enable", true);
    }

    public final void j0() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.snaptube.premium.ad.analytics.REPORT");
        z54.b(this.a).c(this.f, intentFilter);
        z54.b(this.a).c(new AdClickEventReceiver(), new IntentFilter(MediationEventBus.EVENT_INTERNAL_AD_CLICK));
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("log.apk.downloaded");
        intentFilter2.addAction("log.apk.installed");
        intentFilter2.addAction("log.apk.start.download");
        ApkBroadCastReceiver apkBroadCastReceiver = new ApkBroadCastReceiver();
        apkBroadCastReceiver.a(new com.snaptube.ads.selfbuild.c());
        apkBroadCastReceiver.a(com.snaptube.ads.selfbuild.b.c());
        z54.b(this.a).c(apkBroadCastReceiver, intentFilter2);
    }

    @Override
    public long k(String str) {
        return this.b.getLong("/cumulative_show_timestamp_quota/" + str, 0L);
    }

    public final void k0(RxBus.d dVar) {
        Activity activityF;
        if (dVar.a != 1052 || (activityF = s5.f()) == null || activityF.isFinishing()) {
            return;
        }
        PubnativeAdModel pubnativeAdModel = (PubnativeAdModel) dVar.e;
        if (pubnativeAdModel != null) {
            m0(pubnativeAdModel);
        }
        yh7.b(activityF, R.string.ad_fb_thx_feedback, -1).f();
    }

    @Override
    public boolean l() {
        return this.b.getBoolean("/vungle/catch_all_normal_replacement", false);
    }

    @Override
    public boolean m() {
        return this.b.getBoolean("/impression_frequency_control_strategy/is_cancel_request", true);
    }

    public final void m0(PubnativeAdModel pubnativeAdModel) {
        ThreadPool.a(new b(pubnativeAdModel, SystemClock.elapsedRealtime()));
    }

    @Override
    public long n() {
        return DownloadEventLocalRecorder.a.f();
    }

    public void n0() {
        for (Map.Entry entry : Config.k1().entrySet()) {
            PhoenixApplication.M().postDelayed(new xd(entry), ((Integer) entry.getValue()).intValue());
        }
    }

    @Override
    public boolean o(String str) {
        return ua.a.a(str);
    }

    public final void o0() {
        y48.k(new ae(this));
    }

    @Override
    public long p() {
        return ((long) this.b.getInt("/banner/scroll_refresh_interval", 60)) * TimeUnit.SECONDS.toMillis(1L);
    }

    @Override
    public String q() {
        Set<String> stringSet = this.b.getStringSet("/fullscreen_joint_frequency_control", null);
        return (stringSet == null || stringSet.isEmpty()) ? "" : stringSet.iterator().next();
    }

    public void q0() {
        TrackManager.a.hashCode();
        if (this.a != null) {
            ca.a.c(new DoHEnabledAdNetworkConfig(this.a));
            cj0.k(this.a).f(this);
        }
        o0();
        r0();
        com.snaptube.ads_log_v2.b.g();
        s7.y().B(this);
        AdLogDiskCache.b();
        SplashAdManager.d0();
        AdLogAttributionCache.j().g(h);
        AdFeedbackDataManager.p().t(this.a);
        e0();
        DownloadedPackageNameCache.a.f();
    }

    @Override
    public int r() {
        return this.b.getInt("/tracker/ad_track_attach_polling_interval", 50);
    }

    public final void r0() {
        wu7 wu7Var = this.d;
        if (wu7Var != null) {
            wu7Var.unsubscribe();
            this.d = null;
        }
        this.d = RxBus.d().c(1052).g(RxBus.f).u0(new yd(this), new zd());
    }

    @Override
    public int s() {
        return this.b.getInt("/tracker/ad_track_video_viewable_min_duration", 2000);
    }

    public boolean s0(String str) {
        return this.b.getBoolean("/" + str + "/show_cta_action", true);
    }

    @Override
    public Set t() {
        return this.b.getStringSet("/block_config/user_ad_acceptances", Collections.emptySet());
    }

    @Override
    public float u() {
        return this.b.getInt("/tracker/ad_track_viewable_area_percentage", 50) / 100.0f;
    }

    @Override
    public void v() {
        RxBus.d().i(new RxBus.d(3));
    }

    @Override
    public int w(String str) {
        return this.b.getInt("/" + str + "/max_age_to_refill_on_cache_expired", Integer.MAX_VALUE);
    }

    @Override
    public Set x() {
        return this.b.getStringSet("/vungle/waterfall_bidding_block_adpos", Collections.emptySet());
    }

    @Override
    public Set y() {
        return this.b.getStringSet("/block_config/block_rules", Collections.emptySet());
    }

    @Override
    public int z() {
        return this.b.getInt("/tracker/ad_track_viewable_min_duration", 1000);
    }
}
