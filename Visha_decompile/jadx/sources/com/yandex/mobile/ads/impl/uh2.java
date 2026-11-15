package com.yandex.mobile.ads.impl;

import defpackage.j1a;
import defpackage.y45;

public final class uh2 {
    public static String a(String str) {
        y45.j(str, "string");
        String string = j1a.i1(str).toString();
        if (string.length() <= 0) {
            return "";
        }
        return "yma_" + string;
    }
}
