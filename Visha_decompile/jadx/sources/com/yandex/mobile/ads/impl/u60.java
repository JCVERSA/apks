package com.yandex.mobile.ads.impl;

import java.util.HashSet;

public final class u60 {
    private static final HashSet<String> a = new HashSet<>();
    private static String b = "goog.exo.core";

    public static synchronized String a() {
        return b;
    }

    public static synchronized void a(String str) {
        if (a.add(str)) {
            b += ", " + str;
        }
    }
}
