package com.bytedance.sdk.openadsdk.core.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.EjP.Sj.sef;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.pgl.ssdk.ces.out.PglSSConfig;
import com.transsion.push.PushConstants;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Fmk implements Ym.Sj, vS {
    HiB.sP<sef> Dq;
    private final com.bytedance.sdk.openadsdk.core.settings.Sj Fmk;
    final HiB.sP<ConcurrentHashMap<String, Integer>> Jcg;
    private boolean RiZ;
    private Set<String> TEQ;
    private int TzV;
    private final AtomicBoolean Zq;
    private int dNu;

    private final Runnable f20481ib;
    private final HiB.sP<Map<String, Integer>> kF;
    private HiB.sP<JSONObject> ley;
    private final TEQ sef;
    private final Set<String> uP;
    private volatile boolean uvD;
    private final HiB.sP<Set<String>> wE;
    private final BroadcastReceiver zR;
    public static final String Sj = l6.a.a("_", new CharSequence[]{"bus_con_collect", Mts.kF()});
    public static final String sP = l6.a.a("_", new CharSequence[]{"bus_con", Mts.kF(), Mts.ib(), "timeout"});
    public static final String TKC = l6.a.a("_", new CharSequence[]{"bus_con", Mts.kF(), Mts.ib(), "alpha"});
    private static final String uA = Mts.dNu();
    private static final com.bytedance.sdk.component.Dq.Dq Ym = new com.bytedance.sdk.component.Dq.Dq("TemplateReInitTask") {
        @Override
        public void run() {
            com.bytedance.sdk.component.adexpress.Sj.sP.HiB.sP().uA();
            com.bytedance.sdk.component.adexpress.Sj.sP.HiB.sP().sP(false);
            com.bytedance.sdk.component.adexpress.Sj.sP.sP.sP();
            com.bytedance.sdk.component.adexpress.Sj.sP.HiB.sP().TKC();
        }
    };
    public static String EjP = "";
    public static String HiB = "IABTCF_TCString";

    private static boolean f20479aa = false;
    private static final ConcurrentLinkedQueue<aa.Sj> sU = new ConcurrentLinkedQueue<>();

    private static final Dq f20480dx = new Dq();
    static final ConcurrentHashMap<String, Integer> vS = new ConcurrentHashMap<>();

    class AnonymousClass9 extends BroadcastReceiver {
        private final Runnable sP = new Runnable() {
            @Override
            public void run() {
                JcM.sP(new com.bytedance.sdk.component.Dq.Dq("LoadLocalData") {
                    @Override
                    public void run() {
                        try {
                            Fmk.this.sP();
                        } catch (Exception unused) {
                        }
                    }
                });
            }
        };

        AnonymousClass9() {
        }

        @Override
        public void onReceive(Context context, final Intent intent) {
            if (intent == null) {
                return;
            }
            JcM.sP(new com.bytedance.sdk.component.Dq.Dq("setting_receiver") {
                @Override
                public void run() {
                    String action = intent.getAction();
                    if ("_tryFetRemoDat".equals(action)) {
                        Fmk.this.Sj(intent.getIntExtra("_source", 0), intent.getBooleanExtra("_force", false));
                    } else if ("_dataChanged".equals(action)) {
                        com.bytedance.sdk.component.utils.uA.Sj().removeCallbacks(AnonymousClass9.this.sP);
                        com.bytedance.sdk.component.utils.uA.Sj().postDelayed(AnonymousClass9.this.sP, 10000L);
                    }
                }
            });
        }
    }

    private static final class Sj {
        static final Fmk Sj = new Fmk();
    }

    private Set<String> Aw() {
        return (Set) this.sef.Sj("perf_con_applog_send", this.uP, this.wE);
    }

    @Nullable
    private static SharedPreferences EjP(Context context) {
        try {
            return PreferenceManager.getDefaultSharedPreferences(context);
        } catch (Exception unused) {
            return null;
        }
    }

    private static int TKC(boolean z10) {
        return z10 ? 20 : 5;
    }

    public static boolean TX() {
        return f20479aa;
    }

    public static vS gq() {
        if (dNu.Sj() != null) {
            return Sj.Sj;
        }
        IllegalStateException illegalStateException = new IllegalStateException("context is null");
        Log.e("TTAD.SdkSettings", "context is null", illegalStateException);
        ApmHelper.reportCustomError("context is null", "context is null", illegalStateException);
        return f20480dx;
    }

    public static void mj() {
        Context contextSj;
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC() && (contextSj = dNu.Sj()) != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(contextSj.getPackageName());
                intent.setAction("_dataChanged");
                contextSj.sendBroadcast(intent);
            } catch (Throwable th2) {
                sU.Sj("TTAD.SdkSettings", "", th2);
            }
        }
    }

    private String tX() {
        return this.sef.Sj("force_language", "");
    }

    @Override
    public boolean AVc() {
        return this.sef.Sj("bus_con_video_keep_screen_on", 1) == 1;
    }

    @Override
    public int Bml() {
        return this.sef.Sj("perf_con_thread_stack_size", 0);
    }

    @Override
    public boolean Chv() {
        return this.sef.Sj("perf_con_apm_native", Integer.MAX_VALUE) == 1;
    }

    @Override
    public boolean Dq() {
        return this.sef.Sj("if_both_open", 0) == 1;
    }

    @Override
    public boolean EZ() {
        if (com.bytedance.sdk.component.adexpress.EjP.sP.Sj(dNu.Sj())) {
            return this.sef.Sj("support_rtl", false);
        }
        return false;
    }

    @Override
    public boolean Ei() {
        int iSj = this.Fmk.Sj("perf_con_apm", 100);
        if (iSj == 0) {
            return false;
        }
        return iSj < 0 || iSj >= 100 || iSj > ((int) (Math.random() * 100.0d));
    }

    @Override
    public String FPG() {
        return this.sef.Sj("dc", "TX");
    }

    @Override
    public boolean Fm() {
        int iSj = this.sef.Sj("privacy_ad_enable", Integer.MAX_VALUE);
        if (iSj == 1) {
            return true;
        }
        if (iSj == 0) {
            return false;
        }
        int iRiZ = Mts.RiZ();
        return iRiZ == 1 || iRiZ == 2 || iRiZ == 3;
    }

    @Override
    public int Fmk() {
        Aw();
        return this.TzV;
    }

    public long GMp() {
        return this.sef.Sj("last_req_time", 0L);
    }

    @Override
    public String HS() {
        return this.sef.Sj("dual_event_url", (String) null);
    }

    @Override
    public JSONObject HcZ() {
        return (JSONObject) this.sef.Sj("perf_con_thread_pool_config", new JSONObject(), this.ley);
    }

    @Override
    @Nullable
    public JSONObject HiB() {
        return (JSONObject) this.sef.Sj("digest", null, HiB.Sj);
    }

    @Override
    public boolean HpB() {
        return this.sef.Sj("bus_con_sec_type", Integer.MAX_VALUE) != 0;
    }

    @Override
    public int IOh() {
        return this.sef.Sj("blank_detect_rate", 30);
    }

    @Override
    public int Ir() {
        return this.sef.Sj("bus_con_behavior_count", 300);
    }

    @Override
    public String JcM() {
        return this.sef.Sj("policy_url", "");
    }

    @Override
    public void Jcg() {
        this.sef.Sj().Sj("tt_sdk_settings").Sj("ab_test_param").Sj();
    }

    @Override
    public String LD() {
        return this.sef.Sj("settings_url", "");
    }

    @Override
    public boolean LqL() {
        return this.sef.sP();
    }

    @Override
    public String Mts() {
        return this.sef.Sj("dyn_draw_engine_url", uA);
    }

    @Override
    public String[] MuB() {
        try {
            Set<String> set = this.TEQ;
            if (set == null || set.size() == 0) {
                JSONArray jSONArray = new JSONArray(this.sef.Sj("gecko_hosts", (String) null));
                if (jSONArray.length() != 0) {
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        this.TEQ.add(jSONArray.getString(i10));
                    }
                }
                Set<String> setSj = TEQ.Sj(this.TEQ);
                this.TEQ = setSj;
                if (setSj != null) {
                    if (setSj.size() == 0) {
                    }
                }
                return null;
            }
            return (String[]) this.TEQ.toArray(new String[0]);
        } catch (Throwable unused) {
        }
    }

    public long Ph() {
        long jSj = this.sef.Sj("req_inter_min", 600000L);
        if (jSj < 0 || jSj > 86400000) {
            return 600000L;
        }
        return jSj;
    }

    @Override
    public String QZ() {
        return this.sef.Sj("bus_con_check_clz", "");
    }

    @Override
    public String RiZ() {
        return this.sef.Sj("ab_test_param", "");
    }

    @Override
    public Set<String> RrR() {
        return (Set) this.sef.Sj("perf_con_drop2rt_skip_label_list", Collections.emptySet(), HiB.sP);
    }

    @Override
    public void SP() {
        HiB.Sj Sj2 = this.sef.Sj();
        Sj2.Sj("settings_url", "");
        Sj2.Sj();
    }

    @Override
    public int TEQ() {
        return this.sef.Sj("load_callback_strategy", 0);
    }

    @Override
    public sef TFd() {
        return (sef) this.sef.Sj("perf_con_track_url_strategy", sef.Sj, this.Dq);
    }

    @Override
    public float TO() {
        return this.sef.Sj(TKC, 1.0f);
    }

    @Override
    public int TzV() {
        return this.sef.Sj("loadedCallbackOpportunity", 0);
    }

    @Override
    public boolean UHs() {
        return this.sef.Sj("read_video_from_cache", 1) == 1;
    }

    @Override
    public boolean Uc() {
        return this.sef.Sj("perf_con_adlog_turn_off_retry_stats", 0) == 1;
    }

    @Override
    public int WMZ() {
        return this.sef.Sj("ivrv_downward", 0);
    }

    @Override
    public int Wjd() {
        return this.sef.Sj("isGdprUser", -1);
    }

    @Override
    public boolean Xqg() {
        return this.sef.Sj("token_enable", 0) == 1;
    }

    @Override
    public int Yf(String str) {
        Integer num;
        Map map = (Map) this.sef.Sj("perf_con_applog_rate", null, this.kF);
        if (map == null || (num = (Integer) map.get(str)) == null || num.intValue() < 0 || num.intValue() > 100) {
            return 100;
        }
        return num.intValue();
    }

    @Override
    public int Ym() {
        return this.sef.Sj("splash_video_load_strategy", 0);
    }

    @Override
    public boolean Zq() {
        return this.sef.Sj("allow_blind_mode_request_ad", false);
    }

    @Override
    public boolean aNB() {
        return this.sef.Sj("bus_con_adshow_check_enable", true);
    }

    @Override
    public boolean aZ() {
        return this.sef.Sj("perf_con_use_new_thread_pool", 0) == 1;
    }

    @Override
    public Set<String> aa() {
        return Aw();
    }

    @Override
    public long cX() {
        return this.sef.Sj("perf_con_adlog_expire_time", 0L);
    }

    @Override
    public Set<String> dLt() {
        return (Set) this.sef.Sj("privacy_fields_allowed", Collections.emptySet(), HiB.sP);
    }

    @Override
    public boolean dNu() {
        return this.sef.Sj("ad_revenue_enable", true);
    }

    @Override
    public boolean db() {
        return this.sef.Sj("privacy_debug_unlock", 1) != 0;
    }

    @Override
    public int dwU() {
        int iSj = this.sef.Sj("perf_con_webview_cache_count", 0);
        if (iSj < 0) {
            return 0;
        }
        return iSj;
    }

    @Override
    public long dx() {
        return this.sef.Sj("duration", 10000L);
    }

    @Override
    public boolean eI() {
        return this.sef.Sj("bus_con_rewardedfull_link", 0) == 1;
    }

    @Override
    public int eMB() {
        return this.sef.Sj(sP, 10000);
    }

    @Override
    public String fF() {
        return this.sef.Sj("app_log_url", "");
    }

    @Override
    public String gR() {
        return this.sef.Sj("bus_con_express_host", "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/");
    }

    @Override
    public int gY() {
        return this.sef.Sj("bus_con_send_log_type", 1);
    }

    void hzV() {
        if (Ym.Sj()) {
            com.bytedance.sdk.openadsdk.core.sef.sP().removeCallbacks(this.f20481ib);
            com.bytedance.sdk.openadsdk.core.sef.sP().postDelayed(this.f20481ib, Ph());
        }
    }

    @Override
    public Jcg ib() {
        return (Jcg) this.sef.Sj("insert_js_config", Jcg.Sj, new HiB.sP<Jcg>() {
            @Override
            public Jcg sP(String str) {
                return new Jcg(str);
            }
        });
    }

    @Override
    public int jb() {
        int iSj = this.sef.Sj("privacy_personalized_ad", Integer.MAX_VALUE);
        if (iSj != Integer.MAX_VALUE) {
            return iSj;
        }
        int iRiZ = Mts.RiZ();
        if (iRiZ == 1 || iRiZ == 2) {
            return 2;
        }
        return iRiZ != 3 ? 0 : 1;
    }

    @Override
    public String kF() {
        return this.sef.Sj("playableLoadH5Url", "");
    }

    @Override
    public boolean kb() {
        return this.sef.Sj("perf_con_adlog_turn_off_retry_ad", 0) == 1;
    }

    @Override
    public void ley() {
        String strTX = tX();
        if (TextUtils.isEmpty(strTX)) {
            return;
        }
        if (strTX.equals("zh-Hant")) {
            com.bytedance.sdk.component.utils.aa.Sj(dNu.Sj(), "zh", "tw");
        } else {
            com.bytedance.sdk.component.utils.aa.Sj(dNu.Sj(), strTX, null);
        }
        try {
            TTAdDislikeToast.onResourceUpdated();
        } catch (Throwable th2) {
            sU.sP("TTAD.SdkSettings", th2.getMessage());
        }
    }

    @Override
    public int liH() {
        return this.sef.Sj("perf_con_close_button_delay_check_time", -1);
    }

    @Override
    public int mZN() {
        return this.sef.Sj("perf_con_drawable_code", 0);
    }

    @Override
    public boolean nP() {
        return this.sef.Sj("bus_con_url_check", 1) != 0;
    }

    @Override
    public boolean ndK() {
        return this.uvD;
    }

    @Override
    public boolean nru() {
        return this.sef.Sj(Sj, false);
    }

    @Override
    public String oWa() {
        return this.sef.Sj("target_region", "");
    }

    @Override
    public JSONObject pfr() {
        return (JSONObject) this.sef.Sj("video_cache_config", null, HiB.Sj);
    }

    @Override
    public boolean qRN() {
        return this.sef.Sj("global_rate", 1.0f) == 1.0f;
    }

    @Override
    public boolean sU() {
        return this.sef.Sj("landingpage_new_style", -1) == 1;
    }

    @Override
    public int sdp() {
        int iSj = this.sef.Sj("perf_con_webview_cache_count_v3", 0);
        if (iSj < 0) {
            return 0;
        }
        return iSj;
    }

    @Override
    public int sef() {
        Aw();
        return this.dNu;
    }

    @Override
    public boolean tY() {
        return this.sef.Sj("perf_con_is_new_net_thread", 0) == 1;
    }

    @Override
    public int tz() {
        int iSj = this.sef.Sj("bus_con_auto_click_delay", AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
        return iSj <= 0 ? AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS : iSj;
    }

    @Override
    public String uA() {
        return this.sef.Sj("ab_test_version", "");
    }

    @Override
    public int uP() {
        int iSj = this.sef.Sj("fetch_tpl_timeout_ctrl", AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
        return iSj <= 0 ? AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS : iSj;
    }

    @Override
    public boolean uvD() {
        return this.sef.Sj("support_gzip", false);
    }

    @Override
    public long vS() {
        return this.sef.Sj("data_time", 0L);
    }

    @Override
    public int wE() {
        int iSj = this.sef.Sj("fetch_tpl_second", 0);
        if (iSj <= 0) {
            return 0;
        }
        return iSj;
    }

    @Override
    public int xD() {
        return this.sef.Sj("vbtt", 5);
    }

    @Override
    public boolean xhi() {
        return this.sef.Sj("bus_con_dislike_report_raw", false);
    }

    @Override
    public int xu() {
        int iSj = this.sef.Sj("bus_con_token_thread_count", 4);
        if (iSj <= 0 || iSj > 30) {
            return 4;
        }
        return iSj;
    }

    @Override
    public int zR() {
        return this.sef.Sj("max", 50);
    }

    @Override
    public boolean zwV() {
        return this.sef.Sj("privacy_app_reg", true);
    }

    private Fmk() {
        this.TEQ = Collections.synchronizedSet(new HashSet());
        this.Fmk = new com.bytedance.sdk.openadsdk.core.settings.Sj();
        this.sef = new TEQ(new aa.Sj() {
            @Override
            public void Sj() {
                aa.Sj[] sjArr;
                boolean unused = Fmk.f20479aa = true;
                if (Fmk.sU == null || Fmk.sU.size() == 0 || (sjArr = (aa.Sj[]) Fmk.sU.toArray()) == null) {
                    return;
                }
                for (aa.Sj sj2 : sjArr) {
                    sj2.Sj();
                }
            }

            @Override
            public void sP() {
                if (Fmk.sU == null || Fmk.sU.isEmpty()) {
                    return;
                }
                Iterator it = Fmk.sU.iterator();
                while (it.hasNext()) {
                    ((aa.Sj) it.next()).sP();
                }
            }
        });
        this.Zq = new AtomicBoolean(false);
        this.uvD = false;
        this.dNu = 5000;
        this.TzV = 10;
        AnonymousClass9 anonymousClass9 = new AnonymousClass9();
        this.zR = anonymousClass9;
        this.f20481ib = new Runnable() {
            @Override
            public void run() {
                Fmk.this.EjP(2);
                Fmk.this.hzV();
            }
        };
        this.Jcg = new HiB.sP<ConcurrentHashMap<String, Integer>>() {
            @Override
            public ConcurrentHashMap<String, Integer> sP(String str) {
                if (TextUtils.isEmpty(str)) {
                    return Fmk.vS;
                }
                ConcurrentHashMap<String, Integer> concurrentHashMap = new ConcurrentHashMap<>();
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        int iOptInt = jSONObject.optInt(next, 100);
                        if (!TextUtils.isEmpty(next) && iOptInt >= 0 && iOptInt <= 100) {
                            concurrentHashMap.put(next, Integer.valueOf(iOptInt));
                        }
                    }
                } catch (JSONException e10) {
                    e10.getMessage();
                }
                return concurrentHashMap;
            }
        };
        this.kF = new HiB.sP<Map<String, Integer>>() {
            @Override
            public Map<String, Integer> sP(String str) {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    HashMap map = new HashMap(jSONObject.length());
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        if (!TextUtils.isEmpty(next)) {
                            int iOptInt = jSONObject.optInt(next, 100);
                            if (iOptInt < 0 || iOptInt > 100) {
                                map.put(next, 100);
                            } else {
                                map.put(next, Integer.valueOf(iOptInt));
                            }
                        }
                    }
                    return map;
                } catch (Exception e10) {
                    sU.sP("get applog rate from sp failed:" + e10.getMessage(), new Object[0]);
                    return null;
                }
            }
        };
        this.uP = new HashSet();
        this.wE = new HiB.sP<Set<String>>() {
            @Override
            public Set<String> sP(String str) {
                HashSet hashSet = new HashSet();
                if (!TextUtils.isEmpty(str)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int iOptInt = jSONObject.optInt("applog_count");
                        if (iOptInt >= 2 && iOptInt <= 100) {
                            Fmk.this.TzV = iOptInt;
                        }
                        int iOptInt2 = jSONObject.optInt("applog_interval");
                        if (iOptInt2 >= 100 && iOptInt2 <= 30000) {
                            Fmk.this.dNu = iOptInt2;
                        }
                        JSONArray jSONArray = jSONObject.getJSONArray("core_label_arr");
                        if (jSONArray != null) {
                            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                                String string = jSONArray.getString(i10);
                                if (!TextUtils.isEmpty(string)) {
                                    hashSet.add(string);
                                }
                            }
                        }
                    } catch (JSONException e10) {
                        e10.getMessage();
                    }
                }
                return hashSet.size() == 0 ? new HashSet(Arrays.asList("click", PushConstants.PUSH_SERVICE_TYPE_SHOW, "insight_log", "mrc_show")) : hashSet;
            }
        };
        this.ley = new HiB.sP<JSONObject>() {
            @Override
            public JSONObject sP(String str) {
                JSONObject jSONObject;
                try {
                    jSONObject = new JSONObject(str);
                } catch (Throwable th2) {
                    sU.sP("TTAD.SdkSettings", th2.getMessage());
                    jSONObject = null;
                }
                return jSONObject == null ? new JSONObject() : jSONObject;
            }
        };
        this.Dq = new HiB.sP<sef>() {
            @Override
            public sef sP(String str) {
                sef sefVar = new sef();
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    sefVar.Sj(jSONObject.optInt("enable_strategy", 0) == 1);
                    sefVar.Sj(Sj(jSONObject.optJSONObject("default")));
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("adid_configs");
                    if (jSONObjectOptJSONObject != null) {
                        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            sefVar.Sj(next, Sj(jSONObjectOptJSONObject.getJSONObject(next)));
                        }
                    }
                } catch (Exception unused) {
                }
                return sefVar;
            }

            private sef.Sj Sj(JSONObject jSONObject) {
                if (jSONObject != null) {
                    return new sef.Sj(jSONObject.optInt("retry_times", -1), jSONObject.optInt("time_interval", -1));
                }
                return null;
            }
        };
        try {
            Context contextSj = dNu.Sj();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("_dataChanged");
            if (Build.VERSION.SDK_INT >= 33) {
                contextSj.registerReceiver(anonymousClass9, intentFilter, 4);
            } else {
                contextSj.registerReceiver(anonymousClass9, intentFilter);
            }
        } catch (Exception e10) {
            sU.Sj("TTAD.SdkSettings", "", e10);
        }
    }

    public static String TKC(Context context) {
        SharedPreferences sharedPreferencesEjP;
        return (context == null || (sharedPreferencesEjP = EjP(context)) == null) ? "" : sharedPreferencesEjP.getString(HiB, "");
    }

    @Override
    public boolean Dq(String str) {
        return str == null || ley(str).sef == 1;
    }

    @Override
    public int EjP() {
        return this.sef.Sj("max_tpl_cnts", 100);
    }

    @Override
    public boolean HiB(String str) {
        int i10 = ley(str).HiB;
        if (i10 != 1) {
            return i10 == 2 && TzV.TKC(dNu.Sj()) != 0;
        }
        return TzV.EjP(dNu.Sj());
    }

    @Override
    public int Jcg(String str) {
        return ley(str).TzV;
    }

    @Override
    public boolean LD(String str) {
        Set set;
        if (TextUtils.isEmpty(str) || (set = (Set) this.sef.Sj("token_adx_ids", Collections.emptySet(), HiB.sP)) == null || set.size() == 0) {
            return false;
        }
        return set.contains(str);
    }

    @Override
    public boolean LqL(@NonNull String str) {
        Set set = (Set) this.sef.Sj("privacy_fields_allowed", Collections.emptySet(), HiB.sP);
        if (!set.isEmpty()) {
            return set.contains(str);
        }
        int iRiZ = Mts.RiZ();
        if (iRiZ != 1) {
            if (iRiZ != 2 && iRiZ != 3) {
                return false;
            }
            if (!"mcc".equals(str) && !"mnc".equals(str)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int RiZ(String str) {
        return ley(str).sU;
    }

    @Override
    public int TEQ(String str) {
        return ley(str).Ym;
    }

    @Override
    public JSONObject TzV(String str) {
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject(this.sef.Sj("core_settings", ""));
            try {
                jSONObject2.put("ad_slot_setting", ley(str).Mts);
                return jSONObject2;
            } catch (JSONException e10) {
                e = e10;
                jSONObject = jSONObject2;
                sU.sP("TTAD.SdkSettings", "getCoreSettingJsonObj", e.getMessage());
                return jSONObject;
            }
        } catch (JSONException e11) {
            e = e11;
        }
    }

    @Override
    public int Ym(String str) {
        return ley(str).f20482aa;
    }

    @Override
    public int Zq(String str) {
        return ley(str).TEQ;
    }

    @Override
    public boolean aa(String str) {
        try {
            return ley(str).f20484ib != null;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public boolean dNu(String str) {
        return str == null || DeviceUtils.TEQ(dNu.Sj()) == 0 || ley(str).Fmk == 1;
    }

    @Override
    public int dx(String str) {
        return ley(str).wE;
    }

    @Override
    public int ib(String str) {
        return ley(str).LqL;
    }

    @Override
    public boolean kF(String str) {
        return ley(str).fF;
    }

    @Override
    public boolean sU(String str) {
        return ley(str).f20483dx;
    }

    @Override
    public int uA(String str) {
        if (str == null) {
            return 1500;
        }
        return ley(str).uvD;
    }

    @Override
    public int uP(String str) {
        return ley(str).JcM;
    }

    @Override
    public boolean uvD(String str) {
        return ley(str).zR == 0;
    }

    @Override
    public boolean vS(String str) {
        return ley(str).Jcg == 1;
    }

    @Override
    public boolean wE(String str) {
        return dNu.EjP().ley(str).Zq == 1;
    }

    @Override
    public int zR(String str) {
        return ley(str).ley;
    }

    private static void sP(int i10, boolean z10) {
        Context contextSj = dNu.Sj();
        if (contextSj != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(contextSj.getPackageName());
                intent.setAction("_tryFetRemoDat");
                intent.putExtra("_force", z10);
                intent.putExtra("_source", i10);
                contextSj.sendBroadcast(intent);
            } catch (Throwable unused) {
            }
        }
    }

    @Override
    public boolean EjP(String str) {
        return ley(str).Yf;
    }

    @Override
    public int Fmk(String str) {
        return ley(String.valueOf(str)).Dq;
    }

    @Override
    public void Sj() {
        File file;
        try {
            TKC.Sj();
            this.sef.TKC();
            this.Fmk.TKC();
            Context contextSj = dNu.Sj();
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 24) {
                file = new File(contextSj.getDataDir(), "shared_prefs");
            } else {
                file = new File(contextSj.getDatabasePath("1").getParentFile().getParentFile(), "shared_prefs");
            }
            File file2 = new File(file, "tt_sdk_settings.xml");
            if (file2.exists() && file2.isFile()) {
                String strReplace = file2.getName().replace(".xml", "");
                if (i10 >= 24) {
                    contextSj.deleteSharedPreferences(strReplace);
                } else {
                    contextSj.getSharedPreferences(strReplace, 0).edit().clear().apply();
                    com.bytedance.sdk.component.utils.Jcg.TKC(file2);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public boolean sef(String str) {
        return Fmk(str) != 1;
    }

    @Override
    public void EjP(@TTSdkSettings.FETCH_REQUEST_SOURCE int i10) {
        Sj(i10, false);
    }

    @Override
    public String TKC() {
        return this.sef.Sj("aes_key", "");
    }

    @Override
    public String Yf() {
        return this.sef.Sj("ads_url", "");
    }

    @Override
    public boolean TKC(String str) {
        return ley(str).TKC == 1;
    }

    @Override
    public int TKC(int i10) {
        return ley(String.valueOf(i10)).uA;
    }

    @Override
    @NonNull
    public sP ley(String str) {
        return TKC.Sj(str);
    }

    public static int sP(Context context) {
        SharedPreferences sharedPreferencesEjP;
        if (context == null || (sharedPreferencesEjP = EjP(context)) == null) {
            return -2;
        }
        int i10 = sharedPreferencesEjP.getInt("IABTCF_CmpSdkID", Integer.MIN_VALUE);
        int i11 = sharedPreferencesEjP.getInt("IABTCF_CmpSdkVersion", Integer.MIN_VALUE);
        if (i10 == Integer.MIN_VALUE && i11 == Integer.MIN_VALUE) {
            return -2;
        }
        return sharedPreferencesEjP.getInt("IABTCF_gdprApplies", -1);
    }

    @Override
    public synchronized void sP() {
        SystemClock.elapsedRealtime();
        boolean z10 = this.uvD;
        this.Fmk.Sj(this.uvD);
        this.sef.Sj(this.uvD);
        TKC.Sj(!z10);
        this.uvD = true;
        SystemClock.elapsedRealtime();
        if (!z10) {
            com.bytedance.sdk.openadsdk.core.sef.sP().postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (!Ym.Sj()) {
                        com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj().sP();
                    } else {
                        Fmk.this.EjP(1);
                        Fmk.this.hzV();
                    }
                }
            }, 1000L);
        }
    }

    @Override
    public void Sj(JSONObject jSONObject, HiB.Sj sj2) {
        if (jSONObject == null || !jSONObject.has("dyn_draw_engine_url")) {
            return;
        }
        TEQ teq = this.sef;
        String str = uA;
        String strSj = teq.Sj("dyn_draw_engine_url", str);
        final String strOptString = jSONObject.optString("dyn_draw_engine_url", str);
        if (!TextUtils.isEmpty(strSj) && !TextUtils.isEmpty(strOptString) && !strOptString.equals(strSj)) {
            com.bytedance.sdk.openadsdk.core.sef.sP().postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (TextUtils.equals(Fmk.this.sef.Sj("dyn_draw_engine_url", Fmk.uA), strOptString)) {
                        com.bytedance.sdk.component.adexpress.Sj.sP.HiB.sP().TKC();
                    }
                }
            }, 5000L);
        }
        sj2.Sj("dyn_draw_engine_url", strOptString);
    }

    @Override
    public void sP(JSONObject jSONObject, HiB.Sj sj2) {
        if (jSONObject.has("is_gdpr_user")) {
            int iOptInt = jSONObject.optInt("is_gdpr_user", -1);
            sj2.Sj("isGdprUser", (iOptInt == -1 || iOptInt == 1 || iOptInt == 0) ? iOptInt : -1);
        }
    }

    @Override
    public int Sj(String str) {
        if (str == null) {
            return 0;
        }
        return dNu.EjP().ley(str).RiZ;
    }

    @Override
    public int sP(String str) {
        Integer num;
        Map map = (Map) this.sef.Sj("perf_con_stats_rate", vS, this.Jcg);
        if (map == null || (num = (Integer) map.get(str)) == null || num.intValue() < 0 || num.intValue() > 100) {
            return 100;
        }
        return num.intValue();
    }

    @Override
    public int Sj(String str, boolean z10) {
        if (str == null) {
            return TKC(z10);
        }
        int i10 = ley(str).uP;
        return i10 != -1 ? i10 : TKC(z10);
    }

    @Override
    public int Sj(int i10) {
        return ley(String.valueOf(i10)).WMZ;
    }

    @Override
    public int sP(int i10) {
        return ley(String.valueOf(i10)).sP;
    }

    @Override
    public void Sj(long j10) {
        this.sef.Sj().Sj("last_req_time", j10).Sj();
    }

    @Override
    public void Sj(@TTSdkSettings.FETCH_REQUEST_SOURCE int i10, boolean z10) {
        if (!com.bytedance.sdk.openadsdk.core.sef.HiB() && i10 != 1 && i10 != 2) {
            if (z10) {
                this.RiZ = true;
                return;
            }
            return;
        }
        try {
            if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.uA.sP().EjP())) {
                return;
            }
            if (this.RiZ) {
                this.RiZ = false;
                if (!z10) {
                    z10 = true;
                }
            }
            long jGMp = GMp();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jPh = Ph();
            long j10 = jCurrentTimeMillis - jGMp;
            if (z10 || j10 >= jPh) {
                if (!Ym.Sj()) {
                    sP(i10, z10);
                } else if (this.Zq.compareAndSet(false, true)) {
                    JcM.sP((com.bytedance.sdk.component.Dq.Dq) new Ym(this, this.sef, this.Fmk));
                    com.bytedance.sdk.openadsdk.core.sef.sP().removeCallbacks(this.f20481ib);
                }
            }
        } catch (Throwable th2) {
            ApmHelper.reportCustomError("settings request error", "settings", th2);
        }
    }

    @Override
    public void Sj(boolean z10) {
        this.Zq.set(false);
        hzV();
        if (z10) {
            HashMap map = new HashMap();
            Set<String> setDLt = dLt();
            if (setDLt != null && !setDLt.isEmpty()) {
                map.put(PglSSConfig.CUSTOMINFO_KEY_ALLOWED_FIELDS, setDLt);
            }
            String strFmk = Mts.Fmk();
            if (!TextUtils.isEmpty(strFmk)) {
                map.put(PglSSConfig.CUSTOMINFO_KEY_TRANSFER_HOST, strFmk);
            }
            map.put(PglSSConfig.CUSTOMINFO_KEY_TARGET_IDC, oWa());
            com.bytedance.sdk.openadsdk.core.uA.sP.sP().Sj(map);
            mj();
        }
    }

    @Override
    public void Sj(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("_tryFetRemoDat");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this.zR, intentFilter, 4);
            } else {
                context.registerReceiver(this.zR, intentFilter);
            }
        } catch (Exception e10) {
            sU.Sj("TTAD.SdkSettings", "", e10);
        }
        if (ndK()) {
            EjP(1);
            hzV();
        }
    }

    @Override
    public boolean Sj(PangleEncryptConstant.CryptDataScene cryptDataScene) {
        if (cryptDataScene != PangleEncryptConstant.CryptDataScene.GET_ADS && cryptDataScene != PangleEncryptConstant.CryptDataScene.BIDDING_TOKEN) {
            if (cryptDataScene == PangleEncryptConstant.CryptDataScene.APP_LOG) {
                return this.sef.Sj("perf_con_crypt_V4_applog", false);
            }
            return this.sef.Sj("perf_con_crypt_V4", false);
        }
        return this.sef.Sj("perf_con_crypt_V4_get_ad", false);
    }

    public static void Sj(aa.Sj sj2) {
        ConcurrentLinkedQueue<aa.Sj> concurrentLinkedQueue = sU;
        if (concurrentLinkedQueue.contains(sj2)) {
            return;
        }
        concurrentLinkedQueue.add(sj2);
    }
}
