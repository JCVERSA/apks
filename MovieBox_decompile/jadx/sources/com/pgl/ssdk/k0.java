package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;

public class k0 {

    public static int f39338a = -1;

    public static String f39339b = null;

    private static String f39340c = "api16-access-ttp.tiktokpangle.us";

    public static final String[] f39341d = {"api16-access-ttp.tiktokpangle.us", "api16-access-ttp-b.tiktokpangle.us", "api16-access-ttp.tiktokpangle-b.us", "api16-access-ttp-b.tiktokpangle-b.us"};

    private static int f39342e = Integer.MIN_VALUE;

    public static String f39343f = "";

    public static String a() {
        return f39338a == 1 ? "VA" : "SG";
    }

    public static String b() {
        return f39343f;
    }

    public static void a(int i10) {
        f39338a = i10;
    }

    public static void b(String str) {
        f39343f = str;
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f39339b = str;
    }

    public static void b(Context context) {
        if (TextUtils.isEmpty(f39339b)) {
            r0.a("updateIndex");
            int i10 = f39342e;
            if (i10 < Integer.MAX_VALUE) {
                int i11 = i10 + 1;
                f39342e = i11;
                u0.b(context, "domain_index", i11);
                return;
            }
            f39342e = 0;
        }
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(f39339b)) {
            return f39339b;
        }
        try {
            if (f39342e == Integer.MIN_VALUE) {
                f39342e = u0.a(context, "domain_index", 0);
            }
            String[] strArr = f39341d;
            return strArr[f39342e % strArr.length];
        } catch (Throwable unused) {
            return f39340c;
        }
    }
}
