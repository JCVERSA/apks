package com.yandex.mobile.ads.impl;

import android.os.Trace;

public final class u52 {
    public static void a(String str) {
        if (f92.a >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void a() {
        if (f92.a >= 18) {
            Trace.endSection();
        }
    }
}
