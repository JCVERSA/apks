package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.Uri;
import com.yandex.mobile.ads.impl.m21;
import defpackage.abb;
import defpackage.hz9;
import defpackage.ky5;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;

public final class m21 implements af1 {
    private final yf1 a;
    private final g21 b;
    private final t21 c;
    private final yh2 d;
    private final w82 e;
    private final q70 f;
    private final ju1 g;
    private final z21 h;
    private boolean i;
    private final s70<?> j;
    private final String k;
    private u21 l;
    private s11 m;
    private r11 n;
    private ze1 o;
    private ve2 p;
    private th2 q;
    private p70 r;

    public m21(yf1 yf1Var) {
        g21 g21Var = new g21(yf1Var);
        t21 t21Var = new t21();
        yh2 yh2Var = new yh2();
        w82 w82Var = new w82();
        q70 q70Var = new q70();
        int i = pw1.l;
        this(yf1Var, g21Var, t21Var, yh2Var, w82Var, q70Var, pw1.a.a().a(yf1Var.i()));
    }

    public final void c() {
        this.i = true;
        u21 u21Var = this.l;
        if (u21Var != null) {
            u21Var.a();
        }
    }

    public final class a implements bh0 {
        public a() {
        }

        @Override
        public final void a(Context context, String str) {
            y45.j(context, "context");
            y45.j(str, "url");
            m21.this.a.a(context, str);
        }

        @Override
        public final void a() {
            m21.this.a.a();
        }

        @Override
        public final void a(int i) {
            m21.this.a.a(i);
        }
    }

    private final void a(s21 s21Var, LinkedHashMap linkedHashMap) throws k21 {
        if (this.l == null) {
            throw new k21("Invalid state to execute this command");
        }
        switch (s21Var.ordinal()) {
            case 0:
                ve2 ve2Var = this.p;
                if (ve2Var != null) {
                    ve2Var.onVideoComplete();
                    return;
                }
                return;
            case 1:
                r11 r11Var = this.n;
                if (r11Var != null) {
                    r11Var.e();
                    return;
                }
                return;
            case 2:
                r11 r11Var2 = this.n;
                if (r11Var2 != null) {
                    r11Var2.b();
                    return;
                }
                return;
            case 3:
                if (th2.c == this.q) {
                    th2 th2Var = th2.e;
                    this.q = th2Var;
                    this.b.a(th2Var);
                    ze1 ze1Var = this.o;
                    if (ze1Var != null) {
                        ze1Var.c();
                        return;
                    }
                    return;
                }
                return;
            case 4:
                a(linkedHashMap);
                return;
            case 5:
                s11 s11Var = this.m;
                if (s11Var != null) {
                    s11Var.a();
                    return;
                }
                return;
            case 6:
                boolean z = Boolean.parseBoolean((String) linkedHashMap.get("shouldUseCustomClose"));
                ze1 ze1Var2 = this.o;
                if (ze1Var2 != null) {
                    ze1Var2.a(z);
                    return;
                }
                return;
            case 7:
            default:
                throw new k21("Unspecified MRAID Javascript command");
            case 8:
                ju1 ju1Var = this.g;
                if (ju1Var == null || !ju1Var.N()) {
                    return;
                }
                this.a.a();
                return;
        }
    }

    public final void b(String str) throws k21 {
        y45.j(str, "url");
        this.e.getClass();
        if (!w82.a(str)) {
            sp0.f(new Object[0]);
            this.b.a(s21.d, "Mraid command sent an invalid URL");
            return;
        }
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        String host = uri.getHost();
        if (!y45.e("mraid", scheme) && !y45.e("mobileads", scheme)) {
            a(ky5.h(abb.a("url", str)));
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str2 : uri.getQueryParameterNames()) {
            String queryParameter = uri.getQueryParameter(str2);
            y45.g(str2);
            linkedHashMap.put(str2, queryParameter);
        }
        s21.c.getClass();
        s21 s21VarA = s21.a.a(host);
        try {
            a(s21VarA, linkedHashMap);
        } catch (Exception e) {
            String message = e.getMessage();
            if (message == null) {
                message = "Unknown exception";
            }
            this.b.a(s21VarA, message);
        }
        this.b.a(s21VarA);
    }

    public m21(yf1 yf1Var, g21 g21Var, t21 t21Var, yh2 yh2Var, w82 w82Var, q70 q70Var, ju1 ju1Var) {
        y45.j(yf1Var, "mraidWebView");
        y45.j(g21Var, "mraidBridge");
        y45.j(t21Var, "mraidJsControllerLoader");
        y45.j(yh2Var, "viewableChecker");
        y45.j(w82Var, "urlUtils");
        y45.j(q70Var, "exposureProvider");
        this.a = yf1Var;
        this.b = g21Var;
        this.c = t21Var;
        this.d = yh2Var;
        this.e = w82Var;
        this.f = q70Var;
        this.g = ju1Var;
        z21 z21Var = new z21(new a());
        this.h = z21Var;
        this.q = th2.d;
        yf1Var.setWebViewClient(z21Var);
        this.j = new s70<>(yf1Var, q70Var, this);
        this.k = oa.a(this);
    }

    private final void a(Map<String, String> map) throws k21 {
        if (this.l != null) {
            ju1 ju1Var = this.g;
            if (ju1Var == null || !ju1Var.S() || this.i) {
                String str = map.get("url");
                if (str != null && str.length() > 0) {
                    u21 u21Var = this.l;
                    if (u21Var != null) {
                        u21Var.a(str);
                    }
                    Object[] objArr = {str};
                    int i = sp0.b;
                    y45.j(objArr, "args");
                    return;
                }
                hz9 hz9Var = hz9.a;
                throw new k21(z0.a(new Object[]{str}, 1, "Mraid open command sent an invalid URL: %s", "format(...)"));
            }
        }
    }

    public final void b() {
        if (th2.c == this.q) {
            th2 th2Var = th2.e;
            this.q = th2Var;
            this.b.a(th2Var);
        }
    }

    public final void a() {
        this.j.b();
        t21 t21Var = this.c;
        Context context = this.a.getContext();
        y45.i(context, "getContext(...)");
        String str = this.k;
        t21Var.getClass();
        y45.j(context, "context");
        y45.j(str, "requestTag");
        int i = gq1.c;
        gq1.a.a();
        gq1.a(context, str);
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
    }

    public final void a(final String str) {
        y45.j(str, "htmlResponse");
        Context context = this.a.getContext();
        t21 t21Var = this.c;
        y45.g(context);
        String str2 = this.k;
        t21.a aVar = new t21.a() {
            @Override
            public final void a(String str3) {
                m21.a(this.a, str, str3);
            }
        };
        t21Var.getClass();
        t21.a(context, str2, aVar);
    }

    public static final void a(m21 m21Var, String str, String str2) {
        y45.j(m21Var, "this$0");
        y45.j(str, "$htmlResponse");
        y45.j(str2, "mraidJavascript");
        m21Var.h.a(str2);
        m21Var.b.b(str);
    }

    public final void a(yf1 yf1Var, Map map) {
        y45.j(yf1Var, "webView");
        y45.j(map, "trackingParameters");
        u32 u32Var = new u32(this.a);
        yh2 yh2Var = this.d;
        yf1 yf1Var2 = this.a;
        yh2Var.getClass();
        ci2 ci2Var = new ci2(yh2.a(yf1Var2));
        p70 p70VarA = this.f.a(this.a);
        r70 r70Var = new r70(p70VarA.a(), p70VarA.b());
        th2 th2Var = th2.c;
        this.q = th2Var;
        this.b.a(th2Var, ci2Var, r70Var, u32Var);
        this.b.a();
        u21 u21Var = this.l;
        if (u21Var != null) {
            u21Var.a(yf1Var, map);
        }
    }

    @Override
    public final void a(p70 p70Var) {
        y45.j(p70Var, "exposure");
        if (y45.e(p70Var, this.r)) {
            return;
        }
        this.r = p70Var;
        this.b.a(new r70(p70Var.a(), p70Var.b()));
    }

    public final void a(boolean z) {
        this.b.a(new ci2(z));
        if (z) {
            this.j.a();
            return;
        }
        this.j.b();
        p70 p70VarA = this.f.a(this.a);
        if (y45.e(p70VarA, this.r)) {
            return;
        }
        this.r = p70VarA;
        this.b.a(new r70(p70VarA.a(), p70VarA.b()));
    }

    public final void a(r11 r11Var) {
        this.n = r11Var;
    }

    public final void a(s11 s11Var) {
        this.m = s11Var;
    }

    public final void a(u21 u21Var) {
        this.l = u21Var;
    }

    public final void a(ze1 ze1Var) {
        this.o = ze1Var;
    }

    public final void a(ve2 ve2Var) {
        this.p = ve2Var;
    }
}
