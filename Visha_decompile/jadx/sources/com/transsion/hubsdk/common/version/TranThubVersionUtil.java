package com.transsion.hubsdk.common.version;

import android.os.Build;

public class TranThubVersionUtil {
    public static final int BAKLAVA = 36;
    public static final int CINNAMON = 37;
    public static final int CINNAMON_BUN = 37;
    public static final int P = 28;
    public static final int S_V2 = 32;
    public static final int TIRAMISU = 33;
    public static final int UPSIDE_DOWN_CAKE = 34;

    public static boolean isAndroidS() {
        int i = Build.VERSION.SDK_INT;
        return i == 31 || i == 32;
    }

    public static boolean isAndroidT() {
        return Build.VERSION.SDK_INT == 33;
    }

    public static boolean isAndroidU() {
        return Build.VERSION.SDK_INT == 34;
    }

    public static boolean isLowerAndroidT() {
        return Build.VERSION.SDK_INT < 33;
    }

    public static boolean isRecentAndroidC() {
        return Build.VERSION.SDK_INT >= 37;
    }

    public static boolean isRecentAndroidP() {
        return true;
    }

    public static boolean isRecentAndroidT() {
        return Build.VERSION.SDK_INT > 33;
    }

    public static boolean isRecentAndroidU() {
        return Build.VERSION.SDK_INT > 34;
    }

    public static boolean isRecentAndroidW() {
        return Build.VERSION.SDK_INT >= 36;
    }

    public static boolean isRecentAndroidX() {
        return Build.VERSION.SDK_INT >= 37;
    }
}
