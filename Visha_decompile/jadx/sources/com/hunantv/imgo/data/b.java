package com.hunantv.imgo.data;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.b.c;
import com.hunantv.imgo.net.RequestParams;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.imgo.util.f;
import com.hunantv.imgo.util.g;
import com.hunantv.imgo.util.p;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class b {
    private static SimpleDateFormat R = new SimpleDateFormat("yyyyMMddHHmmss", Locale.CHINA);
    private String B;
    private String C;
    private String D;
    private String H;
    private String I;
    private String J;
    private int K;
    private String L;
    private String M;
    private String N;
    private String O;
    private String P;
    private int Q;
    private String S;
    private boolean T;
    private String a;
    private int b;
    private String d;
    private int f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String o;
    private int p;
    private String q;
    private String s;
    private String t;
    private String v;
    private String y;
    private String z;
    private String c = "";
    private String e = f.a(System.currentTimeMillis());
    private String m = "";
    private String n = "";
    private String r = "'";
    private String u = "";
    private String w = com.hunantv.imgo.util.b.s();
    private String x = com.hunantv.imgo.util.b.p();
    private int A = 0;
    private String E = "";
    private String F = "";
    private String G = "";

    public static class a {
        public String d;
        public String e;
        public String f;
        public String g;
        public String h;
        public String i;
        public String j;
        public String k;
        public String m;
        public String o;
        public String p;
        public String q;
        public String r;
        public int s;
        public int t;
        public int u;
        public String v;
        public String w;
        public String a = "'";
        public String b = "";
        public String c = "";
        public String l = "";
        public String n = "";
        public String x = "";

        public String a() {
            return URLEncoder.encode("cpid=" + this.a + "&fpid=" + this.b + "&fcv=" + this.c + "&bdid=" + this.d + "&bsid=" + this.e + "&ftl=" + this.f + "&ctl=" + this.g + "&pt=" + this.h + "&fpt=" + this.i + "&fpa=" + this.j + "&refmdid=" + this.k + "&plid=" + this.l + "&skw=" + this.m + "&idfa=" + this.n + "&datano=" + this.o + "&abt=" + this.p + "&stid=" + this.q + "&spid=" + this.r + "&fsf=" + this.s + "&isfull=" + this.t + "&auto=" + this.u + "&t_imei=" + this.v + "&a_id=" + this.w + "&cid=" + this.x);
        }
    }

    public b(Context context) {
        m("pvs");
        c(com.hunantv.imgo.util.b.K());
        d(com.hunantv.imgo.util.b.t());
        b(p.d());
        h(com.hunantv.imgo.util.b.r());
        i(com.hunantv.imgo.util.b.h());
        j(PreferencesUtil.c("PREF_GPS_MSG", ""));
        k(com.hunantv.imgo.util.b.x());
        e(com.hunantv.imgo.util.b.n());
        f(com.hunantv.imgo.util.b.s());
        g(com.hunantv.imgo.util.b.p());
        b(f.a(R));
        c(PreferencesUtil.b("TAG_D", false) ? 1 : 0);
        a(com.hunantv.imgo.data.a.a().b() ? 1 : 0);
        F(c.a().a);
        C(com.hunantv.imgo.b.a.b());
        D(PreferencesUtil.c("pref_key_rdc", ""));
        E(PreferencesUtil.c("pref_key_rch", ""));
        a(CommonData.BID_PV_SOURCE);
    }

    private String J(String str) {
        return str == null ? "" : str;
    }

    public void A(String str) {
        this.y = str;
    }

    public void B(String str) {
        this.G = str;
    }

    public void C(String str) {
        this.a = str;
    }

    public void D(String str) {
        this.l = str;
    }

    public void E(String str) {
        this.z = str;
    }

    public void F(String str) {
        this.j = str;
    }

    public void G(String str) {
        this.P = str;
    }

    public void H(String str) {
        this.C = str;
    }

    public void I(String str) {
        this.S = str;
    }

    public void a(boolean z) {
        this.T = z;
    }

    public void b(String str) {
        this.e = str;
    }

    public void c(String str) {
        this.M = str;
    }

    public void d(String str) {
        this.L = str;
    }

    public void e(String str) {
        this.H = str;
    }

    public void f(String str) {
        this.w = str;
    }

    public void g(String str) {
        this.x = this.x;
    }

    public void h(String str) {
        this.J = str;
    }

    public void i(String str) {
        this.I = str;
    }

    public void j(String str) {
        this.q = str;
    }

    public void k(String str) {
        this.d = str;
    }

    public void l(String str) {
        this.h = str;
    }

    public void m(String str) {
        this.g = str;
    }

    public void n(String str) {
        this.F = str;
    }

    public void o(String str) {
        this.E = str;
    }

    public void p(String str) {
        this.u = str;
    }

    public void q(String str) {
        this.r = str;
    }

    public void r(String str) {
        this.n = str;
    }

    public void s(String str) {
        this.m = str;
    }

    public void t(String str) {
        this.t = str;
    }

    public void u(String str) {
        this.N = str;
    }

    public void v(String str) {
        this.o = str;
    }

    public void w(String str) {
        this.v = str;
    }

    public void x(String str) {
        this.s = str;
    }

    public void y(String str) {
        this.B = str;
    }

    public void z(String str) {
        this.D = str;
    }

    public void a(String str) {
        this.O = str;
    }

    public void b(int i) {
        this.K = i;
    }

    public void c(int i) {
        this.A = i;
    }

    public String d() {
        return this.r;
    }

    public void e(int i) {
        this.b = i;
    }

    public void a(int i) {
        this.p = i;
    }

    public String b() {
        return this.E;
    }

    public String c() {
        return this.u;
    }

    public void d(int i) {
        this.f = i;
    }

    public String a() {
        return this.F;
    }

    public RequestParams a(Context context) {
        RequestParams requestParams = new RequestParams();
        System.out.println("pvs  getRequestParams cpn " + this.u + " isNewPv = " + this.T);
        if (this.T) {
            requestParams.put("logtype", "pv");
            requestParams.put("bid", "30.1.2");
            requestParams.put("cntp", J(this.u));
            requestParams.put("lastp", J(this.F));
            a aVar = new a();
            aVar.a = J(this.r);
            aVar.b = J(this.E);
            aVar.c = "";
            aVar.d = this.o;
            aVar.e = this.v;
            aVar.f = this.D;
            aVar.g = this.s;
            aVar.h = this.y;
            aVar.i = this.B;
            aVar.j = this.N;
            aVar.k = J(this.P);
            aVar.l = J(this.m);
            aVar.m = this.i;
            aVar.n = this.c;
            aVar.o = J(this.C);
            aVar.p = this.S;
            aVar.q = J(this.j);
            aVar.r = J(this.k);
            aVar.s = this.Q;
            aVar.t = this.f;
            aVar.u = this.b;
            aVar.v = g.a().b();
            aVar.w = g.a().c();
            aVar.x = J(this.n);
            requestParams.put("lob", aVar.a());
            requestParams.put("time", J(this.e));
            requestParams.put(DownloadFacadeEnum.USER_DID, J(this.L));
            requestParams.put("uuid", J(this.H));
            requestParams.put("sessionid", J(this.h));
            requestParams.put(DownloadFacadeEnum.USER_NET, this.K);
            requestParams.put(DownloadFacadeEnum.USER_MF, J(this.w));
            requestParams.put(CommonUrlParts.MODEL, J(this.x));
            requestParams.put(DownloadFacadeEnum.USER_SVER, J(this.J));
            requestParams.put("ver", J(this.I));
            requestParams.put(DownloadFacadeEnum.USER_GPS, J(this.q));
            requestParams.put(DownloadFacadeEnum.USER_CH, J(this.d));
            requestParams.put("uvip", this.p);
            requestParams.put("rdc", J(this.l));
            requestParams.put("rch", J(this.z));
            requestParams.put("abroad", com.hunantv.imgo.b.a.a());
            requestParams.put("runsid", this.G);
            requestParams.put("p2p", com.hunantv.imgo.util.b.T() ? 1 : 0);
            requestParams.put("$channel", com.hunantv.imgo.util.b.z());
            requestParams.put("src", com.hunantv.imgo.util.b.O());
            requestParams.put("pt", this.y);
            requestParams.put(CommonUrlParts.HUAWEI_OAID, com.hunantv.imgo.util.b.U());
        } else {
            requestParams.put("time", J(this.e));
            requestParams.put(DownloadFacadeEnum.USER_GUID, J(this.M));
            requestParams.put(DownloadFacadeEnum.USER_DID, J(this.L));
            requestParams.put("uuid", J(this.H));
            requestParams.put(DownloadFacadeEnum.USER_NET, this.K);
            requestParams.put(DownloadFacadeEnum.USER_ISDEBUG, PreferencesUtil.b("TAG_D", false) ? 1 : 0);
            requestParams.put(DownloadFacadeEnum.USER_MF, J(this.w));
            requestParams.put(DownloadFacadeEnum.USER_MOD, J(this.x));
            requestParams.put(DownloadFacadeEnum.USER_SVER, J(this.J));
            requestParams.put(DownloadFacadeEnum.USER_AVER, J(this.I));
            requestParams.put(DownloadFacadeEnum.USER_GPS, J(this.q));
            requestParams.put(DownloadFacadeEnum.USER_CH, J(this.d));
            requestParams.put("act", J(this.g));
            requestParams.put("sid", J(this.h));
            requestParams.put("fpn", J(this.F));
            requestParams.put("fpid", J(this.E));
            requestParams.put("cpn", J(this.u));
            requestParams.put("cpid", J(this.r));
            requestParams.put(CmcdConfiguration.KEY_CONTENT_ID, J(this.n));
            requestParams.put("plid", J(this.m));
            requestParams.put("fpa", this.N);
            requestParams.put("cma", this.t);
            requestParams.put("ftl", this.D);
            requestParams.put("ctl", this.s);
            requestParams.put("fpt", this.B);
            requestParams.put("pt", this.y);
            requestParams.put("bdid", this.o);
            requestParams.put("bsid", this.v);
            requestParams.put("runsid", this.G);
            requestParams.put("idfa", this.c);
            requestParams.put("uvip", this.p);
            requestParams.put("stid", J(this.j));
            requestParams.put("abroad", com.hunantv.imgo.b.a.a());
            requestParams.put("spid", J(this.k));
            requestParams.put("rdc", J(this.l));
            requestParams.put("rch", J(this.z));
            requestParams.put("datano", J(this.C));
            requestParams.put("refmdid", J(this.P));
            requestParams.put("isfull", this.f);
            requestParams.put("skw", this.i);
            requestParams.put(TtmlNode.TEXT_EMPHASIS_AUTO, this.b);
            requestParams.put("fsf", this.Q);
            requestParams.put("abt", this.S);
            requestParams.put("t_imei", g.a().b());
            requestParams.put("a_id", g.a().c());
            requestParams.put("bid", this.O);
            requestParams.put("src", com.hunantv.imgo.util.b.O());
            requestParams.put(CommonUrlParts.HUAWEI_OAID, com.hunantv.imgo.util.b.U());
            requestParams.put("$channel", com.hunantv.imgo.util.b.z());
        }
        return requestParams;
    }
}
