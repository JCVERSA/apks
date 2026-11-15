package com.yandex.mobile.ads.impl;

import defpackage.abb;
import java.util.Map;

public final class cf {
    private static final Map<mf, String> a = kotlin.collections.a.p(abb.a(mf.c, "Network error"), abb.a(mf.d, "Invalid response"), abb.a(mf.b, "Unknown"));

    public static String a(mf mfVar) {
        String str = a.get(mfVar);
        return str == null ? "Unknown" : str;
    }
}
