package com.hisavana.common.tracking;

import com.cloud.sdk.commonutil.util.DeviceUtil;
import java.util.concurrent.atomic.AtomicInteger;

public class TrackingUtil {
    private static final AtomicInteger atomicInteger = new AtomicInteger();

    public static String getRequestId() {
        return DeviceUtil.p();
    }

    public static String getTriggerId() {
        String strValueOf = String.valueOf(atomicInteger.incrementAndGet());
        String strValueOf2 = String.valueOf((int) (((Math.random() * 9.0d) + 1.0d) * 100000.0d));
        return strValueOf + String.valueOf(System.currentTimeMillis()) + strValueOf2;
    }
}
