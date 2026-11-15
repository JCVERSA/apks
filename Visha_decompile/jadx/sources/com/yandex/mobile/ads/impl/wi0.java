package com.yandex.mobile.ads.impl;

import java.util.concurrent.atomic.AtomicLong;

public final class wi0 {
    private static final AtomicLong a = new AtomicLong();

    public static final long a() {
        return a.getAndIncrement();
    }
}
