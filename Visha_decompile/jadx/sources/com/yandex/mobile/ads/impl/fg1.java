package com.yandex.mobile.ads.impl;

import android.text.TextUtils;

public final class fg1 {
    private final String a = "Yandex";
    private final String b = "7.12.2";

    private fg1() {
    }

    public static fg1 a() {
        if (TextUtils.isEmpty("Yandex")) {
            throw new IllegalArgumentException("Name is null or empty");
        }
        if (TextUtils.isEmpty("7.12.2")) {
            throw new IllegalArgumentException("Version is null or empty");
        }
        return new fg1();
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }
}
