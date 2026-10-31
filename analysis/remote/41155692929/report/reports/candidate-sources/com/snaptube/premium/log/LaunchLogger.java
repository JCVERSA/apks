package com.snaptube.premium.log;

import android.app.Application;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultRenderersFactory;
import com.snaptube.dataadapter.plugin.YouTubeCookieJar;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.premium.api_service.response.CampaignTrackResult;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.utils.WindowPlayUtils;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.utils.ThreadPool;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import o.a58;
import o.ah3;
import o.az7;
import o.bc;
import o.bp;
import o.c14;
import o.cm;
import o.d14;
import o.fc1;
import o.l3;
import o.sh;
import o.sn;
import o.u36;
import o.v04;
import o.vq6;
import org.json.JSONObject;

public class LaunchLogger implements bc.a {
    public LogType b;
    public final c14 e;
    public final Handler f;
    public final d14 g;
    public final Map a = new HashMap(8);
    public boolean c = false;
    public boolean h = false;
    public volatile boolean i = false;
    public volatile boolean j = false;
    public boolean k = false;
    public final Set d = new HashSet();

    public enum LogType {
        FIRST,
        SECOND,
        OTHER
    }

    public class a implements Runnable {
        public final Long a;
        public final Long b;
        public final Long c;
        public final Long d;
        public final long e;

        public a(Long l, Long l2, Long l3, Long l4, long j) {
            this.a = l;
            this.b = l2;
            this.c = l3;
            this.d = l4;
            this.e = j;
        }

        @Override
        public void run() {
            if (Log.isLoggable("LaunchLogger", 3)) {
                ProductionEnv.d("LaunchLogger", String.format("%s:%d %s:%d %s:%d %s:%d %s:%d", "app_onCreateMainProcess", this.a, "activity_onCreate", this.b, "activity_onStart", this.c, "activity_onResume", this.d, "sumMs", Long.valueOf(this.e)));
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            LaunchLogger.c(LaunchLogger.this);
        }
    }

    public class c implements l3 {
        public c() {
        }

        public void a(CampaignTrackResult campaignTrackResult) {
            if (campaignTrackResult == null) {
                throw new RuntimeException("Track campaign extra error: No result");
            }
            if (!campaignTrackResult.isSuccess()) {
                throw new RuntimeException(campaignTrackResult.getMessage());
            }
            ReportPropertyBuilder.e().setEventName("TimeStatistics").setAction("track_campaign_extra").setProperty("success", Boolean.TRUE).reportEvent();
            Config.g5();
        }

        @Override
        public void call(Object obj) {
            a((CampaignTrackResult) obj);
        }
    }

    public class d implements l3 {
        public d() {
        }

        public void a(Throwable th) {
            ReportPropertyBuilder.e().setEventName("TimeStatistics").setAction("track_campaign_extra").setProperty("success", Boolean.FALSE).setProperty("error", th.toString()).reportEvent();
        }

        @Override
        public void call(Object obj) {
            a((Throwable) obj);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            vq6.K().g(new ReportPropertyBuilder().setEventName("behavior").setAction("permission_sys_window").setProperty("arg1", Boolean.valueOf(WindowPlayUtils.e())));
        }
    }

    public static class f {
        public static final int[] a;

        static {
            int[] iArr = new int[LogType.values().length];
            a = iArr;
            try {
                iArr[LogType.FIRST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[LogType.SECOND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public LaunchLogger() {
        c14 c14Var = new c14();
        this.e = c14Var;
        this.f = PhoenixApplication.M();
        this.g = new d14(c14Var);
    }

    public static boolean H() {
        int i;
        try {
            i = PhoenixApplication.z().getSharedPreferences(YouTubeCookieJar.PREF_SWITCHES, 0).getInt("key.api_audit_launch_log_sample_rate", 1000);
        } catch (Throwable unused) {
            i = 0;
        }
        return i > 0 && new Random().nextInt(10000) < i;
    }

    public static void c(LaunchLogger launchLogger) {
        launchLogger.M();
    }

    public static boolean s(String str) {
        return TextUtils.equals(str, Config.J0());
    }

    public static boolean t(String str) {
        return TextUtils.equals(str, Config.K0());
    }

    public void A(String str) {
        B(str, this.i, this.j, null);
    }

    public final void B(String str, boolean z, boolean z2, Map map) {
        Long lH;
        if (this.g.b() || this.d.contains(str) || (lH = h(str)) == null) {
            return;
        }
        if (TextUtils.equals(str, "feed_stream_one_rendering") || TextUtils.equals(str, "main_content_visible")) {
            if (this.d.contains(TextUtils.equals(str, "main_content_visible") ? "feed_stream_one_rendering" : "main_content_visible")) {
                Map map2 = this.a;
                map2.put("feed_stream_content_visible", (Long[]) map2.get(str));
                A("feed_stream_content_visible");
                u36.a().d();
            }
        }
        ah3 property = ReportPropertyBuilder.e().setEventName("TimeStatistics").setAction("app_start").setProperty("elapsed", lH).setProperty("node_name", p(str)).setProperty("back_to_background_count", Integer.valueOf(bp.a.c())).setProperty("activity_onCreate_duration", Long.valueOf(l(str))).setProperty("stay_duration_num", g(str)).setProperty("is_have_splash_ad", Boolean.valueOf(z)).setProperty("is_have_guide_badge", Boolean.valueOf(z2));
        if (map != null) {
            property.b(map);
        }
        property.reportEvent();
        this.d.add(str);
        if (TextUtils.equals("main_content_visible", str)) {
            v(str);
        }
    }

    public final void C(String str, Map map) {
        long jN = n(str);
        ah3 property = new ReportPropertyBuilder().setEventName("TimeStatistics").setAction("external_download_timing").setProperty("node_name", str).setProperty("application_start_duration", Long.valueOf(jN)).setProperty("stay_duration_num", e());
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                property.setProperty((String) entry.getKey(), entry.getValue());
            }
        }
        vq6.K().g(property);
    }

    public final void D(Long l, Long l2, Long l3, Long l4, long j, LogType logType) {
        if (logType == LogType.OTHER) {
            return;
        }
        if (H()) {
            ThreadPool.b(new a(l, l2, l3, l4, j), ThreadPool.Priority.LOW);
        } else {
            x(logType);
        }
    }

    public final void E(Long l, Long l2, Long l3, Long l4, long j, LogType logType) {
        vq6.K().g(new ReportPropertyBuilder().setEventName("TimeStatistics").setAction("app_start").setProperty(IntentUtil.DURATION, Long.valueOf(j)).setProperty("application_start_duration", l).setProperty("activity_onCreate_duration", l2).setProperty("activity_onStart_duration", l3).setProperty("activity_onResume_duration", l4).setProperty("from", logType.name()));
    }

    public void F(boolean z) {
        this.i = z;
    }

    public void G(boolean z) {
        this.j = z;
    }

    public boolean I(String str) {
        Long[] lArr = (Long[]) this.a.get(str);
        if (lArr != null) {
            return false;
        }
        if (lArr == null) {
            lArr = new Long[2];
            this.a.put(str, lArr);
        }
        lArr[0] = Long.valueOf(SystemClock.elapsedRealtime());
        return true;
    }

    public void J(String str) {
        a(str, null);
    }

    public void K(String str) {
        if (this.g.a() || !I(str)) {
            return;
        }
        C(str, null);
    }

    public void L() {
        if (Config.Z2()) {
            return;
        }
        a58.a.postDelayed(new b(), DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }

    public final void M() {
        JSONObject jSONObjectI;
        cm cmVar = cm.a;
        String strJ = cmVar.j();
        if (TextUtils.isEmpty(strJ) || (jSONObjectI = cmVar.i()) == null || jSONObjectI.length() <= 0) {
            return;
        }
        HashMap map = new HashMap(jSONObjectI.length());
        Iterator<String> itKeys = jSONObjectI.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, jSONObjectI.optString(next));
        }
        ((sn) fc1.a(PhoenixApplication.z())).i().b(strJ, map).n0(2L).z0(a58.c).Y(sh.c()).u0(new c(), new d());
    }

    @Override
    public void a(String str, Map map) {
        if (I(str)) {
            y(str, map);
        }
    }

    @Override
    public void b(String str, long j) {
        vq6.K().g(new ReportPropertyBuilder().setEventName("TimeStatistics").setAction(str).setProperty(IntentUtil.DURATION, Long.valueOf(j)));
    }

    public void d() {
        if (this.c) {
            return;
        }
        Long lH = h("app_onCreateMainProcess");
        Long lH2 = h("activity_onCreate");
        Long lH3 = h("activity_onStart");
        Long lH4 = h("activity_onResume");
        if (lH == null || lH2 == null || lH3 == null || lH4 == null) {
            return;
        }
        long jLongValue = ((Long[]) this.a.get("activity_onResume"))[1].longValue() - ((Long[]) this.a.get("app_onCreateMainProcess"))[0].longValue();
        LogType logTypeO = o();
        D(lH, lH2, lH3, lH4, jLongValue, logTypeO);
        E(lH, lH2, lH3, lH4, jLongValue, logTypeO);
        x(logTypeO);
        this.c = true;
    }

    public final Long e() {
        Long[] lArr = (Long[]) this.a.get("app_attach_base_context");
        if (u(lArr)) {
            return 0L;
        }
        return Long.valueOf(SystemClock.elapsedRealtime() - lArr[0].longValue());
    }

    public final long f(String str, int i, String str2, int i2) {
        Long l;
        Long[] lArr = (Long[]) this.a.get(str);
        if (lArr == null || lArr[i] == null) {
            return -1L;
        }
        Long[] lArr2 = (Long[]) this.a.get(str2);
        if (lArr2 == null || (l = lArr2[i2]) == null) {
            return -2L;
        }
        long jLongValue = l.longValue() - lArr[i].longValue();
        if (jLongValue < 0) {
            return -3L;
        }
        return jLongValue;
    }

    public final Long g(String str) {
        Long[] lArr = (Long[]) this.a.get("app_attach_base_context");
        Long[] lArr2 = (Long[]) this.a.get(str);
        if (u(lArr) || u(lArr2)) {
            return null;
        }
        return Long.valueOf(lArr2[1].longValue() - lArr[0].longValue());
    }

    public final Long h(String str) {
        Long l;
        Long[] lArr = (Long[]) this.a.get(str);
        if (lArr == null || lArr[0] == null || (l = lArr[1]) == null) {
            return null;
        }
        long jLongValue = l.longValue() - lArr[0].longValue();
        Long lValueOf = Long.valueOf(jLongValue);
        if (jLongValue < 0) {
            return null;
        }
        return lValueOf;
    }

    public final long i(String str, String str2) {
        return f(str, 0, str2, 0);
    }

    public void j(String str) {
        Long[] lArr = (Long[]) this.a.get(str);
        if (lArr == null || lArr[1] != null) {
            return;
        }
        lArr[1] = Long.valueOf(SystemClock.elapsedRealtime());
    }

    public final long k(String str) {
        str.hashCode();
        switch (str) {
            case "ad_splash_ad_click_network_after_black_screen_start":
            case "ad_splash_ad_black_screen_end":
            case "ad_splash_ad_close_after_black_screen_start":
                return i("ad_splash_ad_black_screen_start", str);
            case "ad_splash_ad_black_screen_start":
            case "ad_splash_ad_play_start":
            case "ad_splash_ad_viewable":
            case "ad_splash_ad_begin_to_render":
            case "ad_splash_ad_display":
                return i("ad_splash_ad_load_success", str);
            case "ad_splash_ad_play_error":
            case "ad_splash_ad_play_end":
                return i("ad_splash_ad_play_start", str);
            case "ad_splash_ad_load_wtf_api_request_start":
            case "ad_splash_ad_load_config_start":
            case "ad_splash_ad_load_wtf_request_success":
            case "ad_splash_ad_load_wtf_request_failed":
                return i("ad_splash_ad_load_wtf_request_start", str);
            case "ad_splash_ad_skip_loading":
            case "ad_splash_activity_finish_after_click":
                return i("ad_splash_ad_click_network", str);
            case "ad_splash_ad_load_success":
            case "ad_splash_ad_load_wtf_request_start":
            case "ad_splash_ad_load_error":
                return i("ad_splash_ad_load_start", str);
            case "ad_splash_ad_click_network":
            case "ad_splash_ad_close":
                return i("ad_splash_ad_black_screen_end", str);
            case "ad_splash_ad_load_config_end":
                return i("ad_splash_ad_load_config_start", str);
            case "ad_splash_add_ad_container_start":
            case "ad_splash_activity_on_create_end":
            case "ad_splash_activity_finish":
                return i("ad_splash_activity_on_create", str);
            case "ad_splash_activity_on_create":
                return i("ad_splash_ready_to_show_splash_activity", str);
            case "ad_splash_app_foreground":
                return f("activity_onStart", 1, str, 0);
            case "ad_splash_add_ad_container_end":
            case "ad_splash_ad_load_start":
                return i("ad_splash_add_ad_container_start", str);
            case "ad_splash_ad_load_wtf_api_request_success":
            case "ad_splash_ad_load_wtf_api_request_failed":
                return i("ad_splash_ad_load_wtf_api_request_start", str);
            case "ad_splash_ready_to_show_splash_activity":
                return i("ad_splash_app_foreground", str);
            case "ad_splash_activity_finish_after_close":
                return i("ad_splash_ad_close", str);
            default:
                return -1L;
        }
    }

    public final long l(String str) {
        return f("activity_onCreate", 0, str, 0);
    }

    public final long m(String str) {
        return f("activity_onStart", 0, str, 0);
    }

    public final long n(String str) {
        return f("app_onCreateMainProcess", 0, str, 0);
    }

    public LogType o() {
        LogType logType;
        if (this.b == null) {
            String strQ = az7.Q(PhoenixApplication.z());
            if (s(strQ)) {
                logType = !t(strQ) ? LogType.SECOND : LogType.OTHER;
            } else {
                logType = LogType.FIRST;
            }
            this.b = logType;
        }
        return this.b;
    }

    public final String p(String str) {
        str.hashCode();
        switch (str) {
            case "activity_onResume":
                return "activity_on_resume";
            case "app_attach_base_context":
                return "attach_base_context";
            case "app_onCreateMainProcess":
                return "application_on_create";
            case "homeTabRequest":
                return "home_tab_request";
            case "activity_onStart":
                return "activity_on_start";
            case "feedStreamRequest":
                return "feed_stream_request";
            case "splash_ad_duration":
                return "splash_ad_close";
            case "activity_onCreate":
                return "activity_on_create";
            default:
                return str;
        }
    }

    public Long[] q(String str) {
        return (Long[]) this.a.get(str);
    }

    public void r(Application application) {
        application.registerActivityLifecycleCallbacks(this.e);
        this.f.post(this.g);
    }

    public final boolean u(Long[] lArr) {
        return lArr == null || lArr[0] == null || lArr[1] == null;
    }

    public final void v(String str) {
    }

    public void w() {
        if (Config.q4()) {
            PhoenixApplication.M().postDelayed(new e(), 3000L);
        }
    }

    public final void x(LogType logType) {
        int i = f.a[logType.ordinal()];
        if (i == 1) {
            Config.X5();
        } else {
            if (i != 2) {
                return;
            }
            Config.Y5();
        }
    }

    public final void y(String str, Map map) {
        ah3 property = new ReportPropertyBuilder().setEventName("TimeStatistics").setAction("ad_splash_timing").setProperty("node_name", str).setProperty(IntentUtil.DURATION, Long.valueOf(k(str))).setProperty("elapsed", Long.valueOf(m(str))).setProperty("activity_onCreate_duration", Long.valueOf(l(str))).setProperty("application_start_duration", Long.valueOf(n(str)));
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                property.setProperty((String) entry.getKey(), entry.getValue());
            }
        }
        vq6.K().g(property);
        if (TextUtils.equals(str, "ad_splash_ad_display")) {
            v(str);
        }
    }

    public void z() {
        if (this.h) {
            return;
        }
        v04.a("asyncReportLifecycle launcherStartDetector.isInvalidLaunch() = " + this.g.b());
        A("app_attach_base_context");
        A("app_onCreateMainProcess");
        A("activity_onCreate");
        A("activity_onStart");
        A("activity_onResume");
        this.h = true;
    }
}
