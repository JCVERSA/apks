package com.mbridge.msdk.foundation.tools;

import android.net.ConnectivityManager;

public class f0 {

    private static ConnectivityManager f34905a;

    public static synchronized ConnectivityManager a() {
        try {
            if (f34905a == null && com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                f34905a = (ConnectivityManager) com.mbridge.msdk.foundation.controller.c.m().d().getSystemService("connectivity");
            }
        } catch (Exception e10) {
            o0.b("NetManager", e10.getMessage());
        }
        return f34905a;
    }
}
