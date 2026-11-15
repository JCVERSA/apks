package com.hisavana.common.utils;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import defpackage.ul4;

public class NetUtil {
    public static boolean checkNetworkState() {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (ul4.a().getApplicationContext() == null || (connectivityManager = (ConnectivityManager) ul4.a().getApplicationContext().getSystemService("connectivity")) == null) {
            return false;
        }
        try {
            activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Exception unused) {
            activeNetworkInfo = null;
        }
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }
}
