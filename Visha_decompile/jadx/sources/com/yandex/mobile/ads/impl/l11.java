package com.yandex.mobile.ads.impl;

public final class l11 {
    public static final l11 a = new l11();
    private static boolean b;

    private l11() {
    }

    public final synchronized boolean a() {
        return b;
    }

    public final synchronized void b() {
        b = true;
    }
}
