package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.dd1;
import defpackage.y45;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class dd1<T> implements bd1<T> {
    private static final long k = TimeUnit.SECONDS.toMillis(1);
    private final o3 a;
    private final br1<T> b;
    private final s80 c;
    private final iz0 d;
    private final wr1 e;
    private final js f;
    private final og0 g;
    private final us0 h;
    private final md i;
    private final p8 j;

    public dd1(o3 o3Var, br1<T> br1Var, s80 s80Var, iz0 iz0Var, wr1 wr1Var, js jsVar, og0 og0Var, us0 us0Var, md mdVar, p8 p8Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(br1Var, "responseBodyParser");
        y45.j(s80Var, "falseClickParser");
        y45.j(iz0Var, "mediationDataParser");
        y45.j(wr1Var, "rewardDataParser");
        y45.j(jsVar, "contentTypeHeaderParser");
        y45.j(og0Var, "htmlAdImpressionDataParser");
        y45.j(us0Var, "localeParser");
        y45.j(mdVar, "analyticsParametersParser");
        y45.j(p8Var, "adResponseAbExperimentDataParser");
        this.a = o3Var;
        this.b = br1Var;
        this.c = s80Var;
        this.d = iz0Var;
        this.e = wr1Var;
        this.f = jsVar;
        this.g = og0Var;
        this.h = us0Var;
        this.i = mdVar;
        this.j = p8Var;
    }

    public static final Integer b(String str) {
        int i;
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        int i2 = oa.b;
        if (str != null) {
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                i = 0;
            }
        } else {
            i = 0;
        }
        return Integer.valueOf(Math.min(i, 100));
    }

    @Override
    public final o8<T> a(wq1 wq1Var, Map<String, String> map, ts tsVar) {
        Integer numValueOf;
        Integer numValueOf2;
        Locale locale;
        Long lValueOf;
        y45.j(wq1Var, "networkResponse");
        y45.j(map, "headers");
        y45.j(tsVar, "responseAdType");
        o8.a aVar = new o8.a();
        aVar.f(this.a.c());
        aVar.a(tsVar);
        int iB = nf0.b(map, vh0.d);
        int iB2 = nf0.b(map, vh0.e);
        aVar.e(iB);
        aVar.b(iB2);
        String strA = nf0.a(map, vh0.R);
        String strA2 = nf0.a(map, vh0.S);
        aVar.e(strA);
        aVar.k(strA2);
        aVar.b(nf0.a(map, vh0.h));
        String strA3 = nf0.a(map, vh0.W);
        if (strA3 != null) {
            this.i.getClass();
            y45.j(strA3, "analyticsParametersValue");
            HashMap map2 = new HashMap();
            try {
                JSONObject jSONObject = new JSONObject(strA3);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object obj = jSONObject.get(next);
                    y45.g(next);
                    y45.g(obj);
                    map2.put(next, obj);
                }
            } catch (Throwable unused) {
            }
            aVar.a(map2);
        }
        gz1 gz1VarR = this.a.r();
        aVar.a(gz1VarR != null ? gz1VarR.a() : null);
        aVar.c(nf0.c(map, vh0.i));
        aVar.f(nf0.c(map, vh0.r));
        this.j.getClass();
        aVar.a(p8.a(map));
        aVar.a(nf0.a(map, vh0.u, new nf0.a() {
            @Override
            public final Object a(String str) {
                return dd1.a(str);
            }
        }));
        aVar.d(nf0.a(map, vh0.P, new nf0.a() {
            @Override
            public final Object a(String str) {
                return dd1.b(str);
            }
        }));
        aVar.e(nf0.c(map, vh0.j));
        vh0 vh0Var = vh0.k;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var, "httpHeader");
        String strA4 = nf0.a(map, vh0Var);
        int i = oa.b;
        if (strA4 != null) {
            try {
                numValueOf = Integer.valueOf(strA4);
            } catch (NumberFormatException unused2) {
                numValueOf = null;
            }
        } else {
            numValueOf = null;
        }
        aVar.a(numValueOf != null ? Long.valueOf(((long) numValueOf.intValue()) * k) : null);
        vh0 vh0Var2 = vh0.D;
        int i2 = nf0.b;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var2, "httpHeader");
        String strA5 = nf0.a(map, vh0Var2);
        int i3 = oa.b;
        if (strA5 != null) {
            try {
                numValueOf2 = Integer.valueOf(strA5);
            } catch (NumberFormatException unused3) {
                numValueOf2 = null;
            }
        } else {
            numValueOf2 = null;
        }
        aVar.b(numValueOf2 != null ? Long.valueOf(((long) numValueOf2.intValue()) * k) : null);
        aVar.g(nf0.a(map, vh0.p));
        this.h.getClass();
        y45.j(map, "headers");
        String strA6 = nf0.a(map, vh0.q);
        Locale[] availableLocales = Locale.getAvailableLocales();
        y45.g(availableLocales);
        int length = availableLocales.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                locale = null;
                break;
            }
            if (y45.e(availableLocales[i4].getLanguage(), strA6)) {
                locale = new Locale(strA6);
                break;
            }
            i4++;
        }
        aVar.a(locale);
        aVar.b(nf0.c(map, vh0.o));
        aVar.f(nf0.b(map, vh0.z));
        aVar.c(nf0.b(map, vh0.A));
        aVar.d(nf0.b(map, vh0.B));
        aVar.a(nf0.b(map, vh0.G));
        aVar.l(nf0.a(map, vh0.y));
        vh0 vh0Var3 = vh0.m;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var3, "httpHeader");
        String strA7 = nf0.a(map, vh0Var3);
        aVar.i(strA7 == null ? false : Boolean.parseBoolean(strA7));
        aVar.h(nf0.a(map, vh0.Z));
        aVar.j(nf0.a(map, vh0.a0));
        aVar.i(nf0.a(map, vh0.b0));
        aVar.c(nf0.a(map, vh0.H));
        this.f.getClass();
        aVar.a(js.a(map));
        aVar.a(this.e.a(wq1Var));
        this.c.getClass();
        y45.j(wq1Var, "networkResponse");
        Map<String, String> mapB = wq1Var.b();
        vh0 vh0Var4 = vh0.w;
        y45.j(mapB, "responseHeaders");
        y45.j(vh0Var4, "header");
        String str = (String) defpackage.i81.q0(nf0.c(mapB, vh0Var4));
        vh0 vh0Var5 = vh0.x;
        y45.j(mapB, "responseHeaders");
        y45.j(vh0Var5, "httpHeader");
        String strA8 = nf0.a(mapB, vh0Var5);
        if (strA8 != null) {
            try {
                lValueOf = Long.valueOf(strA8);
            } catch (NumberFormatException unused4) {
                lValueOf = null;
            }
        } else {
            lValueOf = null;
        }
        aVar.a((str == null || lValueOf == null) ? null : new m80(str, lValueOf.longValue()));
        this.g.getClass();
        y45.j(map, "headers");
        String strA9 = nf0.a(map, vh0.l);
        aVar.a((strA9 == null || strA9.length() <= 0) ? null : new t4(strA9));
        vh0 vh0Var6 = vh0.I;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var6, "httpHeader");
        String strA10 = nf0.a(map, vh0Var6);
        aVar.j(strA10 == null ? false : Boolean.parseBoolean(strA10));
        vh0 vh0Var7 = vh0.Q;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var7, "httpHeader");
        String strA11 = nf0.a(map, vh0Var7);
        aVar.f(strA11 == null ? false : Boolean.parseBoolean(strA11));
        vh0 vh0Var8 = vh0.t;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var8, "httpHeader");
        String strA12 = nf0.a(map, vh0Var8);
        boolean z = strA12 == null ? false : Boolean.parseBoolean(strA12);
        aVar.e(z);
        if (z) {
            aVar.a(this.d.a(wq1Var));
        } else {
            aVar.a(this.b.a(wq1Var));
        }
        aVar.d(nf0.a(map, vh0.T));
        aVar.a(nf0.a(map, vh0.g));
        vh0 vh0Var9 = vh0.X;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var9, "httpHeader");
        String strA13 = nf0.a(map, vh0Var9);
        aVar.c(strA13 == null ? false : Boolean.parseBoolean(strA13));
        String strA14 = nf0.a(map, vh0.M);
        aVar.a(strA14 != null ? new ka0(strA14) : null);
        vh0 vh0Var10 = vh0.n;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var10, "httpHeader");
        String strA15 = nf0.a(map, vh0Var10);
        aVar.h(strA15 == null ? true : Boolean.parseBoolean(strA15));
        vh0 vh0Var11 = vh0.d0;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var11, "httpHeader");
        String strA16 = nf0.a(map, vh0Var11);
        aVar.g(strA16 != null ? Boolean.parseBoolean(strA16) : false);
        vh0 vh0Var12 = vh0.e0;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var12, "httpHeader");
        String strA17 = nf0.a(map, vh0Var12);
        aVar.a(strA17 == null ? true : Boolean.parseBoolean(strA17));
        vh0 vh0Var13 = vh0.f0;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var13, "httpHeader");
        String strA18 = nf0.a(map, vh0Var13);
        aVar.d(strA18 == null ? true : Boolean.parseBoolean(strA18));
        vh0 vh0Var14 = vh0.g0;
        y45.j(map, "responseHeaders");
        y45.j(vh0Var14, "httpHeader");
        String strA19 = nf0.a(map, vh0Var14);
        aVar.b(strA19 != null ? Boolean.parseBoolean(strA19) : true);
        return aVar.a();
    }

    public static final Long a(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        long j = 0L;
        int i = oa.b;
        if (str == null) {
            return j;
        }
        try {
            return Long.valueOf(str);
        } catch (NumberFormatException unused) {
            return j;
        }
    }
}
