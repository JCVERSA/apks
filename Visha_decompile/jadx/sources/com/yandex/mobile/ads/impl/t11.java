package com.yandex.mobile.ads.impl;

import java.util.concurrent.atomic.AtomicBoolean;

public final class t11 {
    private static final AtomicBoolean a = new AtomicBoolean(false);

    public static final void a() {
        if (a.compareAndSet(false, true)) {
            hp0.b("Yandex Mobile Ads 7.12.2 initialized successfully", new Object[0]);
        }
    }
}
