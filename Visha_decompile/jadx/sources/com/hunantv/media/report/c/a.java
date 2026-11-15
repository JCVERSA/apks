package com.hunantv.media.report.c;

import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;

public final class a {
    public static int a(@Nullable TelephonyManager telephonyManager) {
        if (telephonyManager == null) {
            return 0;
        }
        try {
            return telephonyManager.getNetworkType();
        } catch (SecurityException e) {
            e.printStackTrace();
            return 0;
        }
    }
}
