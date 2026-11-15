package com.hunantv.imgo.util;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;

public final class c {
    public static int a(@Nullable TelephonyManager telephonyManager) {
        if (telephonyManager == null) {
            return 0;
        }
        try {
            return telephonyManager.getNetworkType();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    @Nullable
    public static NetworkInfo a(@Nullable ConnectivityManager connectivityManager) {
        if (connectivityManager == null) {
            return null;
        }
        try {
            return connectivityManager.getActiveNetworkInfo();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
