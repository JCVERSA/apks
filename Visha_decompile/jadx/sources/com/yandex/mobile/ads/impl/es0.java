package com.yandex.mobile.ads.impl;

import java.util.concurrent.atomic.AtomicLong;

public final class es0 {
    private static final AtomicLong a = new AtomicLong();

    public static long a() {
        return a.getAndIncrement();
    }
}
