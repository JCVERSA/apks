package com.cloud.hisavana.sdk;

import android.util.Log;

public class b4 extends com.cloud.sdk.commonutil.util.c {

    private static b4 f21101a;

    private static final boolean f21102b = Log.isLoggable("ADSDK", 3);

    public static synchronized b4 b() {
        try {
            if (f21101a == null) {
                synchronized (b4.class) {
                    try {
                        if (f21101a == null) {
                            f21101a = new b4();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return f21101a;
    }

    public static boolean c() {
        return f21102b;
    }

    @Override
    public String getGlobalTag() {
        return "ADSDK_S";
    }
}
