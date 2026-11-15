package com.hunantv.media.global;

import java.util.concurrent.atomic.AtomicInteger;

public class GlobalKeyGenerator {
    private static AtomicInteger sKey = new AtomicInteger(1);

    public static synchronized int genKey() {
        return sKey.incrementAndGet();
    }
}
