package com.mbridge.msdk.util;

import com.cloud.tmc.component_api_ps.MiniAppIpcCommonUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBConfiguration;

public class b {

    private static volatile Boolean f37928a;

    private static volatile Boolean f37929b;

    public static boolean a() {
        if (f37928a == null) {
            try {
                boolean z10 = Integer.parseInt(String.valueOf(MBConfiguration.SDK_VERSION.charAt(10))) == 2;
                f37928a = Boolean.valueOf(z10);
                return z10;
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b(MiniAppIpcCommonUtils.TAG, "isChina", e10);
                }
            }
        }
        return f37928a != null && f37928a.booleanValue();
    }

    public static boolean b() {
        if (f37929b == null) {
            try {
                boolean z10 = Integer.parseInt(String.valueOf(MBConfiguration.SDK_VERSION.charAt(10))) == 1;
                f37929b = Boolean.valueOf(z10);
                return z10;
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b(MiniAppIpcCommonUtils.TAG, "isOversea", e10);
                }
            }
        }
        return f37929b != null && f37929b.booleanValue();
    }
}
