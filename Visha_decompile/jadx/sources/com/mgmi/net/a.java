package com.mgmi.net;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.mgmi.ads.api.c;

public class a {
    public static int a() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) c.a().getSystemService("connectivity");
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (Exception unused) {
                activeNetworkInfo = null;
            }
        } else {
            activeNetworkInfo = null;
        }
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            if (activeNetworkInfo.getType() == 1) {
                return 1;
            }
            if (activeNetworkInfo.getType() == 0) {
                return 0;
            }
        }
        return 2;
    }

    public static String b() {
        return a(a());
    }

    public static String a(int i) {
        if (i == 0) {
            return "Mobile";
        }
        if (i == 1) {
            return "Wifi";
        }
        if (i != 2) {
            return "Unknown";
        }
        return "No Network";
    }
}
