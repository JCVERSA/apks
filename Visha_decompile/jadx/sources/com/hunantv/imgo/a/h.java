package com.hunantv.imgo.a;

import android.content.Context;
import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.hunantv.imgo.net.RequestParams;
import com.hunantv.imgo.util.u;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.UUID;

public class h extends b {
    private static volatile h e;
    private com.hunantv.imgo.b.c d;

    private h(Context context) {
        super(context);
        this.c = context;
        this.d = com.hunantv.imgo.b.c.a();
    }

    public static h a(Context context) {
        if (e == null) {
            synchronized (h.class) {
                try {
                    if (e == null) {
                        e = new h(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public static String e() {
        String str = com.hunantv.imgo.b.c.a().h;
        if (!u.a((CharSequence) str)) {
            return str;
        }
        String string = UUID.randomUUID().toString();
        com.hunantv.imgo.b.c.a().h = string;
        return string;
    }

    public static String f() {
        String str = com.hunantv.imgo.b.c.a().g;
        if (!u.a((CharSequence) str)) {
            return str;
        }
        String string = UUID.randomUUID().toString();
        com.hunantv.imgo.b.c.a().g = string;
        return string;
    }

    private String g() {
        String str;
        if (TextUtils.isEmpty(com.hunantv.imgo.b.c.a().q) && TextUtils.isEmpty(com.hunantv.imgo.b.c.a().r)) {
            str = "";
        } else {
            str = com.hunantv.imgo.b.c.a().q + StringUtils.COMMA + com.hunantv.imgo.b.c.a().r;
        }
        com.hunantv.imgo.b.c.a().q = com.hunantv.imgo.b.c.a().r;
        com.hunantv.imgo.b.c.a().r = "";
        return str;
    }

    @Override
    public String b() {
        return com.hunantv.imgo.report.c.m();
    }

    @Override
    public void c() {
        this.a = com.hunantv.imgo.report.d.a();
    }

    public void d() {
        com.hunantv.imgo.b.c cVar = this.d;
        cVar.m = "";
        cVar.b = "";
        cVar.c = "";
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, int i, int i2, boolean z) {
        com.hunantv.imgo.b.c cVar = this.d;
        String str12 = cVar.i;
        String str13 = cVar.k;
        String str14 = cVar.c;
        String str15 = cVar.b;
        try {
            String strF = f();
            com.hunantv.imgo.data.b bVar = new com.hunantv.imgo.data.b(this.c);
            bVar.n(str12);
            bVar.o(str13);
            bVar.p(str);
            bVar.q(str2);
            bVar.r(str3);
            bVar.s(str4);
            bVar.B(strF);
            bVar.u(str5);
            bVar.t(str6);
            bVar.z(str14);
            bVar.x(str7);
            bVar.y(str15);
            bVar.A(str8);
            bVar.v(str9);
            bVar.w(str10);
            bVar.H(str11);
            bVar.d(i);
            bVar.e(i2);
            bVar.G(this.d.v);
            bVar.a(z);
            a(bVar);
        } finally {
            if (z) {
                com.hunantv.imgo.b.c cVar2 = this.d;
                cVar2.t = cVar2.i;
                cVar2.s = cVar2.k;
                cVar2.i = str;
                cVar2.k = str2;
                cVar2.b = str8;
                cVar2.e = str14;
                cVar2.c = str7;
                cVar2.v = "";
            }
        }
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, int i, int i2) {
        a(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, i, i2, false);
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6) {
        RequestParams requestParamsA = new com.hunantv.imgo.data.b(this.c).a(this.c);
        requestParamsA.put("sid", e());
        requestParamsA.put("fpn", str5);
        requestParamsA.put("fpid", str6);
        requestParamsA.put("cpn", a(str));
        requestParamsA.put("cpid", a(str2));
        requestParamsA.put(CmcdConfiguration.KEY_CONTENT_ID, "");
        requestParamsA.put("plid", "");
        requestParamsA.put("fpa", str4);
        requestParamsA.put("cma", "");
        requestParamsA.put("ftl", this.d.c);
        requestParamsA.put("ctl", this.d.d);
        requestParamsA.put("fpt", this.d.b);
        requestParamsA.put("pt", str3);
        requestParamsA.put("bdid", "");
        requestParamsA.put("bsid", "");
        requestParamsA.put("runsid", f());
        requestParamsA.put("abt", g());
        this.a.a(b(), requestParamsA.toJson(), (com.hunantv.imgo.report.a) null);
        com.hunantv.imgo.b.c cVar = this.d;
        cVar.t = cVar.i;
        cVar.s = cVar.k;
        cVar.i = str;
        cVar.k = str2;
    }

    private void a(com.hunantv.imgo.data.b bVar) {
        if (bVar == null) {
            return;
        }
        if (!TextUtils.equals(bVar.c(), "40") && !TextUtils.isEmpty(com.hunantv.imgo.b.c.a().m)) {
            bVar.u(com.hunantv.imgo.b.c.a().m);
            this.d.m = "";
        }
        bVar.c();
        bVar.d();
        bVar.a();
        bVar.b();
        bVar.l(e());
        bVar.I(g());
        this.a.a(b(), bVar.a(this.c).toJson(), (com.hunantv.imgo.report.a) null);
    }

    public void a() {
        com.hunantv.imgo.b.c cVar = this.d;
        cVar.i = "";
        cVar.k = "";
        cVar.t = "";
        cVar.s = "";
        cVar.w = "";
        if (TextUtils.isEmpty(cVar.h)) {
            this.d.h = UUID.randomUUID().toString();
        }
    }

    private String a(String str) {
        return str == null ? "" : str;
    }
}
