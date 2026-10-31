package o;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.AopConstants;
import com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils;
import com.snaptube.ad.guardian.GuardianManager;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.ads.keeper.DaemonCrashInspector;
import com.snaptube.player.OnlineMediaQueueManager;
import com.snaptube.plugin.PluginId;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.log.EventSampleConfig;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.log.StrictModeLogInterceptor;
import com.snaptube.premium.log.counter.EventCounterManager;
import com.snaptube.premium.utils.WindowPlayUtils;
import com.snaptube.util.ProductionEnv;
import com.vungle.ads.internal.signals.SignalManager;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.base.utils.RxBus;
import dagger.Lazy;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import net.pubnative.mediation.adapter.network.SnaptubeNetworkAdapter;
import org.json.JSONException;
import org.json.JSONObject;

public class vq6 implements kh3 {
    public static volatile kh3 m = null;
    public static String n = "user_profile";

    public static String f645o = "profile_update_time";
    public static String p = "user_info_profile";
    public SimpleDateFormat a;
    public final Application b;
    public boolean d;

    @Inject
    Lazy<ti3> h;
    public tu j;
    public boolean e = false;
    public volatile boolean f = false;
    public String g = "INVALID";
    public xb3 i = new n62();
    public volatile boolean k = false;
    public SharedPreferences.OnSharedPreferenceChangeListener l = new d();
    public final String c = String.valueOf(System.currentTimeMillis());

    public class a implements z96 {
        public final Application a;

        public a(Application application) {
            this.a = application;
        }

        public ti3 a() {
            ((g) fc1.a(this.a)).N0(vq6.this);
            return (ti3) vq6.this.h.get();
        }

        @Override
        public Object get() {
            return a();
        }
    }

    public class b implements l3 {
        public b() {
        }

        public void a(RxBus.d dVar) {
            vq6.w(vq6.this);
        }

        @Override
        public void call(Object obj) {
            a((RxBus.d) obj);
        }
    }

    public class c implements l3 {
        public c() {
        }

        public void a(Throwable th) {
            ProductionEnv.throwExceptForDebugging(new IllegalStateException(th));
        }

        @Override
        public void call(Object obj) {
            a((Throwable) obj);
        }
    }

    public class d implements SharedPreferences.OnSharedPreferenceChangeListener {
        public d() {
        }

        public static void a(d dVar) {
            dVar.b();
        }

        public final void b() {
            vq6.x(vq6.this);
        }

        @Override
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if ("key.sensor_sample".equals(str)) {
                zq6.a(new wq6(this));
                sharedPreferences.unregisterOnSharedPreferenceChangeListener(vq6.u(vq6.this));
            }
        }
    }

    public class e implements ki3 {
        public e() {
        }

        @Override
        public void onTrackEvent(String str, JSONObject jSONObject) {
            try {
                if (i02.h().getSuperProperties().length() == 0) {
                    ProductionEnv.debugLog("SATrackerManager", "put common properties");
                    vq6 vq6Var = vq6.this;
                    vq6.v(vq6Var, vq6.t(vq6Var), jSONObject);
                }
            } catch (Exception e) {
                ProductionEnv.logException("SaTrackerException", e);
            }
        }
    }

    public class f extends ze.b {
        public f() {
        }

        @Override
        public void b(String str) {
            if (TextUtils.isEmpty(str) || str.equals(GlobalConfig.getGAID())) {
                return;
            }
            GlobalConfig.setGAID(str);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("gaid", str);
                i02.h().profileSet(jSONObject);
                vq6.this.j0("gaid_change", jSONObject);
            } catch (Exception e) {
                ProductionEnv.errorLog("SATrackerManager", "updateGAID: " + e.getMessage());
            }
        }
    }

    public interface g {
        void N0(vq6 vq6Var);
    }

    public vq6(Application application) {
        this.h = xq1.a(new a(application));
        this.b = application;
        this.j = new qg4(application);
        zq6.a(new mq6(this, application));
    }

    public static boolean H() {
        boolean zA = p57.a("is_first_time_use_app", true);
        if (zA) {
            p57.g("is_first_time_use_app", false);
        }
        return zA;
    }

    public static kh3 K() {
        return P();
    }

    public static kh3 P() {
        if (m == null) {
            synchronized (vq6.class) {
                try {
                    if (m == null) {
                        m = new vq6(PhoenixApplication.C());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return m;
    }

    public static void W(String str, JSONObject jSONObject) {
        new ReportPropertyBuilder().setEventName("UserLogUpdate").setAction(str).setProperty("data_source", "android").addAllProperties(jSONObject).reportEvent();
    }

    public static void a(vq6 vq6Var, String str) {
        vq6Var.e0(str);
    }

    public static void i(vq6 vq6Var, String str) {
        vq6Var.d0(str);
    }

    public static void j(vq6 vq6Var, ah3 ah3Var) {
        vq6Var.X(ah3Var);
    }

    public static void k(vq6 vq6Var, Application application) {
        vq6Var.V(application);
    }

    public static void l(vq6 vq6Var, String str) {
        vq6Var.c0(str);
    }

    public static void m(vq6 vq6Var) {
        vq6Var.f0();
    }

    public static void n(vq6 vq6Var, ah3 ah3Var) {
        vq6Var.a0(ah3Var);
    }

    public static void o(vq6 vq6Var, ah3 ah3Var, Throwable th) {
        vq6Var.Z(ah3Var, th);
    }

    public static void p(String str, JSONObject jSONObject) {
        W(str, jSONObject);
    }

    public static void q(vq6 vq6Var, String str, ah3 ah3Var) {
        vq6Var.b0(str, ah3Var);
    }

    public static void r(vq6 vq6Var, ah3 ah3Var, Long l) {
        vq6Var.Y(ah3Var, l);
    }

    public static void s(vq6 vq6Var) {
        vq6Var.T();
    }

    public static Application t(vq6 vq6Var) {
        return vq6Var.b;
    }

    public static SharedPreferences.OnSharedPreferenceChangeListener u(vq6 vq6Var) {
        return vq6Var.l;
    }

    public static void v(vq6 vq6Var, Context context, JSONObject jSONObject) throws JSONException {
        vq6Var.i0(context, jSONObject);
    }

    public static void w(vq6 vq6Var) {
        vq6Var.l0();
    }

    public static void x(vq6 vq6Var) {
        vq6Var.q0();
    }

    public static void z(Context context) {
        String strA = xi7.a(context);
        if (!strA.equals(context.getPackageName()) || strA.contains(":")) {
            return;
        }
        i02 i02VarH = i02.h();
        eh4 eh4Var = eh4.a;
        Objects.requireNonNull(eh4Var);
        i02VarH.o(new pq6(eh4Var));
    }

    public final void A(ah3 ah3Var) {
        Map propertyMap;
        Object obj;
        String eventName = ah3Var.getEventName();
        if (TextUtils.isEmpty(eventName) || (propertyMap = ah3Var.getPropertyMap()) == null) {
            return;
        }
        if ("ExtractVideoInfo".equals(eventName)) {
            obj = propertyMap.get("event_url");
        } else {
            obj = "Task".equals(eventName) ? propertyMap.get("content_url") : null;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ah3Var.setProperty("is_logined", Boolean.valueOf(hg7.b(str)));
        }
    }

    public final void B(ah3 ah3Var) {
        if (TextUtils.equals(ah3Var.getEventName(), "VideoPlay")) {
            if (ah3Var.getPropertyMap().containsKey("action_status")) {
                ProductionEnv.d("SATrackerManager", "action_status is not empty, so ignore update");
            } else {
                ah3Var.setProperty("action_status", pa8.a());
            }
        }
    }

    public final void C(ah3 ah3Var) {
        if (TextUtils.equals(ah3Var.getEventName(), "VideoPlay")) {
            ah3Var.setProperty("is_pip_supported", Boolean.valueOf(WindowPlayUtils.h()));
        }
    }

    public final void D(ah3 ah3Var) {
        if (TextUtils.equals(ah3Var.getEventName(), "Ad")) {
            long jC = ah3Var.c();
            long j = 0;
            if (jC <= 0) {
                return;
            }
            Object obj = ah3Var.getPropertyMap().get(SnaptubeNetworkAdapter.AD_POS);
            if (obj instanceof String) {
                Object obj2 = ah3Var.getPropertyMap().get("real_ad_pos");
                String strL = (!(obj2 instanceof String) || TextUtils.isEmpty((CharSequence) obj2)) ? L((String) obj) : L((String) obj2);
                if (TextUtils.isEmpty(strL)) {
                    return;
                }
                long jA = EventCounterManager.a(strL).a();
                if (jA <= 0) {
                    j = -1;
                } else if (jC > jA) {
                    j = jC - jA;
                }
                ah3Var.setProperty("scene_elapse", Long.valueOf(j));
            }
        }
    }

    public final void E(ah3 ah3Var) {
        String eventName = ah3Var.getEventName();
        String action = ah3Var.getAction();
        if (("ExtractVideoInfo".equals(eventName) || "Task".equals(eventName)) && TextUtils.equals("fail", action)) {
            ah3Var.setProperty("is_use_vpn", Boolean.valueOf(q55.F(PhoenixApplication.z())));
        }
    }

    public final void F(ah3 ah3Var) {
        String eventName = ah3Var.getEventName();
        if ("VideoPlay".equals(eventName) || "Search".equals(eventName) || "ExtractVideoInfo".equals(eventName) || "Task".equals(eventName)) {
            ah3Var.setProperty("is_in_whitelist", Boolean.valueOf(if9.r(PhoenixApplication.z())));
        }
    }

    public final void G(ah3 ah3Var) {
        if (TextUtils.equals(ah3Var.getEventName(), "Exposure") && ah3Var.getPropertyMap() == null) {
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("event has no property: " + ah3Var.build().toString()));
        }
    }

    public final void I() {
        boolean zA = p57.a("gandalf_tracker_debug", false);
        i02.h().i(this.b, zA ? "https://debuger.snaptube.app/debug?project=default" : Config.J1(O()), Config.I1(N()), ProductionEnv.isLoggable());
        if (zA) {
            i02.h().g(true);
        }
        i02.h().f(new cf1());
        i02.h().f(new lx0(this.h, this.b));
        i02.h().f(new nr());
        i02.h().f(new tn());
        i02.h().f(new e());
        i02.h().f(new StrictModeLogInterceptor());
        i02.h().f(new df1());
        i02.h().f(new g28());
        if (!zA && Config.h4()) {
            i02.h().n(new hq6(com.snaptube.base.http.a.a()));
        }
        y();
        i02.h().identify(me8.g(this.b));
        R(this.b);
        q0();
    }

    public final void J() {
        i02.h().flush();
    }

    public final String L(String str) {
        if (TextUtils.equals(str, AdsPos.INTERSTITIAL_LAUNCH.pos())) {
            return "cold_splash_ads";
        }
        if (TextUtils.equals(str, AdsPos.HOT_SPLASH.pos())) {
            return "hot_splash_ads";
        }
        if (TextUtils.equals(str, AdsPos.START_DOWNLOAD_INTERSTITIAL.pos()) || TextUtils.equals(str, AdsPos.DOWNLOAD_OUTSIDE_REWARD.pos()) || TextUtils.equals(str, AdsPos.BATCH_DOWNLOAD_REWARD.pos())) {
            return "choose_format";
        }
        if (TextUtils.equals(str, AdsPos.CLEAN_INTERSTITIAL.pos())) {
            return "clean_junk";
        }
        if (TextUtils.equals(str, AdsPos.PHONE_BOOST_INTERSTITIAL.pos())) {
            return "phone_boost";
        }
        if (TextUtils.equals(str, AdsPos.BATTERY_SAVER_INTERSTITIAL.pos())) {
            return "battery_saver";
        }
        return null;
    }

    public final SimpleDateFormat M() {
        if (this.a == null) {
            this.a = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS", Locale.US);
        }
        return this.a;
    }

    public final String N() {
        return "http://a.gdfsnt.com/config/?project=default";
    }

    public final String O() {
        return "http://a.gdfsnt.com/sa?project=default";
    }

    public String Q() {
        try {
            return i02.h().getLastScreenUrl();
        } catch (NullPointerException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Context is null ? : ");
            sb.append(PhoenixApplication.z() == null);
            ProductionEnv.throwExceptForDebugging(new NullPointerException(sb.toString()));
            return null;
        }
    }

    public final void R(Context context) {
        Object obj = null;
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                i0(context, jSONObject);
                i02.h().registerSuperProperties(jSONObject);
                qd6.e.d(jSONObject);
            } catch (Exception e2) {
                e = e2;
                obj = jSONObject;
                h0("initCommonProperty", obj, e);
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public final boolean S() {
        Boolean boolA = qs.a.a();
        if (boolA == null) {
            boolA = Boolean.valueOf(Config.p0() != -1);
        }
        boolean zH = H();
        if (boolA.booleanValue()) {
            return false;
        }
        return zH;
    }

    public final void T() {
        if (this.k) {
            return;
        }
        I();
        this.k = true;
        m0(this.b);
    }

    public final void U(ti3 ti3Var, JSONObject jSONObject) throws JSONException {
        ti3.b bVarC = ti3Var.c();
        if (bVarC == null) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("platform", i3.a(bVarC.b()));
        jSONObject2.put("user_name", bVarC.getName());
        String strE = p57.e(p, null);
        if (TextUtils.equals(strE, jSONObject2.toString())) {
            return;
        }
        p57.i(p, jSONObject2.toString());
        ar6.l(strE, jSONObject2);
        ar6.k(jSONObject2, jSONObject);
    }

    public final void V(Application application) {
        this.d = S();
        application.getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).registerOnSharedPreferenceChangeListener(this.l);
        RxBus.d().c(6, 7).Y(sh.a(zq6.c())).u0(new b(), new c());
        ti3.b bVarC = ((ti3) this.h.get()).c();
        if (bVarC != null) {
            this.g = bVarC.getUserId();
        }
    }

    public final void X(ah3 ah3Var) {
        if (g0(ah3Var.getEventName())) {
            PluginId.attachPluginInfo(ah3Var);
        }
        A(ah3Var);
        if ("app_start".equals(ah3Var.getAction())) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            ah3Var.setProperty("arg_bool", Boolean.valueOf(az7.f0()));
            ProductionEnv.debugLog("SATrackerManager", "isRooted costTime " + (System.currentTimeMillis() - jCurrentTimeMillis));
        }
        B(ah3Var);
        C(ah3Var);
        F(ah3Var);
        D(ah3Var);
        E(ah3Var);
        if (!this.i.c(ah3Var)) {
            ProductionEnv.debugLog("sensor-tracker", "trackEvent sample not hit : " + ah3Var.toString());
            return;
        }
        if (this.j.a(ah3Var)) {
            ProductionEnv.debugLog("sensor-tracker", "intercept : " + ah3Var.toString());
            return;
        }
        ah3Var.setProperty(AopConstants.SCREEN_NAME, Q());
        i02.h().track(ah3Var.getEventName(), ah3Var.build());
        if (ar6.j(ah3Var)) {
            J();
        }
    }

    public final void Y(ah3 ah3Var, Long l) {
        ah3Var.setProperty("video_count", l);
        k0(ah3Var);
    }

    public final void Z(ah3 ah3Var, Throwable th) {
        k0(ah3Var);
    }

    public final void a0(ah3 ah3Var) {
        T();
        G(ah3Var);
        if (TextUtils.isEmpty(ah3Var.getEventName())) {
            return;
        }
        if (z98.a(ah3Var)) {
            OnlineMediaQueueManager.a.B().g(zp6.d()).u0(new rq6(this, ah3Var), new sq6(this, ah3Var));
        } else {
            k0(ah3Var);
        }
    }

    @Override
    public void b() {
        zq6.a(new oq6(this));
    }

    public final void b0(String str, ah3 ah3Var) {
        T();
        com.dywx.dyapm.a.d().g(str);
        if (ProductionEnv.isLoggable()) {
            String str2 = "url: " + str;
            if (ah3Var != null && ah3Var.getPropertyMap() != null) {
                str2 = str2 + ", full_url: " + ah3Var.getPropertyMap().get("full_url");
            }
            ProductionEnv.d("sensor-tracker", "event: $AppViewScreen, " + str2);
            ProductionEnv.d("AppViewScreen", str2);
        }
        if (this.i.a(str)) {
            i02.h().trackViewScreen(str, ah3Var == null ? null : ah3Var.build());
            return;
        }
        ProductionEnv.debugLog("sensor-tracker", "trackScreenView sample not hit : " + str);
    }

    @Override
    public void c(String str) {
        zq6.a(new nq6(this, str));
    }

    public final void c0(String str) {
        if (str != null) {
            try {
                if (str.equals(GlobalConfig.getFcmToken())) {
                    return;
                }
            } catch (Exception e2) {
                ProductionEnv.errorLog("SATrackerManager", "updateFcmTokenProfile: " + e2.getMessage());
                return;
            }
        }
        GlobalConfig.setFcmToken(str);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("fcm_token", str);
        i02.h().profileSet(jSONObject);
        j0("fcm_token_change", jSONObject);
    }

    @Override
    public void d(String str) {
        zq6.a(new tq6(this, str));
    }

    public final void d0(String str) {
        if (str != null) {
            try {
                if (str.equals(Config.l0())) {
                    return;
                }
            } catch (Exception e2) {
                ProductionEnv.errorLog("SATrackerManager", "updateLangProfile: " + e2.getMessage());
                return;
            }
        }
        Config.B5(str);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(GuardianManager.LANG, str);
        i02.h().profileSet(jSONObject);
        j0("lang_change", jSONObject);
    }

    @Override
    public void e(String str) {
        zq6.a(new lq6(this, str));
    }

    public final void e0(String str) {
        if (str != null) {
            try {
                if (str.equals(Config.C())) {
                    return;
                }
            } catch (Exception e2) {
                ProductionEnv.errorLog("SATrackerManager", "updateRegionProfile: " + e2.getMessage());
                return;
            }
        }
        Config.l5(str);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("region", str);
        i02.h().profileSet(jSONObject);
        j0("region_change", jSONObject);
    }

    @Override
    public void f(boolean z) {
        this.e = z;
    }

    public final void f0() {
        try {
            JSONObject jSONObject = new JSONObject();
            U((ti3) this.h.get(), jSONObject);
            i02.h().profileSet(jSONObject);
            j0("user_info_change", jSONObject);
        } catch (Exception unused) {
        }
    }

    @Override
    public void g(ah3 ah3Var) {
        zq6.a(new qq6(this, ah3Var));
    }

    public final boolean g0(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return "VideoPlay".equals(str) || "Search".equals(str) || "AppError".equals(str) || "ExtractVideoInfo".equals(str) || "YouTubeWebviewPlaylist".equals(str) || "Api".equals(str) || "Task".equals(str) || "Analysis".equals(str) || "SignatureScriptUrlFetcher".equals(str) || "Publish".equals(str);
    }

    @Override
    public void h(String str, ah3 ah3Var) {
        zq6.a(new iq6(this, str, ah3Var));
    }

    public final void h0(String str, Object obj, Exception exc) {
        ProductionEnv.d("SATrackerManager", "onTrackError:" + str);
    }

    public final void i0(Context context, JSONObject jSONObject) throws JSONException {
        String str = !PhoenixApplication.T(context) ? "hook_" : "";
        jSONObject.put("version_code", az7.P(context));
        jSONObject.put("$utm_source", p57.b());
        jSONObject.put(CampaignEx.JSON_KEY_PACKAGE_NAME, context.getPackageName());
        jSONObject.put("device_id", me8.g(context));
        jSONObject.put("signature", str + xi7.b(context, true));
        jSONObject.put("unique_id", az7.O(context));
        jSONObject.put("android_sdk_int", Build.VERSION.SDK_INT);
        jSONObject.put("session_id", this.c);
        jSONObject.put("is_first_time", this.d);
    }

    @Override
    public boolean isInitialized() {
        return this.k;
    }

    public void j0(String str, JSONObject jSONObject) {
        zq6.a(new uq6(str, jSONObject));
    }

    public final void k0(ah3 ah3Var) {
        zq6.a(new kq6(this, ah3Var));
    }

    public final void l0() {
        if ("INVALID".equals(this.g)) {
            this.g = i02.h().getLoginId();
        }
        ti3.b bVarC = ((ti3) this.h.get()).c();
        if (bVarC == null && TextUtils.isEmpty(this.g)) {
            return;
        }
        if (bVarC == null || !TextUtils.equals(this.g, bVarC.getUserId())) {
            if (bVarC == null) {
                this.g = null;
                i02.h().logout();
            } else {
                this.g = bVarC.getUserId();
                i02.h().login(this.g);
                r0();
            }
            hd7.a();
            J();
        }
    }

    public final void m0(Context context) {
        n0(context);
        p0(context, false);
        hd7.b(context, (ti3) this.h.get());
    }

    public final void n0(Context context) {
        JSONObject jSONObject;
        Exception e2;
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("$utm_source", p57.b());
                jSONObject.put("first_use_time", M().format(new Date()));
                jSONObject.put("landing_id", cm.n(PhoenixApplication.z()));
                jSONObject.put("landing_time", cm.q(PhoenixApplication.z()));
                i02.h().trackInstallation("AppInstall", jSONObject);
            } catch (Exception e3) {
                e2 = e3;
                h0("trackInstall", jSONObject, e2);
            }
        } catch (Exception e4) {
            jSONObject = null;
            e2 = e4;
        }
    }

    public final void o0() {
        ze.a(this.b, new f());
    }

    public final void p0(Context context, boolean z) {
        JSONObject jSONObject;
        String str = "first_cold_start";
        if (p57.a("profile_set_once", false)) {
            jSONObject = null;
        } else {
            try {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put("$utm_source", p57.b());
                    jSONObject.put("first_use_time", M().format(new Date()));
                    jSONObject.put(GuardianManager.LANG, b04.a());
                    jSONObject.put("os_lang", b04.c());
                    jSONObject.put("region", g86.c(context));
                    jSONObject.put("fcm_token", GlobalConfig.getFcmToken());
                    jSONObject.put("gms_available", String.valueOf(gg2.a(context)));
                    jSONObject.put("network_country_iso", az7.C(context));
                    jSONObject.put("random_id", Config.u1());
                    jSONObject.put("install_vc", Config.f0());
                    jSONObject.put("st_utm_source", cm.z(PhoenixApplication.z()));
                    jSONObject.put("landing_page_host", cm.o(PhoenixApplication.z()));
                    jSONObject.put("landing_page_url", cm.p(PhoenixApplication.z()));
                    p57.g("profile_set_once", true);
                    i02.h().profileSetOnce(jSONObject);
                    this.f = true;
                    j0("first_cold_start", jSONObject);
                } catch (Exception e2) {
                    e = e2;
                    h0("profileSetOnce", jSONObject, e);
                }
            } catch (Exception e3) {
                e = e3;
                jSONObject = null;
            }
        }
        if (!z || !Config.x3()) {
            if (System.currentTimeMillis() < p57.c(f645o, 0L) + SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
                return;
            }
        }
        try {
            try {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("vip", String.valueOf(PhoenixApplication.C().Q()));
                    jSONObject2.put(GuardianManager.LANG, b04.a());
                    jSONObject2.put("os_lang", b04.c());
                    jSONObject2.put("region", g86.c(context));
                    jSONObject2.put("fcm_token", GlobalConfig.getFcmToken());
                    jSONObject2.put("gms_available", String.valueOf(gg2.a(context)));
                    jSONObject2.put("network_country_iso", az7.C(context));
                    jSONObject2.put("download_button_enable", Config.i0());
                    jSONObject2.put("gp_version_code", an5.a(context));
                    jSONObject2.put("storage_permission", sq5.c());
                    jSONObject2.put("location_permission", sq5.a());
                    jSONObject2.put("android_id", SensorsDataUtils.getAndroidID(context));
                    jSONObject2.put("utm_source2", cm.I(context));
                    jSONObject2.put("utm_term2", cm.K(context));
                    jSONObject2.put("utm_content2", cm.F(context));
                    jSONObject2.put("utm_medium2", cm.H(context));
                    jSONObject2.put("utm_campaign2", cm.D(context));
                    jSONObject2.put("share_user", cm.w(context));
                    jSONObject2.put("share_count", cm.t(context));
                    jSONObject2.put("st_utm_source", cm.z(PhoenixApplication.z()));
                    jSONObject2.put("landing_page_host", cm.o(PhoenixApplication.z()));
                    jSONObject2.put("landing_page_url", cm.p(PhoenixApplication.z()));
                    if (!az7.a(24)) {
                        jSONObject2.put("daemon_on", DaemonCrashInspector.j(context));
                        jSONObject2.put("daemon_version", 1);
                    }
                    jSONObject2.put("version_code", az7.P(context));
                    jSONObject2.put("device_id", me8.g(context));
                    String strN = cm.n(context.getApplicationContext());
                    Object objQ = cm.q(context.getApplicationContext());
                    if (!TextUtils.isEmpty(strN)) {
                        jSONObject2.put("landing_id", strN);
                    }
                    if (objQ != null) {
                        jSONObject2.put("landing_time", objQ);
                    }
                    String strE = p57.e(n, null);
                    String string = jSONObject2.toString();
                    if (TextUtils.equals(strE, string)) {
                        return;
                    }
                    p57.i(n, string);
                    ar6.l(strE, jSONObject2);
                    U((ti3) this.h.get(), jSONObject2);
                    p57.h(f645o, System.currentTimeMillis());
                    i02.h().profileSet(jSONObject2);
                    if (!this.f) {
                        str = "everyday_update";
                    }
                    j0(str, jSONObject2);
                    o0();
                } catch (Exception e4) {
                    e = e4;
                    jSONObject = jSONObject2;
                    h0("profileSet", jSONObject, e);
                }
            } catch (Exception e5) {
                e = e5;
            }
        } catch (AssertionError e6) {
            ProductionEnv.errorLog("SATrackerManager", e6);
        }
    }

    public final void q0() {
        EventSampleConfig eventSampleConfig;
        String strH1 = Config.H1();
        if (TextUtils.isEmpty(strH1)) {
            eventSampleConfig = null;
        } else {
            try {
                eventSampleConfig = (EventSampleConfig) j23.b(strH1, EventSampleConfig.class);
            } catch (Exception e2) {
                ProductionEnv.throwExceptForDebugging(e2);
                eventSampleConfig = null;
            }
        }
        this.i.b(eventSampleConfig);
    }

    public void r0() {
        zq6.a(new jq6(this));
    }

    public final void y() {
        qd6 qd6Var = qd6.e;
        if (p57.a("key.qa_log_inspector_enable", false)) {
            qd6Var.e(true);
            i02.h().f(qd6Var.a());
        }
    }
}
