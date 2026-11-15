package com.yandex.mobile.ads.impl;

import android.util.Log;
import defpackage.hz9;
import defpackage.y45;
import java.util.Arrays;
import java.util.Locale;

public final class hp0 {
    private static final v11 a;
    private static final String b;
    private static boolean c;

    static {
        int i = v11.d;
        a = v11.a.a();
        b = "YandexAds";
        c = true;
    }

    private static String a(String str) {
        return "[Integration] " + str;
    }

    public static final void b(String str, Object... objArr) {
        y45.j(str, "format");
        y45.j(objArr, "args");
        if (c || l11.a.a()) {
            hz9 hz9Var = hz9.a;
            Locale locale = Locale.US;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            String str2 = String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            y45.i(str2, "format(...)");
            String strA = a(str2);
            if (c) {
                Log.i(b, strA);
            }
            if (l11.a.a()) {
                a.a(k11.b, b, strA);
            }
        }
    }

    public static final void c(String str, Object... objArr) {
        y45.j(str, "format");
        y45.j(objArr, "args");
        if (c || l11.a.a()) {
            hz9 hz9Var = hz9.a;
            Locale locale = Locale.US;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            String str2 = String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            y45.i(str2, "format(...)");
            String strA = a(str2);
            if (c) {
                Log.w(b, strA);
            }
            if (l11.a.a()) {
                a.a(k11.c, b, strA);
            }
        }
    }

    public static final void a(boolean z) {
        c = z;
    }

    public static final void a(String str, Object... objArr) {
        y45.j(str, "format");
        y45.j(objArr, "args");
        if (c || l11.a.a()) {
            hz9 hz9Var = hz9.a;
            Locale locale = Locale.US;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            String str2 = String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            y45.i(str2, "format(...)");
            String strA = a(str2);
            if (c) {
                Log.e(b, strA);
            }
            if (l11.a.a()) {
                a.a(k11.d, b, strA);
            }
        }
    }
}
