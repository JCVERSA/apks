package com.mbridge.msdk.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import com.aliyun.player.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.b0;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.y0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class b {

    public static int f36381c1 = 1500;
    private boolean D0;
    private long F;
    private JSONArray F0;
    private JSONObject G0;
    private ArrayList<Integer> H;
    private d I;
    private long I0;
    private C0511b J;
    private long N0;
    private HashMap<String, String> O;
    private boolean O0;
    private String P;
    private int U;
    private String U0;
    private String X;
    private Map<String, String> Y;

    private int f36384a1;

    private String f36387b1;

    private int f36399h0;

    private String f36405k0;

    private int f36406l;

    private String f36407l0;

    private List<com.mbridge.msdk.foundation.entity.a> f36410n;

    private int f36413o0;

    private long f36414p;

    private int f36415p0;

    private com.mbridge.msdk.setting.a f36416q;

    private int f36417q0;

    private String f36418r;

    private int f36419r0;

    private Map<String, a> f36420s;

    private boolean f36422t;

    private int f36424u;

    private long f36425u0;

    private long f36427v0;

    private boolean f36382a = false;

    private JSONArray f36385b = new JSONArray();

    private JSONArray f36388c = new JSONArray();

    private String f36390d = "";

    private int f36392e = 0;

    private int f36394f = 0;

    private int f36396g = 2;

    private int f36398h = 0;

    private String f36400i = "";

    private String f36402j = "";

    private String f36404k = "";

    private int f36408m = 0;

    private int f36412o = 0;

    private int f36426v = 1;

    private boolean f36428w = false;

    private String f36430x = "";

    private String f36432y = "";

    private String f36434z = "";
    private String A = "";
    private String B = "";
    private int C = 120;
    private String D = com.mbridge.msdk.foundation.same.net.utils.d.h().f34644i;
    private String E = com.mbridge.msdk.foundation.same.net.utils.d.h().f34648m;
    private int G = f36381c1;
    private int K = 0;
    private long L = 86400;
    private int M = 0;
    private int N = 3;
    private boolean Q = true;
    private int R = 0;
    private boolean S = false;
    private boolean T = false;
    private int V = 0;
    private int W = 0;
    private String Z = BuildConfig.VERSION_NAME;

    private int f36383a0 = 30;

    private int f36386b0 = 9377;

    private int f36389c0 = 0;

    private int f36391d0 = 5;

    private int f36393e0 = 1;

    private int f36395f0 = 8000;

    private String f36397g0 = "";

    private int f36401i0 = 10;

    private int f36403j0 = 120;

    private String f36409m0 = "";

    private String f36411n0 = "";

    private String f36421s0 = "";

    private String f36423t0 = "";

    private List<Integer> f36429w0 = new ArrayList();

    private int f36431x0 = 3;

    private int f36433y0 = 0;

    private int f36435z0 = 3;
    private int A0 = 0;
    private int B0 = 10;
    private int C0 = 600;
    private int E0 = 0;
    private String H0 = "";
    private int J0 = 8000;
    private int K0 = 1;
    private long L0 = 10;
    private int M0 = 3;
    private int P0 = 1;
    private int Q0 = 1;
    private int R0 = 1;
    private int S0 = 1;
    private String T0 = "";
    private int V0 = 1300;
    private int W0 = 0;
    private int X0 = 0;
    private long Y0 = 3600;
    private String Z0 = "";

    public static class a {

        private List<String> f36436a;

        private List<String> f36437b;

        private List<String> f36438c;

        private List<String> f36439d;

        public List<String> a() {
            return this.f36436a;
        }

        public List<String> b() {
            return this.f36437b;
        }

        public List<String> c() {
            return this.f36438c;
        }

        public List<String> d() {
            return this.f36439d;
        }

        public void a(JSONObject jSONObject) {
            try {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("x");
                if (jSONArrayOptJSONArray != null) {
                    this.f36438c = b0.a(jSONArrayOptJSONArray);
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("y");
                if (jSONArrayOptJSONArray2 != null) {
                    this.f36439d = b0.a(jSONArrayOptJSONArray2);
                }
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("width");
                if (jSONArrayOptJSONArray3 != null) {
                    this.f36437b = b0.a(jSONArrayOptJSONArray3);
                }
                JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("height");
                if (jSONArrayOptJSONArray4 != null) {
                    this.f36436a = b0.a(jSONArrayOptJSONArray4);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public static String a(Context context, String str) {
        try {
            g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD != null && gVarD.G() != null) {
                String host = Uri.parse(str).getHost();
                Iterator<Map.Entry<String, String>> it = gVarD.G().entrySet().iterator();
                while (it.hasNext()) {
                    String key = it.next().getKey();
                    if (!TextUtils.isEmpty(host) && host.contains(key)) {
                        String str2 = gVarD.G().get(key);
                        return TextUtils.isEmpty(str2) ? "" : str2.replace("{gaid}", com.mbridge.msdk.foundation.tools.f.d());
                    }
                }
                return "";
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public long A() {
        return this.L;
    }

    public boolean A0() {
        return this.Q;
    }

    public int B() {
        return this.N;
    }

    public boolean B0() {
        return this.f36422t;
    }

    public HashMap<String, String> C() {
        return this.O;
    }

    public boolean C0() {
        return this.f36428w;
    }

    public void D(int i10) {
        this.f36384a1 = i10;
    }

    public boolean D0() {
        return this.S;
    }

    public int E() {
        return this.U;
    }

    public boolean E0() {
        return this.f36382a;
    }

    public int F() {
        return this.V;
    }

    public boolean F0() {
        return (TextUtils.isEmpty(this.B) || TextUtils.isEmpty(this.f36434z) || TextUtils.isEmpty(this.A) || TextUtils.isEmpty(this.f36430x)) ? false : true;
    }

    public Map<String, String> G() {
        return this.Y;
    }

    public boolean G0() {
        return (TextUtils.isEmpty(this.B) || TextUtils.isEmpty(this.f36434z) || TextUtils.isEmpty(this.A) || TextUtils.isEmpty(this.f36432y)) ? false : true;
    }

    public JSONArray H() {
        return this.f36385b;
    }

    public boolean H0() {
        return this.T;
    }

    public JSONArray I() {
        return this.f36388c;
    }

    public boolean I0() {
        return this.D0;
    }

    public String J() {
        return this.Z;
    }

    public boolean J0() {
        return this.O0;
    }

    public int K() {
        return this.f36393e0;
    }

    public void K0() {
        String language = Locale.getDefault().getLanguage();
        if (!G0()) {
            if (TextUtils.isEmpty(language) || !language.equals("zh")) {
                this.B = "Confirm to close? ";
                this.f36434z = "You will not be rewarded after closing the window";
                this.A = "Close it";
                this.f36432y = "Continue";
            } else {
                this.B = "确认关闭？";
                this.f36434z = "关闭后您将不会获得任何奖励噢~ ";
                this.A = "确认关闭";
                this.f36432y = "继续观看";
            }
        }
        if (F0()) {
            return;
        }
        if (TextUtils.isEmpty(language) || !language.equals("zh")) {
            this.B = "Confirm to close? ";
            this.f36434z = "You will not be rewarded after closing the window";
            this.A = "Close it";
            this.f36430x = "Continue";
            return;
        }
        this.B = "确认关闭？";
        this.f36434z = "关闭后您将不会获得任何奖励噢~ ";
        this.A = "确认关闭";
        this.f36430x = "继续试玩";
    }

    public int L() {
        return this.f36395f0;
    }

    public int M() {
        return this.f36399h0;
    }

    public int N() {
        return this.f36403j0;
    }

    public String O() {
        return this.f36405k0;
    }

    public String P() {
        return this.f36407l0;
    }

    public String Q() {
        return this.Z0;
    }

    public long R() {
        return this.Y0;
    }

    public int S() {
        return this.f36384a1;
    }

    public String T() {
        return this.f36409m0;
    }

    public String U() {
        return this.f36411n0;
    }

    public int V() {
        return this.f36413o0;
    }

    public int W() {
        return this.f36415p0;
    }

    public int X() {
        return this.f36417q0;
    }

    public int Y() {
        return this.f36419r0;
    }

    public long Z() {
        return this.f36425u0;
    }

    public long a0() {
        if (this.f36427v0 <= 0) {
            this.f36427v0 = 7200L;
        }
        return this.f36427v0;
    }

    public void b(Map<String, String> map) {
        this.Y = map;
    }

    public int b0() {
        return this.f36431x0;
    }

    public void c(int i10) {
        this.f36392e = i10;
    }

    public int c0() {
        return this.f36433y0;
    }

    public void d(long j10) {
        this.Y0 = j10;
    }

    public int d0() {
        return this.f36435z0;
    }

    public void e(int i10) {
        this.f36396g = i10;
    }

    public int e0() {
        return this.A0;
    }

    public void f(int i10) {
        this.f36398h = i10;
    }

    public int f0() {
        return this.B0;
    }

    public void g(int i10) {
        this.f36406l = i10;
    }

    public int g0() {
        return this.C0;
    }

    public void h(int i10) {
        this.f36408m = i10;
    }

    public int h0() {
        return this.E0;
    }

    public void i(int i10) {
        this.f36412o = i10;
    }

    public JSONArray i0() {
        return this.F0;
    }

    public com.mbridge.msdk.setting.a j() {
        return this.f36416q;
    }

    public JSONObject j0() {
        return this.G0;
    }

    public String k() {
        return this.f36418r;
    }

    public String k0() {
        return this.H0;
    }

    public Map<String, a> l() {
        return this.f36420s;
    }

    public long l0() {
        return this.I0;
    }

    public int m() {
        return this.f36424u;
    }

    public int m0() {
        return this.J0;
    }

    public int n() {
        return this.f36426v;
    }

    public int n0() {
        return this.K0;
    }

    public String o() {
        return this.f36430x;
    }

    public long o0() {
        return this.L0 * 1000;
    }

    public String p() {
        return this.f36432y;
    }

    public int p0() {
        return this.M0;
    }

    public String q() {
        return this.f36434z;
    }

    public long q0() {
        return this.N0;
    }

    public String r() {
        return this.A;
    }

    public int r0() {
        return this.P0;
    }

    public String s() {
        return this.B;
    }

    public int s0() {
        return this.Q0;
    }

    public void t(String str) {
        this.Z0 = str;
    }

    public int t0() {
        return this.R0;
    }

    public String toString() {
        return " cfc=" + this.f36424u + " getpf=" + this.L + " rurl=" + this.D0;
    }

    public String u() {
        return this.D;
    }

    public int u0() {
        return this.S0;
    }

    public String v() {
        return this.E;
    }

    public String v0() {
        return this.T0;
    }

    public long w() {
        return this.F;
    }

    public String w0() {
        return this.U0;
    }

    public ArrayList<Integer> x() {
        return this.H;
    }

    public int x0() {
        return this.V0;
    }

    public d y() {
        return this.I;
    }

    public int y0() {
        return this.W0;
    }

    public C0511b z() {
        return this.J;
    }

    public int z0() {
        return this.X0;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static g b(JSONObject jSONObject) {
        g gVar = null;
        arrayList = null;
        ArrayList arrayList = null;
        if (jSONObject == null) {
            return null;
        }
        try {
            g gVar2 = new g();
            try {
                gVar2.c(jSONObject);
                gVar2.f(jSONObject.optString("cc"));
                gVar2.s(jSONObject.optString("mv_wildcard", "<mvpackage>mbridge</mvpackage>"));
                gVar2.j(jSONObject.optInt("cfc"));
                gVar2.c(jSONObject.optLong("getpf"));
                gVar2.b(jSONObject.optLong("current_time"));
                gVar2.b(jSONObject.optBoolean("cfb"));
                gVar2.a(jSONObject.optLong("awct"));
                gVar2.e(jSONObject.optLong(CampaignEx.JSON_KEY_PLCT) == 0 ? 3600L : jSONObject.optLong(CampaignEx.JSON_KEY_PLCT));
                gVar2.g(jSONObject.optBoolean("rurl"));
                gVar2.i(jSONObject.optLong("uct"));
                gVar2.h(jSONObject.optBoolean("ujds"));
                gVar2.G(jSONObject.optInt("n2"));
                gVar2.H(jSONObject.optInt("n3"));
                gVar2.r(jSONObject.optInt("is_startup_crashsystem", 1));
                gVar2.F(jSONObject.optInt("pcrn"));
                gVar2.f(jSONObject.optLong(CampaignEx.JSON_KEY_PLCTB) == 0 ? 7200L : jSONObject.optLong(CampaignEx.JSON_KEY_PLCTB));
                gVar2.F(jSONObject.optInt("pcrn", 100));
                gVar2.E(jSONObject.optInt("opent", 1));
                gVar2.g(jSONObject.optLong("sfct", 1800L));
                gVar2.U(jSONObject.optInt("upgd", 1));
                gVar2.V(jSONObject.optInt("upsrl", 1));
                gVar2.T(jSONObject.optInt("updevid", 1));
                gVar2.O(jSONObject.optInt("sc", 0));
                gVar2.S(jSONObject.optInt("up_tips", 1));
                gVar2.s(jSONObject.optInt("iseu", -1));
                gVar2.p(jSONObject.optString("jm_unit"));
                try {
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("atf");
                    if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                        arrayList = new ArrayList();
                        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                            String strOptString = jSONArrayOptJSONArray.optString(i10);
                            if (y0.b(strOptString)) {
                                JSONObject jSONObject2 = new JSONObject(strOptString);
                                arrayList.add(new com.mbridge.msdk.foundation.entity.a(jSONObject2.optInt("adtype"), jSONObject2.optString("unitid")));
                            }
                        }
                    }
                    if (arrayList != null) {
                        gVar2.a((List<com.mbridge.msdk.foundation.entity.a>) arrayList);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                gVar2.g(jSONObject.optInt("adct", 259200));
                gVar2.k(jSONObject.optString("confirm_title", ""));
                gVar2.i(jSONObject.optString("confirm_description", ""));
                gVar2.j(jSONObject.optString("confirm_t", ""));
                gVar2.h(jSONObject.optString("confirm_c_rv", ""));
                gVar2.g(jSONObject.optString("confirm_c_play", ""));
                gVar2.c(jSONObject.optString("adchoice_icon", ""));
                gVar2.d(jSONObject.optString("adchoice_link", ""));
                gVar2.e(jSONObject.optString("adchoice_size", ""));
                gVar2.w(jSONObject.optString("platform_logo", ""));
                gVar2.x(jSONObject.optString("platform_name", ""));
                gVar2.a(a(jSONObject.optString("cdnate_cfg", "")));
                gVar2.i(jSONObject.optInt("atrqt", 0));
                gVar2.t(jSONObject.optInt("iupdid", 0));
                gVar2.C(jSONObject.optInt("mcs", 120));
                gVar2.b(jSONObject.optString("ab_id", ""));
                gVar2.y(jSONObject.optString("rid", ""));
                gVar2.q(jSONObject.optString("log_rate", TmcConstants.COLD_OPEN_TYPE));
                gVar2.v(jSONObject.optString("omsdkjs_url", ""));
                gVar2.u(jSONObject.optString("omsdkjs_h5_url", ""));
                gVar2.J(jSONObject.optInt("rty_tk_clk", 0));
                gVar2.L(jSONObject.optInt("rty_tk_imp", 0));
                gVar2.K(jSONObject.optInt("rty_cnt", 3));
                gVar2.N(jSONObject.optInt("rty_to", 600));
                gVar2.M(jSONObject.optInt("rty_inr", 10));
                gVar2.n(jSONObject.optString("dns"));
                gVar2.v(jSONObject.optString("omsdkjs_url", ""));
                gVar2.u(jSONObject.optString("omsdkjs_h5_url", ""));
                long jOptLong = jSONObject.optLong("tcto");
                if (jOptLong == 0) {
                    gVar2.h(10L);
                } else {
                    gVar2.h(jOptLong);
                    JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("jt");
                    if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                        HashMap map = new HashMap();
                        for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray2.optJSONObject(i11);
                            map.put(jSONObjectOptJSONObject.optString("domain"), jSONObjectOptJSONObject.optString("format"));
                        }
                        gVar2.b(map);
                    }
                }
                gVar2.r(jSONObject.optString("mraid_js"));
                gVar2.B(jSONObject.optString("web_env_url"));
                int iOptInt = jSONObject.optInt("alrbs", 0);
                if (iOptInt > 2 || iOptInt < 0) {
                    iOptInt = 0;
                }
                gVar2.h(iOptInt);
                gVar2.e(jSONObject.optBoolean("GDPR_area", false));
                gVar2.l(jSONObject.optInt("ct", 120));
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("ercd");
                if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
                    ArrayList<Integer> arrayList2 = new ArrayList<>();
                    for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
                        int iOptInt2 = jSONArrayOptJSONArray3.optInt(i12);
                        if (iOptInt2 != 0) {
                            arrayList2.add(Integer.valueOf(iOptInt2));
                        }
                    }
                    if (arrayList2.size() > 0) {
                        arrayList2.add(-1);
                        gVar2.a(arrayList2);
                    }
                }
                String strOptString2 = jSONObject.optString("hst");
                if (!TextUtils.isEmpty(strOptString2)) {
                    try {
                        JSONObject jSONObject3 = new JSONObject(i0.a(strOptString2));
                        Iterator<String> itKeys = jSONObject3.keys();
                        HashMap<String, String> map2 = new HashMap<>();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(jSONObject3.optString(next)) && !TextUtils.isEmpty(i0.a(jSONObject3.optString(next)))) {
                                map2.put(next, jSONObject3.optString(next));
                            }
                        }
                        if (map2.size() > 0) {
                            gVar2.a(map2);
                        }
                    } catch (Exception e11) {
                        o0.b("SETTING", e11.getMessage());
                    }
                }
                JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("refactor_switch");
                if (jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray4.length() > 0) {
                    for (int i13 = 0; i13 < jSONArrayOptJSONArray4.length(); i13++) {
                        JSONObject jSONObject4 = jSONArrayOptJSONArray4.getJSONObject(i13);
                        Iterator<String> itKeys2 = jSONObject4.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            if (!TextUtils.isEmpty(next2) && jSONObject4.getBoolean(next2)) {
                                gVar2.a(Integer.parseInt(next2));
                            }
                        }
                    }
                }
                try {
                    int iOptInt3 = jSONObject.optInt("lqcnt", 30);
                    int iOptInt4 = jSONObject.optInt("lqto", 5);
                    int iOptInt5 = jSONObject.optInt("lqswt", 0);
                    int iOptInt6 = jSONObject.optInt("lqtype", 1);
                    gVar2.x(iOptInt4);
                    gVar2.u(iOptInt3);
                    gVar2.w(iOptInt5);
                    gVar2.y(iOptInt6);
                    gVar2.a(jSONObject.optJSONArray("lg_bl"));
                    gVar2.b(jSONObject.optJSONArray("lg_wl"));
                    gVar2.X(jSONObject.optInt("lg_wl_rt"));
                    gVar2.P(jSONObject.optInt("srml", 8000));
                    gVar2.z(jSONObject.optInt("lrml", 8000));
                    gVar2.W(jSONObject.optInt("wgl_d_ms", 1300));
                    gVar2.m(jSONObject.optInt("dp_ct", f36381c1));
                    int i14 = Integer.parseInt(i0.a(jSONObject.optString("lqpt")));
                    if (i14 > 0 && i14 < 65535) {
                        gVar2.v(i14);
                    }
                } catch (Exception unused) {
                }
                gVar2.Y(jSONObject.optInt("wvddt", 0));
                gVar2.l(jSONObject.optString("hst_st", ""));
                gVar2.m(jSONObject.optString("hst_st_t", ""));
                try {
                    int iOptInt7 = jSONObject.optInt("l", 3);
                    boolean z10 = jSONObject.optInt(CampaignEx.JSON_KEY_AD_K, 0) == 1;
                    boolean z11 = jSONObject.optInt("m", 1) == 1;
                    gVar2.I(iOptInt7);
                    gVar2.f(z10);
                    gVar2.a(z11);
                } catch (Exception e12) {
                    o0.b("Setting", e12.getMessage());
                }
                gVar2.n(jSONObject.optInt("fbk_swt", 0));
                gVar2.a(C0511b.a(jSONObject.optJSONObject("fbk")));
                try {
                    int iOptInt8 = jSONObject.optInt("ad_connection_timeout", com.mbridge.msdk.foundation.same.a.f34511o);
                    int iOptInt9 = jSONObject.optInt("ad_read_timeout", com.mbridge.msdk.foundation.same.a.f34513q);
                    int iOptInt10 = jSONObject.optInt("ad_write_timeout", com.mbridge.msdk.foundation.same.a.f34515s);
                    int iOptInt11 = jSONObject.optInt("ad_retry_count", com.mbridge.msdk.foundation.same.a.f34514r);
                    if (iOptInt8 <= 0) {
                        iOptInt8 = com.mbridge.msdk.foundation.same.a.f34511o;
                    }
                    gVar2.c(iOptInt8);
                    if (iOptInt9 <= 0) {
                        iOptInt9 = com.mbridge.msdk.foundation.same.a.f34513q;
                    }
                    gVar2.d(iOptInt9);
                    if (iOptInt10 <= 0) {
                        iOptInt10 = com.mbridge.msdk.foundation.same.a.f34515s;
                    }
                    gVar2.f(iOptInt10);
                    if (iOptInt11 < 0) {
                        iOptInt11 = com.mbridge.msdk.foundation.same.a.f34514r;
                    }
                    gVar2.e(iOptInt11);
                    int iOptInt12 = jSONObject.optInt("max_download_task_size", 10);
                    if (iOptInt12 <= 0) {
                        iOptInt12 = 10;
                    }
                    gVar2.B(iOptInt12);
                    gVar2.A(jSONObject.optInt("max_bitmap_cache_size", 10));
                    gVar2.R(jSONObject.optInt("t_t", 3));
                    gVar2.p(jSONObject.optInt("h_t", 3));
                    gVar2.o(jSONObject.optInt("gtp"));
                    gVar2.d(jSONObject.optLong("i_i_t", 3600L));
                    gVar2.t(jSONObject.optString(com.mbridge.msdk.foundation.entity.b.JSON_KEY_C_I, ""));
                    gVar2.D(jSONObject.optInt("n_c_u_p", 0));
                } catch (Exception unused2) {
                }
                try {
                    gVar2.o(jSONObject.optString("http_track_url", ""));
                } catch (Exception unused3) {
                }
                gVar2.Q(jSONObject.optInt("st_net", 1));
                gVar2.A(jSONObject.optString("vtag", ""));
                try {
                    gVar2.c(jSONObject.optInt("check_webview", 0) != 0);
                } catch (Exception unused4) {
                    gVar2.c(false);
                }
                gVar2.z(jSONObject.optString("swxid"));
                gVar2.c(jSONObject.optJSONArray("sdk_filters"));
                try {
                    gVar2.k(jSONObject.optInt("ch_nv_im_cb", 1));
                } catch (Exception unused5) {
                    gVar2.k(1);
                }
                try {
                    gVar2.d(jSONObject.optInt("do_us_fi_re", 1) != 0);
                } catch (Exception unused6) {
                    gVar2.d(true);
                }
                try {
                    a(jSONObject);
                } catch (Exception e13) {
                    e13.printStackTrace();
                }
                String strOptString3 = jSONObject.optString("bcp");
                if (!TextUtils.isEmpty(strOptString3)) {
                    gVar2.a(com.mbridge.msdk.setting.a.a(i0.a(strOptString3)));
                }
                String strOptString4 = jSONObject.optString("monitor");
                if (!TextUtils.isEmpty(strOptString4)) {
                    gVar2.a(d.a(i0.a(strOptString4)));
                }
                return gVar2;
            } catch (Exception e14) {
                e = e14;
                gVar = gVar2;
                e.printStackTrace();
                return gVar;
            }
        } catch (Exception e15) {
            e = e15;
        }
    }

    public void A(int i10) {
        if (i10 > 0) {
            this.f36401i0 = i10;
        }
    }

    public void B(int i10) {
        this.f36399h0 = i10;
    }

    public void C(int i10) {
        this.f36403j0 = i10;
    }

    public int D() {
        return this.R;
    }

    public void E(int i10) {
        this.f36413o0 = i10;
    }

    public void F(int i10) {
        this.f36415p0 = i10;
    }

    public void G(int i10) {
        this.f36417q0 = i10;
    }

    public void H(int i10) {
        this.f36419r0 = i10;
    }

    public void I(int i10) {
        this.f36431x0 = i10;
    }

    public void J(int i10) {
        this.f36433y0 = i10;
    }

    public void K(int i10) {
        this.f36435z0 = i10;
    }

    public void L(int i10) {
        this.A0 = i10;
    }

    public void M(int i10) {
        this.B0 = i10;
    }

    public void N(int i10) {
        this.C0 = i10;
    }

    public void O(int i10) {
        this.E0 = i10;
    }

    public void P(int i10) {
        this.J0 = i10;
    }

    public void Q(int i10) {
        this.K0 = i10;
    }

    public void R(int i10) {
        this.M0 = i10;
    }

    public void S(int i10) {
        this.P0 = i10;
    }

    public void T(int i10) {
        this.Q0 = i10;
    }

    public void U(int i10) {
        this.R0 = i10;
    }

    public void V(int i10) {
        this.S0 = i10;
    }

    public void W(int i10) {
        this.V0 = i10;
    }

    public void X(int i10) {
        this.W0 = i10;
    }

    public void Y(int i10) {
        this.X0 = i10;
    }

    public void c(String str) {
        this.f36400i = str;
    }

    public void d(int i10) {
        this.f36394f = i10;
    }

    public void e(String str) {
        this.f36404k = str;
    }

    public int f() {
        return this.f36408m;
    }

    public List<com.mbridge.msdk.foundation.entity.a> g() {
        return this.f36410n;
    }

    public int h() {
        return this.f36412o;
    }

    public long i() {
        return this.f36414p;
    }

    public void j(int i10) {
        this.f36424u = i10;
    }

    public void k(int i10) {
        this.f36426v = i10;
    }

    public void l(int i10) {
        this.C = i10;
    }

    public void m(String str) {
        this.E = str;
    }

    public void n(int i10) {
        this.K = i10;
    }

    public void o(int i10) {
        this.M = i10;
        com.mbridge.msdk.foundation.same.net.utils.d.h().d(i10);
    }

    public void p(int i10) {
        this.N = i10;
    }

    public void q(int i10) {
        this.R = i10;
    }

    public void r(int i10) {
        this.U = i10;
    }

    public void s(int i10) {
        this.V = i10;
    }

    public int t() {
        return this.C;
    }

    public void u(int i10) {
        this.f36383a0 = i10;
    }

    public void v(int i10) {
        this.f36386b0 = i10;
        com.mbridge.msdk.foundation.same.net.utils.d.h().b(i10);
        com.mbridge.msdk.foundation.same.net.utils.d.h().c(i10);
    }

    public void w(int i10) {
        this.f36389c0 = i10;
    }

    public void x(int i10) {
        this.f36391d0 = i10;
    }

    public void y(int i10) {
        this.f36393e0 = i10;
    }

    public void z(int i10) {
        this.f36395f0 = i10;
    }

    public void A(String str) {
        this.T0 = str;
    }

    public void B(String str) {
        this.U0 = str;
    }

    public String c() {
        return this.f36402j;
    }

    public void d(String str) {
        this.f36402j = str;
    }

    public int e() {
        return this.f36406l;
    }

    public void f(String str) {
        this.f36418r = str;
    }

    public void g(String str) {
        this.f36430x = str;
    }

    public void h(String str) {
        this.f36432y = str;
    }

    public void i(String str) {
        this.f36434z = str;
    }

    public void j(String str) {
        this.A = str;
    }

    public void k(String str) {
        this.B = str;
    }

    public void l(String str) {
        this.D = str;
    }

    public void m(int i10) {
        this.G = i10;
        com.mbridge.msdk.click.utils.a.f33614c = i10;
    }

    public void n(String str) {
        this.f36387b1 = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        e.a().b(i0.a(str));
    }

    public void p(String str) {
        this.X = str;
    }

    public void q(String str) {
        this.Z = str;
    }

    public void r(String str) {
        this.f36405k0 = str;
    }

    public void s(String str) {
        this.f36407l0 = str;
    }

    public void t(int i10) {
        this.W = i10;
    }

    public void u(String str) {
        this.f36409m0 = str;
    }

    public void w(String str) {
        this.f36421s0 = str;
    }

    public void x(String str) {
        this.f36423t0 = str;
    }

    public void y(String str) {
        this.H0 = str;
    }

    public void z(String str) {
        if (TextUtils.isEmpty(this.f36397g0)) {
            return;
        }
        this.f36397g0 = str;
        if (TextUtils.isEmpty(com.mbridge.msdk.foundation.controller.c.m().i())) {
            com.mbridge.msdk.foundation.controller.c.m().d(this.f36397g0);
        }
    }

    public void c(long j10) {
        this.L = j10;
    }

    public String d() {
        return this.f36404k;
    }

    public void e(long j10) {
        this.f36425u0 = j10;
    }

    public void f(long j10) {
        this.f36427v0 = j10;
    }

    public void g(long j10) {
        this.I0 = j10;
    }

    public void h(long j10) {
        this.L0 = j10;
    }

    public void i(long j10) {
        this.N0 = j10;
    }

    public void o(String str) {
        this.P = str;
    }

    public void c(JSONArray jSONArray) {
        this.F0 = jSONArray;
    }

    public void d(boolean z10) {
        this.S = z10;
    }

    public void e(boolean z10) {
        this.f36382a = z10;
    }

    public void f(boolean z10) {
        this.T = z10;
    }

    public void g(boolean z10) {
        this.D0 = z10;
    }

    public void h(boolean z10) {
        this.O0 = z10;
    }

    public void v(String str) {
        this.f36411n0 = str;
    }

    public void c(JSONObject jSONObject) {
        this.G0 = jSONObject;
    }

    public void c(boolean z10) {
        this.f36428w = z10;
    }

    public static Map<String, a> a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            HashMap map = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                a aVar = new a();
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                if (jSONObjectOptJSONObject != null) {
                    aVar.a(jSONObjectOptJSONObject);
                }
                map.put(next, aVar);
            }
            return map;
        } catch (JSONException e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
            return null;
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
            return null;
        }
    }

    public static class C0511b {

        private String f36440a;

        private JSONArray f36441b;

        private String f36442c;

        private String f36443d;

        private String f36444e;

        private String f36445f;

        public static C0511b a(JSONObject jSONObject) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            C0511b c0511b = new C0511b();
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            c0511b.f36445f = jSONObject.optString(CampaignEx.JSON_KEY_TITLE, contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_title", "string")));
            c0511b.f36440a = jSONObject.optString("cancel", contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_close_close", "string")));
            c0511b.f36443d = jSONObject.optString("submit", contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_close_submit", "string")));
            c0511b.f36444e = jSONObject.optString("submit_notice", contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_submit_notice", "string")));
            c0511b.f36442c = jSONObject.optString("privacy", contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_privacy_des", "string")));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("content");
            c0511b.f36441b = jSONArrayOptJSONArray;
            if (jSONArrayOptJSONArray == null) {
                JSONArray jSONArray = new JSONArray();
                c0511b.f36441b = jSONArray;
                jSONArray.put(contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_content_not_play", "string")));
                c0511b.f36441b.put(contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_content_sound_problems", "string")));
                c0511b.f36441b.put(contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_content_misleading", "string")));
                c0511b.f36441b.put(contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_content_fraud", "string")));
                c0511b.f36441b.put(contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_content_por_violence", "string")));
                c0511b.f36441b.put(contextD.getString(g0.a(contextD, "mbridge_cm_feedback_dialog_content_other", "string")));
            }
            return c0511b;
        }

        public JSONArray b() {
            return this.f36441b;
        }

        public String c() {
            return this.f36442c;
        }

        public String d() {
            return this.f36443d;
        }

        public String e() {
            return this.f36444e;
        }

        public String f() {
            return this.f36445f;
        }

        public String a() {
            return this.f36440a;
        }
    }

    public void a(int i10) {
        this.f36429w0.add(Integer.valueOf(i10));
    }

    private static void a(JSONObject jSONObject) {
        FastKV fastKVBuild = null;
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            try {
                fastKVBuild = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), i0.a("H+tU+FeXHM==")).build();
            } catch (Exception unused) {
            }
        }
        if (fastKVBuild != null) {
            try {
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                if (jSONObject == null || contextD == null) {
                    return;
                }
                String strOptString = jSONObject.optString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                if (!TextUtils.isEmpty(strOptString) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.V, strOptString)) {
                    com.mbridge.msdk.foundation.same.a.V = strOptString;
                    com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                    try {
                        fastKVBuild.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                    } catch (Exception unused2) {
                    }
                }
                String strOptString2 = jSONObject.optString("c");
                if (TextUtils.isEmpty(strOptString2) || TextUtils.equals(com.mbridge.msdk.foundation.same.a.f34503g, strOptString2)) {
                    return;
                }
                com.mbridge.msdk.foundation.same.a.f34503g = strOptString2;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f34503g);
                try {
                    fastKVBuild.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f34503g);
                    return;
                } catch (Exception unused3) {
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        try {
            Context contextD2 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (jSONObject == null || contextD2 == null) {
                return;
            }
            String strOptString3 = jSONObject.optString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
            if (!TextUtils.isEmpty(strOptString3) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.V, strOptString3)) {
                com.mbridge.msdk.foundation.same.a.V = strOptString3;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                SharedPreferences sharedPreferences = contextD2.getSharedPreferences(i0.a("H+tU+FeXHM=="), 0);
                if (sharedPreferences != null) {
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString(i0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                    editorEdit.apply();
                }
            }
            String strOptString4 = jSONObject.optString("c");
            if (TextUtils.isEmpty(strOptString4) || TextUtils.equals(com.mbridge.msdk.foundation.same.a.f34503g, strOptString4)) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.f34503g = strOptString4;
            com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f34503g);
            SharedPreferences sharedPreferences2 = contextD2.getSharedPreferences(i0.a("H+tU+FeXHM=="), 0);
            if (sharedPreferences2 != null) {
                SharedPreferences.Editor editorEdit2 = sharedPreferences2.edit();
                editorEdit2.putString(i0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f34503g);
                editorEdit2.apply();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String a() {
        return this.f36390d;
    }

    public void a(List<com.mbridge.msdk.foundation.entity.a> list) {
        this.f36410n = list;
    }

    public void a(long j10) {
        this.f36414p = j10;
    }

    public void a(com.mbridge.msdk.setting.a aVar) {
        this.f36416q = aVar;
    }

    public void a(Map<String, a> map) {
        this.f36420s = map;
    }

    public void a(ArrayList<Integer> arrayList) {
        this.H = arrayList;
    }

    public void a(d dVar) {
        this.I = dVar;
    }

    public void a(C0511b c0511b) {
        this.J = c0511b;
    }

    public void a(HashMap<String, String> map) {
        this.O = map;
    }

    public void a(JSONArray jSONArray) {
        if (jSONArray == null) {
            jSONArray = new JSONArray();
            jSONArray.put("2000088");
        }
        this.f36385b = jSONArray;
    }

    public void a(boolean z10) {
        this.Q = z10;
    }

    public void b(String str) {
        this.f36390d = str;
    }

    public String b() {
        return this.f36400i;
    }

    public void b(long j10) {
        this.F = j10;
    }

    public void b(JSONArray jSONArray) {
        if (jSONArray == null) {
            jSONArray = new JSONArray();
            jSONArray.put("2000041");
            jSONArray.put("2000042");
            jSONArray.put("2000032");
            jSONArray.put("2000079");
        }
        this.f36388c = jSONArray;
    }

    public void b(boolean z10) {
        this.f36422t = z10;
    }

    public boolean b(int i10) {
        return this.f36429w0.contains(Integer.valueOf(i10));
    }
}
