package com.yandex.mobile.ads.impl;

import defpackage.g1a;
import defpackage.y45;
import java.util.Locale;
import java.util.UUID;

public final class mu0 {
    public static String a() {
        String string = UUID.randomUUID().toString();
        y45.i(string, "toString(...)");
        String lowerCase = g1a.N(string, "-", "", false, 4, null).toLowerCase(Locale.ROOT);
        y45.i(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }
}
