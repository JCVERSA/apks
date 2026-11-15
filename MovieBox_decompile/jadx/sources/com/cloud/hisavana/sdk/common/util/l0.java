package com.cloud.hisavana.sdk.common.util;

import com.cloud.sdk.commonutil.util.DeviceUtil;
import java.security.SecureRandom;
import java.util.concurrent.atomic.AtomicInteger;

public class l0 {

    private static final AtomicInteger f21575a = new AtomicInteger();

    public static String a() {
        return DeviceUtil.o();
    }

    public static String b() {
        String strValueOf = String.valueOf(f21575a.incrementAndGet());
        String strValueOf2 = String.valueOf((int) (((new SecureRandom().nextDouble() * 9.0d) + 1.0d) * 100000.0d));
        return strValueOf + String.valueOf(System.currentTimeMillis()) + strValueOf2;
    }
}
