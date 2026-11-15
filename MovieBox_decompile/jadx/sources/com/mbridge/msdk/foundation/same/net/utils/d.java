package com.mbridge.msdk.foundation.same.net.utils;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.n;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.tracker.network.toolbox.i;
import com.mbridge.msdk.tracker.p;
import com.mbridge.msdk.tracker.u;
import com.mbridge.msdk.tracker.x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Pattern;

public class d {
    public String A;
    private String B;
    public String C;
    public String D;
    private String E;
    public String F;
    private String G;
    public String H;
    private String I;
    public String J;
    public String K;
    private String L;
    public String M;
    private String N;
    public String O;
    private String P;
    public String Q;
    public String R;
    private String S;
    public String T;
    public String U;
    private String V;
    public String W;
    public String X;
    private String Y;
    public String Z;

    private final String f34630a;

    private String f34631a0;

    public String f34632b;

    public String f34633b0;

    public String f34634c;

    private String f34635c0;

    public String f34636d;

    public String f34637d0;

    public String f34638e;

    private boolean f34639e0;

    public String f34640f;

    private int f34641f0;

    public String f34642g;

    public String f34643h;

    public String f34644i;

    public String f34645j;

    public String f34646k;

    public String f34647l;

    public String f34648m;

    public int f34649n;

    public int f34650o;

    public int f34651p;

    public int f34652q;

    public boolean f34653r;

    public boolean f34654s;

    public int f34655t;

    public ArrayList<String> f34656u;

    public int f34657v;

    public int f34658w;

    public ArrayList<String> f34659x;

    public String f34660y;

    private String f34661z;

    private static class b {

        private static final d f34662a = new d();
    }

    private boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.compile("(https|http)://[-A-Za-z0-9{}+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]").matcher(str.trim()).matches();
    }

    private void b() {
        this.M = this.f34640f + this.L;
    }

    private void c() {
        this.A = this.f34660y + this.f34661z;
        this.H = this.f34660y + this.G;
        i.b().f(this.f34660y);
    }

    public static d h() {
        return b.f34662a;
    }

    public void d(int i10) {
        this.f34641f0 = i10;
    }

    public void e() {
        this.Q = this.f34644i + this.P;
        this.C = this.f34644i + this.B;
        this.T = this.f34644i + this.S;
        this.J = this.f34644i + this.I;
        this.W = this.f34644i + this.V;
    }

    public void f() {
        this.R = this.f34648m + this.P;
        this.D = this.f34648m + this.B;
        this.U = this.f34648m + this.S;
        this.K = this.f34648m + this.I;
        this.X = this.f34648m + this.V;
    }

    public boolean g() {
        try {
            if (this.f34654s) {
                ArrayList<String> arrayList = this.f34659x;
                if (arrayList != null && this.f34658w <= arrayList.size() - 1) {
                    if (!a(this.f34659x.get(this.f34658w))) {
                        this.f34648m = this.f34659x.get(this.f34658w);
                        f();
                    }
                    return true;
                }
            } else {
                ArrayList<String> arrayList2 = this.f34656u;
                if (arrayList2 != null && this.f34657v <= arrayList2.size() - 1) {
                    this.f34644i = this.f34656u.get(this.f34657v);
                    e();
                    return true;
                }
            }
            if (this.f34653r) {
                this.f34657v = 0;
                this.f34658w = 0;
            }
            return false;
        } catch (Throwable th2) {
            o0.a("RequestUrlUtil", th2.getMessage());
            return false;
        }
    }

    public int i() {
        return this.f34641f0;
    }

    public void j() {
        HashMap<String, String> mapC;
        g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD != null) {
            com.mbridge.msdk.setting.a aVarJ = gVarD.j();
            if (aVarJ != null) {
                this.f34647l = aVarJ.f();
                this.f34651p = aVarJ.g();
                this.f34643h = aVarJ.e();
                a();
            }
            com.mbridge.msdk.setting.d dVarY = gVarD.y();
            if (dVarY != null) {
                this.f34646k = dVarY.d();
                this.f34650o = dVarY.e();
                this.f34640f = dVarY.c();
                b();
                a(gVarD);
            }
            this.f34654s = gVarD.n0() == 2;
            this.f34655t = gVarD.n0();
            a(!gVarD.b(2));
            if (gVarD.C() != null && gVarD.C().size() > 0 && (mapC = gVarD.C()) != null && mapC.size() > 0) {
                if (mapC.containsKey("v") && !TextUtils.isEmpty(mapC.get("v")) && a(mapC.get("v"))) {
                    this.f34638e = mapC.get("v");
                    d();
                }
                if (mapC.containsKey(CampaignEx.JSON_KEY_HB) && !TextUtils.isEmpty(mapC.get(CampaignEx.JSON_KEY_HB)) && a(mapC.get(CampaignEx.JSON_KEY_HB))) {
                    this.f34660y = mapC.get(CampaignEx.JSON_KEY_HB);
                    c();
                }
                if (mapC.containsKey("lg") && !TextUtils.isEmpty(mapC.get("lg"))) {
                    String str = mapC.get("lg");
                    if (a(str)) {
                        this.f34636d = str;
                    } else {
                        this.f34645j = str;
                    }
                }
                if (mapC.containsKey("lgt") && !TextUtils.isEmpty(mapC.get("lgt"))) {
                    String str2 = mapC.get("lgt");
                    if (a(str2)) {
                        String strB = b(str2);
                        if (!TextUtils.isEmpty(strB)) {
                            this.f34645j = strB;
                        }
                    } else {
                        this.f34645j = str2;
                    }
                }
            }
            String strU = gVarD.u();
            if (!TextUtils.isEmpty(strU)) {
                this.f34644i = strU;
                e();
                this.f34656u.add(0, strU);
            }
            String strV = gVarD.v();
            if (TextUtils.isEmpty(strV)) {
                return;
            }
            this.f34648m = strV;
            f();
            this.f34659x.add(0, strV);
        }
    }

    private d() {
        this.f34630a = "RequestUrlUtil";
        this.f34632b = DomainNameUtils.getInstance().DEFAULT_HOST_APPLETS;
        this.f34634c = DomainNameUtils.getInstance().DEFAULT_CDN_SPARE_SETTING_URL;
        this.f34636d = DomainNameUtils.getInstance().DEFAULT_HOST_ANALYTICS;
        this.f34638e = DomainNameUtils.getInstance().DEFAULT_HOST_API;
        this.f34640f = DomainNameUtils.getInstance().DEFAULT_HOST_MONITOR_DEFAULT;
        this.f34642g = DomainNameUtils.getInstance().DEFAULT_HOST_PRIVACY;
        this.f34643h = DomainNameUtils.getInstance().DEFAULT_HOST_REVENUE_DEFAULT;
        this.f34644i = DomainNameUtils.getInstance().DEFAULT_HOST_SETTING;
        this.f34645j = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_ANALYTICS;
        this.f34646k = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_MONITOR;
        this.f34647l = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_REVENUE;
        this.f34648m = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_SETTING;
        this.f34649n = 9377;
        this.f34650o = 9377;
        this.f34651p = 9988;
        this.f34652q = 9377;
        this.f34653r = false;
        this.f34654s = false;
        this.f34655t = 1;
        this.f34656u = DomainNameUtils.getInstance().SPARE_SETTING_HOST;
        this.f34657v = 0;
        this.f34658w = 0;
        this.f34659x = DomainNameUtils.getInstance().SPARE_TCP_SETTING_HOST;
        this.f34660y = DomainNameUtils.getInstance().DEFAULT_HB_HOST;
        this.f34661z = "/bid";
        this.A = this.f34660y + this.f34661z;
        this.B = "/sdk/customid";
        this.C = this.f34644i + this.B;
        this.D = this.f34648m + this.B;
        this.E = "/image";
        this.F = this.f34638e + this.E;
        this.G = "/load";
        this.H = this.f34660y + this.G;
        this.I = "/mapping";
        this.J = this.f34644i + this.I;
        this.K = this.f34648m + this.I;
        this.L = "";
        this.M = this.f34643h + this.L;
        this.N = "/batchPaidEvent";
        this.O = this.f34643h + this.N;
        this.P = "/setting";
        this.Q = this.f34644i + this.P;
        this.R = this.f34648m + this.P;
        this.S = "/rewardsetting";
        this.T = this.f34644i + this.S;
        this.U = this.f34648m + this.S;
        this.V = "/appwall/setting";
        this.W = this.f34644i + this.V;
        this.X = this.f34648m + this.V;
        this.Y = "/openapi/ad/v3";
        this.Z = this.f34638e + this.Y;
        this.f34631a0 = "/openapi/ad/v4";
        this.f34633b0 = this.f34638e + this.f34631a0;
        this.f34635c0 = "/openapi/ad/v5";
        this.f34637d0 = this.f34638e + this.f34635c0;
        this.f34639e0 = true;
        this.f34641f0 = 0;
    }

    private String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return Uri.parse(str).getHost();
        } catch (Throwable th2) {
            o0.b("RequestUrlUtil", th2.getMessage());
            return "";
        }
    }

    private void d() {
        this.Z = this.f34638e + this.Y;
        this.f34633b0 = this.f34638e + this.f34631a0;
        this.f34637d0 = this.f34638e + this.f34635c0;
        this.F = this.f34638e + this.E;
    }

    public void c(int i10) {
        this.f34652q = i10;
    }

    public String a(String str, int i10) {
        try {
            if (!TextUtils.isEmpty(str)) {
                String[] strArrSplit = str.split("_");
                if (strArrSplit.length > 1) {
                    return a(true, strArrSplit[1]);
                }
                return a(true, "");
            }
        } catch (Exception e10) {
            o0.b("RequestUrlUtil", e10.getMessage());
        }
        return i10 % 2 == 0 ? this.f34637d0 : this.Z;
    }

    public void b(int i10) {
        this.f34649n = i10;
    }

    public String a(boolean z10, String str) {
        if (z10) {
            if (this.H.contains("{}") && !TextUtils.isEmpty(str)) {
                return this.H.replace("{}", str + "-");
            }
            return this.H.replace("{}", "");
        }
        return this.A.replace("{}", "");
    }

    public void a(boolean z10) {
        this.f34639e0 = z10;
    }

    private void a() {
        this.O = this.f34643h + this.N;
    }

    private void a(g gVar) {
        com.mbridge.msdk.setting.d dVarY;
        if (gVar == null || (dVarY = gVar.y()) == null || dVarY.a() == 1) {
            return;
        }
        int iB = q0.a().b("monitor", NativeComponentConstants.KEY_COMPONENT_TYPE, q0.a().b("t_r_t", 1));
        if (iB != 0 && iB != 1) {
            iB = 0;
        }
        u.a().a(com.mbridge.msdk.foundation.controller.c.m().d(), new x.b().a(new com.mbridge.msdk.foundation.same.report.d()).a(new n()).a(iB, a(iB)).a(q0.a().b("t_m_e_t", MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF)).b(q0.a().b("t_m_e_s", 50)).d(q0.a().b("t_m_r_c", 50)).c(q0.a().b("t_m_t", DefaultLoadControl.DEFAULT_MIN_BUFFER_MS)).e(q0.a().b("t_m_r_t_s", 1)).a(), dVarY.b() * 1000, com.mbridge.msdk.foundation.same.report.c.b());
    }

    private p a(int i10) {
        if (i10 == 1) {
            return new p(new m((byte) 2), h().f34646k, h().f34650o);
        }
        return new p(new com.mbridge.msdk.tracker.network.toolbox.h(), h().M, 0);
    }
}
