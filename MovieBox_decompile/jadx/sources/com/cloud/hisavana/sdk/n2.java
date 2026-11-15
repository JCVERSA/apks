package com.cloud.hisavana.sdk;

import java.security.SecureRandom;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class n2 {

    private static final AtomicInteger f22072a = new AtomicInteger();

    public static String a() {
        String strValueOf = String.valueOf(f22072a.incrementAndGet());
        String strValueOf2 = String.valueOf((int) (((new SecureRandom().nextDouble() * 9.0d) + 1.0d) * 100000.0d));
        return strValueOf + String.valueOf(System.currentTimeMillis()) + strValueOf2;
    }
}
