package com.mgmi.f;

import android.content.Context;
import android.text.TextUtils;
import cn.com.custommma.mobile.tracking.util.LocationCollector;
import com.mgmi.ssp.MGTVAdFactory;
import defpackage.mpd;
import defpackage.n4d;
import java.util.UUID;

public class f {
    static final boolean a = true;
    private static String b = "";
    private static String c = "";
    private static String d = "";
    private static String e = "";
    private static String f;
    private static String g;
    private static int h;
    private static int i;

    @Deprecated
    public static int a(Context context) {
        try {
            return context.getResources().getDisplayMetrics().widthPixels;
        } catch (Exception unused) {
            return -1;
        }
    }

    @Deprecated
    public static int b(Context context) {
        try {
            return context.getResources().getDisplayMetrics().heightPixels;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static String c() {
        return UUID.randomUUID().toString();
    }

    public static String d() {
        return mpd.h();
    }

    public static String e() {
        return "imgotv-aphone-" + f();
    }

    public static String f() {
        return "7.5.4";
    }

    public static String g() {
        return "imgotv-aphone-7.5.4";
    }

    public static String h() {
        return !TextUtils.isEmpty(MGTVAdFactory.getInstance().getUuid()) ? MGTVAdFactory.getInstance().getUuid() : "";
    }

    public static boolean i() {
        return false;
    }

    public static String j() {
        return com.mgmi.ads.api.c.a() != null ? mpd.E(com.mgmi.ads.api.c.a()) : mpd.k();
    }

    public static String k(Context context) {
        return LocationCollector.h(context).i();
    }

    public static String l() {
        return UUID.randomUUID().toString();
    }

    public static String m() {
        return "ssp";
    }

    public static String n() {
        return "";
    }

    public static int o() {
        return h;
    }

    public static int p() {
        return i;
    }

    public static String q() {
        return "";
    }

    public static int r() {
        return 0;
    }

    public static String s() {
        return "";
    }

    public static int t() {
        return 0;
    }

    public static int u() {
        return 0;
    }

    public static String a() {
        return b;
    }

    public static String b() {
        return "";
    }

    public static String c(Context context) {
        if (!TextUtils.isEmpty(e)) {
            return e;
        }
        String strP = mpd.p(context);
        if (TextUtils.isEmpty(strP)) {
            return e;
        }
        String strJ = n4d.j(strP, "MGtv!@$123AdGoodBoy");
        e = strJ;
        return strJ;
    }

    public static String d(Context context) {
        try {
            return context.getPackageName();
        } catch (Throwable unused) {
            return "com.hunantv.imgo.activity";
        }
    }

    public static int e(Context context) {
        return mpd.q(context);
    }

    public static String f(Context context) {
        if (!TextUtils.isEmpty(c)) {
            return c;
        }
        String strF = mpd.F(context);
        if (!TextUtils.isEmpty(strF)) {
            c = n4d.j(strF, "MGtv!@$123AdGoodBoy");
        }
        return c;
    }

    public static String g(Context context) {
        if (!TextUtils.isEmpty(d)) {
            return d;
        }
        String strV = mpd.v(context);
        if (TextUtils.isEmpty(strV)) {
            return d;
        }
        String strJ = n4d.j(strV, "MGtv!@$123AdGoodBoy");
        d = strJ;
        return strJ;
    }

    public static int i(Context context) {
        return mpd.A(context);
    }

    public static String k() {
        return "";
    }

    public static String l(Context context) {
        return f(context);
    }

    public static String m(Context context) {
        return MGTVAdFactory.getInstance().getOaid();
    }

    public static int h(Context context) {
        if (com.mgmi.ads.api.e.e.a().b()) {
            return 3;
        }
        return mpd.y(context);
    }

    public static String j(Context context) {
        return mpd.C(context);
    }
}
