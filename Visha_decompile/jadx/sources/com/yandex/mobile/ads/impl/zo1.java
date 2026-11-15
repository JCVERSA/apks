package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;

public interface zo1 {
    @SuppressLint({"WrongConstant"})
    static int a(int i) {
        return i & 128;
    }

    @SuppressLint({"WrongConstant"})
    static int b(int i) {
        return i & 64;
    }

    int a(jc0 jc0Var) throws m60;

    int f() throws m60;

    String getName();

    static int a(int i, int i2, int i3) {
        return i | i2 | i3 | 128;
    }
}
