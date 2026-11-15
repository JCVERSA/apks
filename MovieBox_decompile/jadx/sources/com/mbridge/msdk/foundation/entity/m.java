package com.mbridge.msdk.foundation.entity;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mbridge.msdk.foundation.tools.k0;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

public class m {
    public static int N = 1;
    public static int O;
    private String A;
    private String B;
    private int C;
    private String D;
    private String E;
    private String G;
    private String H;
    private String I;
    private int J;
    private long K;
    private String L;
    private int M;

    private String f34413b;

    private int f34414c;

    private int f34416e;

    private String f34417f;

    private String f34418g;

    private String f34419h;

    private String f34420i;

    private String f34421j;

    private String f34422k;

    private String f34423l;

    private String f34424m;

    private String f34425n;

    private String f34426o;

    private int f34427p;

    private String f34428q;

    private String f34429r;

    private String f34430s;

    private int f34432u;

    private String f34433v;

    private String f34434w;

    private String f34435x;

    private String f34436y;

    private String f34437z;

    private Map<String, String> f34412a = null;

    private int f34415d = 0;

    private int f34431t = 0;
    private int F = 0;

    public m(String str, int i10, int i11, int i12, int i13, String str2, String str3, int i14, String str4, int i15, String str5) {
        this.f34428q = str;
        this.f34432u = i10;
        this.f34433v = str5;
        this.f34427p = i11;
        this.M = i12;
        this.J = i13;
        try {
            if (!TextUtils.isEmpty(str2)) {
                this.f34434w = URLEncoder.encode(str2, "utf-8");
            }
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
        this.f34435x = str3;
        this.C = i14;
        this.f34420i = str4;
        this.K = i15;
    }

    public String A() {
        return this.H;
    }

    public String B() {
        return this.I;
    }

    public int C() {
        return this.J;
    }

    public long D() {
        return this.K;
    }

    public String E() {
        return this.L;
    }

    public int F() {
        return this.M;
    }

    public String a() {
        return this.f34413b;
    }

    public void b(String str) {
        this.f34417f = str;
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f34418g = URLEncoder.encode(str);
    }

    public String d() {
        return this.f34417f;
    }

    public String e() {
        return this.f34418g;
    }

    public String f() {
        return this.f34419h;
    }

    public String g() {
        return this.f34420i;
    }

    public String h() {
        return this.f34421j;
    }

    public String i() {
        return this.f34422k;
    }

    public void j(String str) {
        this.f34428q = str;
    }

    public String k() {
        return this.f34424m;
    }

    public void l(String str) {
        this.f34433v = str;
    }

    public void m(String str) {
        this.f34435x = str;
    }

    public String n() {
        return this.f34428q;
    }

    public void o(String str) {
        this.f34437z = str;
    }

    public void p(String str) {
        this.A = str;
    }

    public int q() {
        return this.f34432u;
    }

    public String r() {
        return this.f34433v;
    }

    public String s() {
        return this.f34434w;
    }

    public String t() {
        return TextUtils.isEmpty(this.f34435x) ? "" : this.f34435x;
    }

    @NonNull
    public String toString() {
        return "RewardReportData [key=" + this.f34428q + ", networkType=" + this.f34432u + ", isCompleteView=" + this.f34427p + ", watchedMillis=" + this.M + ", videoLength=" + this.J + ", offerUrl=" + this.f34434w + ", reason=" + this.f34435x + ", result=" + this.C + ", duration=" + this.f34420i + ", videoSize=" + this.K + "]";
    }

    public void u(String str) {
        this.I = str;
    }

    public String v() {
        return this.f34437z;
    }

    public String w() {
        return this.A;
    }

    public int x() {
        return this.C;
    }

    public int y() {
        return this.F;
    }

    public String z() {
        return this.G;
    }

    public void a(String str) {
        this.f34413b = str;
    }

    public int b() {
        return this.f34414c;
    }

    public void d(String str) {
        this.f34419h = str;
    }

    public void e(String str) {
        this.f34420i = str;
    }

    public void f(String str) {
        this.f34421j = str;
    }

    public void g(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f34422k = URLEncoder.encode(str, "utf-8");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void h(String str) {
        this.f34423l = str;
    }

    public void i(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f34426o = URLEncoder.encode(str, "utf-8");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String j() {
        return this.f34423l;
    }

    public void k(String str) {
        this.f34430s = str;
    }

    public String l() {
        return this.f34426o;
    }

    public int m() {
        return this.f34427p;
    }

    public void n(String str) {
        this.f34436y = str;
    }

    public String o() {
        return this.f34429r;
    }

    public int p() {
        return this.f34431t;
    }

    public void q(String str) {
        this.B = str;
    }

    public void r(String str) {
        this.D = str;
    }

    public void s(String str) {
        this.E = str;
    }

    public void t(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.G = URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }

    public String u() {
        return this.f34436y;
    }

    public void v(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.L = URLEncoder.encode(str, "utf-8");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(int i10) {
        this.f34414c = i10;
    }

    public void b(int i10) {
        this.f34431t = i10;
    }

    public void c(int i10) {
        this.f34432u = i10;
    }

    public void d(int i10) {
        this.C = i10;
    }

    public void e(int i10) {
        this.F = i10;
    }

    public String a(String str, String str2) {
        Map<String, String> map;
        if (TextUtils.isEmpty(str) || (map = this.f34412a) == null) {
            return str2;
        }
        try {
            String str3 = map.get(str);
            return TextUtils.isEmpty(str3) ? str2 : str3;
        } catch (Exception unused) {
            return str2;
        }
    }

    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        if (this.f34412a == null) {
            this.f34412a = new HashMap();
        }
        try {
            this.f34412a.put(str, str2);
        } catch (Exception unused) {
        }
    }

    public int c() {
        return this.f34416e;
    }

    public m() {
    }

    public m(String str, int i10, String str2, String str3, String str4) {
        this.f34428q = str;
        this.f34433v = str4;
        this.f34432u = i10;
        if (!TextUtils.isEmpty(str2)) {
            try {
                this.f34434w = URLEncoder.encode(str2, "utf-8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        this.f34435x = str3;
    }

    public m(String str, int i10, int i11, String str2, int i12, String str3, int i13, String str4) {
        this.f34428q = str;
        this.f34432u = i10;
        this.f34433v = str4;
        this.J = i11;
        if (!TextUtils.isEmpty(str2)) {
            try {
                this.f34434w = URLEncoder.encode(str2, "utf-8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        this.C = i12;
        this.f34420i = str3;
        this.K = i13;
    }

    public m(Context context, CampaignEx campaignEx, int i10, String str, long j10, int i11) {
        if (i11 == 1 || i11 == 287 || i11 == 94) {
            this.f34428q = "m_download_end";
        } else if (i11 == 95) {
            this.f34428q = "2000025";
        }
        int iS = k0.s(context);
        this.f34432u = iS;
        this.f34433v = k0.a(context, iS);
        this.J = campaignEx.getVideoLength();
        this.f34436y = campaignEx.getRequestId();
        this.f34437z = campaignEx.getRequestIdNotice();
        if (!TextUtils.isEmpty(this.f34434w)) {
            try {
                this.f34434w = URLEncoder.encode(campaignEx.getNoticeUrl() == null ? campaignEx.getClickURL() : campaignEx.getNoticeUrl(), "utf-8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        this.C = i10;
        this.f34420i = str;
        this.K = j10 == 0 ? campaignEx.getVideoSize() : j10;
    }

    public m(String str, String str2, String str3, String str4, String str5, String str6, int i10, String str7) {
        this.f34428q = str;
        this.f34424m = str2;
        this.H = str3;
        this.f34429r = str4;
        this.I = str5;
        this.f34417f = str6;
        this.f34432u = i10;
        this.f34433v = str7;
    }

    public m(String str) {
        this.f34425n = str;
    }

    public m(String str, int i10, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f34428q = str;
        this.C = i10;
        this.f34420i = str2;
        try {
            if (!TextUtils.isEmpty(str3)) {
                this.f34422k = URLEncoder.encode(str3, "utf-8");
            }
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
        this.f34417f = str4;
        this.I = str5;
        this.f34435x = str6;
        this.f34421j = str7;
        if (Integer.valueOf(str2).intValue() > com.mbridge.msdk.foundation.same.a.L) {
            this.C = 2;
        }
    }

    public m(String str, String str2, String str3, String str4, String str5, int i10) {
        this.f34428q = str;
        this.f34417f = str2;
        this.f34436y = str3;
        this.f34437z = str4;
        this.I = str5;
        this.f34432u = i10;
    }

    public m(String str, String str2, String str3, String str4, String str5, int i10, int i11, String str6) {
        this.f34428q = str;
        this.f34417f = str2;
        this.f34436y = str3;
        this.f34437z = str4;
        this.I = str5;
        this.f34432u = i10;
        this.f34435x = str6;
        this.f34416e = i11;
    }
}
