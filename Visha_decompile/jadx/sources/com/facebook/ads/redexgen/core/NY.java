package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdSettings;

public class NY {
    public static final int[] A00 = new int[AdSettings.IntegrationErrorMode.values().length];

    static {
        try {
            A00[AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CRASH_DEBUG_MODE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            A00[AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CALLBACK_MODE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
