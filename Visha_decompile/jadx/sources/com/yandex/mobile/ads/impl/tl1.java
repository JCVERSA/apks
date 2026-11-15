package com.yandex.mobile.ads.impl;

import defpackage.hz9;
import defpackage.y45;
import java.util.Arrays;
import java.util.Locale;

public final class tl1 {
    public static String a(long j) {
        long jCeil = (long) Math.ceil(j / 1000);
        hz9 hz9Var = hz9.a;
        String str = String.format(Locale.US, "%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(jCeil / 60), Long.valueOf(jCeil % 60)}, 2));
        y45.i(str, "format(...)");
        return str;
    }
}
