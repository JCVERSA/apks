package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Arrays;

public final class z0 {
    public static String a(Object[] objArr, int i, String str, String str2) {
        String str3 = String.format(str, Arrays.copyOf(objArr, i));
        y45.i(str3, str2);
        return str3;
    }
}
