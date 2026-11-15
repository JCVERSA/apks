package com.mbridge.msdk.setting;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class c {
    private String A;
    private int D;
    private int E;
    private int I;
    private String K;
    private int N;

    private List<Integer> f36447b;

    private List<Integer> f36448c;

    private int f36449d;

    private int f36450e;

    private int f36451f;

    private int f36452g;

    private int f36453h;

    private int f36454i;

    private long f36456k;

    private long f36457l;

    private int f36458m;

    private int f36459n;

    private int f36460o;

    private long f36461p;

    private long f36462q;

    private int f36463r;

    private String f36464s;

    private int f36465t;

    private int f36466u;

    private String f36471z;

    private String f36446a = "";

    private int f36455j = 0;

    private int f36467v = 30;

    private int f36468w = 1;

    private int f36469x = 10;

    private int f36470y = 60;
    private int B = 1;
    private String C = "";
    private int F = 100;
    private int G = 60;
    private int H = 5000;
    private int J = 1;
    private String L = "";
    private String M = "";

    public static l a(JSONObject jSONObject) {
        l lVar = null;
        if (jSONObject == null) {
            return null;
        }
        try {
            l lVar2 = new l();
            try {
                lVar2.e(jSONObject.optString("unitId"));
                lVar2.a(jSONObject.optString("ab_id"));
                lVar2.f(jSONObject.optString("rid"));
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("adSourceList");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        arrayList.add(Integer.valueOf(jSONArrayOptJSONArray.optInt(i10)));
                    }
                    lVar2.a(arrayList);
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("ad_source_timeout");
                if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                        arrayList2.add(Integer.valueOf(jSONArrayOptJSONArray2.optInt(i11)));
                    }
                    lVar2.b(arrayList2);
                }
                lVar2.x(jSONObject.optInt("tpqn"));
                lVar2.c(jSONObject.optInt("aqn"));
                lVar2.b(jSONObject.optInt("acn"));
                lVar2.z(jSONObject.optInt("wt"));
                int i12 = 1;
                lVar2.o(jSONObject.optInt("iscasf", 1));
                lVar2.w(jSONObject.optInt("spmxrt", 5000));
                lVar2.c(jSONObject.optLong("current_time"));
                lVar2.r(jSONObject.optInt("offset"));
                lVar2.d(jSONObject.optLong("dlct", 3600L));
                lVar2.d(jSONObject.optInt("autoplay", 0));
                lVar2.k(jSONObject.optInt("dlnet", 2));
                lVar2.c(jSONObject.optString("no_offer"));
                lVar2.f(jSONObject.optInt("cb_type"));
                lVar2.b(jSONObject.optLong("clct", 86400L));
                lVar2.a(jSONObject.optLong("clcq", 300L));
                lVar2.u(jSONObject.optInt(CampaignEx.JSON_KEY_READY_RATE, 100));
                lVar2.g(jSONObject.optInt("cd_rate", 0));
                lVar2.i(jSONObject.optInt("content", 1));
                lVar2.m(jSONObject.optInt("impt", 0));
                lVar2.l(jSONObject.optInt("icon_type", 1));
                lVar2.b(jSONObject.optString("no_ads_url", ""));
                lVar2.t(jSONObject.optInt("playclosebtn_tm", -1));
                lVar2.s(jSONObject.optInt("play_ctdown", 0));
                lVar2.h(jSONObject.optInt("close_alert", 0));
                lVar2.n(jSONObject.optInt("intershowlimit", 30));
                lVar2.v(jSONObject.optInt("refreshFq", 60));
                lVar2.e(jSONObject.optInt("closeBtn", 0));
                int iOptInt = jSONObject.optInt("tmorl", 1);
                if (iOptInt <= 2 && iOptInt > 0) {
                    i12 = iOptInt;
                }
                lVar2.y(i12);
                lVar2.d(jSONObject.optString("placementid", ""));
                lVar2.p(jSONObject.optInt("ltafemty", 10));
                lVar2.q(jSONObject.optInt("ltorwc", 60));
                lVar2.g(jSONObject.optString("vtag", ""));
                return lVar2;
            } catch (Exception e10) {
                e = e10;
                lVar = lVar2;
                e.printStackTrace();
                return lVar;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public int A() {
        return this.D;
    }

    public int B() {
        return this.E;
    }

    public int C() {
        return this.F;
    }

    public int D() {
        return this.G;
    }

    public int E() {
        return this.H;
    }

    public int F() {
        return this.I;
    }

    public int G() {
        return this.J;
    }

    public String H() {
        return this.K;
    }

    public String I() {
        return this.L;
    }

    public String J() {
        return this.M;
    }

    public int K() {
        return this.N;
    }

    public int L() {
        return this.f36452g;
    }

    public JSONObject M() {
        JSONObject jSONObject = new JSONObject();
        try {
            List<Integer> listB = b();
            if (listB != null && listB.size() > 0) {
                int size = listB.size();
                JSONArray jSONArray = new JSONArray();
                for (int i10 = 0; i10 < size; i10++) {
                    jSONArray.put(listB.get(i10));
                }
                jSONObject.put("adSourceList", jSONArray);
            }
            List<Integer> listC = c();
            if (listC != null && listC.size() > 0) {
                int size2 = listC.size();
                JSONArray jSONArray2 = new JSONArray();
                for (int i11 = 0; i11 < size2; i11++) {
                    jSONArray2.put(listC.get(i11));
                }
                jSONObject.put("ad_source_timeout", jSONArray2);
            }
            jSONObject.put("tpqn", F());
            jSONObject.put("aqn", f());
            jSONObject.put("acn", e());
            jSONObject.put("wt", K());
            jSONObject.put("current_time", o());
            jSONObject.put("offset", y());
            jSONObject.put("dlct", p());
            jSONObject.put("autoplay", L());
            jSONObject.put("dlnet", q());
            jSONObject.put("no_offer", x());
            jSONObject.put("cb_type", h());
            jSONObject.put("clct", k());
            jSONObject.put("clcq", j());
            jSONObject.put(CampaignEx.JSON_KEY_READY_RATE, C());
            jSONObject.put("content", m());
            jSONObject.put("impt", s());
            jSONObject.put("icon_type", r());
            jSONObject.put("no_ads_url", w());
            jSONObject.put("playclosebtn_tm", B());
            jSONObject.put("play_ctdown", A());
            jSONObject.put("close_alert", l());
            jSONObject.put("closeBtn", g());
            jSONObject.put("refreshFq", D());
            jSONObject.put("countdown", n());
            jSONObject.put("allowSkip", d());
            jSONObject.put("tmorl", G());
            jSONObject.put("unitId", H());
            jSONObject.put("placementid", z());
            jSONObject.put("ltafemty", u());
            jSONObject.put("ltorwc", v());
            jSONObject.put("vtag", J());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public List<Integer> b() {
        return this.f36447b;
    }

    public void c(String str) {
        this.A = str;
    }

    public void d(int i10) {
        this.f36452g = i10;
    }

    public int e() {
        return this.f36450e;
    }

    public int f() {
        return this.f36451f;
    }

    public int g() {
        return this.f36453h;
    }

    public int h() {
        return this.f36454i;
    }

    public int i() {
        return this.f36455j;
    }

    public long j() {
        return this.f36456k;
    }

    public long k() {
        return this.f36457l;
    }

    public int l() {
        return this.f36458m;
    }

    public int m() {
        return this.f36459n;
    }

    public int n() {
        return this.f36460o;
    }

    public long o() {
        return this.f36461p;
    }

    public long p() {
        return this.f36462q;
    }

    public int q() {
        return this.f36463r;
    }

    public int r() {
        return this.f36465t;
    }

    public int s() {
        return this.f36466u;
    }

    public int t() {
        return this.f36468w;
    }

    public String toString() {
        List<Integer> list = this.f36447b;
        String str = "";
        if (list != null && list.size() > 0) {
            Iterator<Integer> it = this.f36447b.iterator();
            while (it.hasNext()) {
                str = str + it.next() + ",";
            }
        }
        return "offset = " + y() + " unitId = " + this.K + " fbPlacementId = " + this.f36464s + str;
    }

    public int u() {
        return this.f36469x;
    }

    public int v() {
        return this.f36470y;
    }

    public String w() {
        return this.f36471z;
    }

    public String x() {
        return this.A;
    }

    public void y(int i10) {
        this.J = i10;
    }

    public String z() {
        return this.C;
    }

    public void b(List<Integer> list) {
        this.f36448c = list;
    }

    public List<Integer> c() {
        return this.f36448c;
    }

    public int d() {
        return this.f36449d;
    }

    public void e(int i10) {
        this.f36453h = i10;
    }

    public void f(int i10) {
        this.f36454i = i10;
    }

    public void g(int i10) {
        this.f36455j = i10;
    }

    public void h(int i10) {
        this.f36458m = i10;
    }

    public void i(int i10) {
        this.f36459n = i10;
    }

    public void j(int i10) {
        this.f36460o = i10;
    }

    public void k(int i10) {
        this.f36463r = i10;
    }

    public void l(int i10) {
        this.f36465t = i10;
    }

    public void m(int i10) {
        this.f36466u = i10;
    }

    public void n(int i10) {
        this.f36467v = i10;
    }

    public void o(int i10) {
        this.f36468w = i10;
    }

    public void p(int i10) {
        this.f36469x = i10;
    }

    public void q(int i10) {
        this.f36470y = i10;
    }

    public void r(int i10) {
        this.B = i10;
    }

    public void s(int i10) {
        this.D = i10;
    }

    public void t(int i10) {
        this.E = i10;
    }

    public void u(int i10) {
        this.F = i10;
    }

    public void v(int i10) {
        this.G = i10;
    }

    public void w(int i10) {
        this.H = i10;
    }

    public void x(int i10) {
        this.I = i10;
    }

    public int y() {
        return this.B;
    }

    public void z(int i10) {
        this.N = i10;
    }

    public void b(int i10) {
        this.f36450e = i10;
    }

    public void c(int i10) {
        this.f36451f = i10;
    }

    public void d(long j10) {
        this.f36462q = j10;
    }

    public void e(String str) {
        this.K = str;
    }

    public void f(String str) {
        this.L = str;
    }

    public void g(String str) {
        this.M = str;
    }

    public void b(long j10) {
        this.f36457l = j10;
    }

    public void c(long j10) {
        this.f36461p = j10;
    }

    public void d(String str) {
        this.C = str;
    }

    public void b(String str) {
        this.f36471z = str;
    }

    public String a() {
        return this.f36446a;
    }

    public void a(String str) {
        this.f36446a = str;
        com.mbridge.msdk.foundation.controller.a.f34162r.put(this.K, str);
    }

    public void a(List<Integer> list) {
        this.f36447b = list;
    }

    public void a(int i10) {
        this.f36449d = i10;
    }

    public void a(long j10) {
        this.f36456k = j10;
    }
}
