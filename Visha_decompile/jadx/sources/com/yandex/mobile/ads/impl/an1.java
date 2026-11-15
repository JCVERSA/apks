package com.yandex.mobile.ads.impl;

import android.util.Log;
import defpackage.hz9;
import defpackage.y45;
import java.util.Arrays;
import java.util.Locale;

public final class an1 {
    private static final v11 a;
    public static final int b = 0;

    static {
        int i = v11.d;
        a = v11.a.a();
    }

    public static void a(String str, Object... objArr) {
        y45.j(str, "format");
        y45.j(objArr, "args");
        if (sp0.a() || l11.a.a()) {
            hz9 hz9Var = hz9.a;
            Locale locale = Locale.US;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            String str2 = String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            y45.i(str2, "format(...)");
            if (sp0.a()) {
                Log.w("Yandex Mobile Ads", str2);
            }
            if (l11.a.a()) {
                a.a(k11.c, "Yandex Mobile Ads", str2);
            }
        }
    }
}
