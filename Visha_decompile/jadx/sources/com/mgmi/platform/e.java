package com.mgmi.platform;

import android.content.Context;
import android.text.TextUtils;
import defpackage.mpd;
import defpackage.n4d;

public class e {
    private static String a = "";
    private static Context b = null;
    private static String c = "";
    private static String d = "";
    private static String e = "";
    private static String f = "";
    private static int g;
    private static int h;
    private static boolean i;

    public static int a(Context context) {
        try {
            return context.getResources().getDisplayMetrics().widthPixels;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static int b(Context context) {
        try {
            return context.getResources().getDisplayMetrics().heightPixels;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static void c() {
    }

    public static String d(Context context) {
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

    public static String e(Context context) {
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

    public static int f() {
        int iA = a(com.mgmi.ads.api.c.a());
        int iB = b(com.mgmi.ads.api.c.a());
        return iA > iB ? iB : iA;
    }

    public static Context a() {
        return b;
    }

    public static int b() {
        return g;
    }

    public static String c(Context context) {
        if (!TextUtils.isEmpty(c)) {
            return c;
        }
        String strF = mpd.F(context);
        if (!TextUtils.isEmpty(strF)) {
            c = n4d.j(strF, "MGtv!@$123AdGoodBoy");
        }
        return c;
    }

    public static void a(int i2) {
        g = i2;
    }

    public static void b(int i2) {
        h = i2;
    }

    public static void a(boolean z) {
        i = z;
    }

    public static int d() {
        int iA = a(com.mgmi.ads.api.c.a());
        int iB = b(com.mgmi.ads.api.c.a());
        return iA > iB ? iA : iB;
    }

    public static int e() {
        int iA = a(com.mgmi.ads.api.c.a());
        int iB = b(com.mgmi.ads.api.c.a());
        return iA > iB ? iB : iA;
    }
}
