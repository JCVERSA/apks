package com.transsion.core.utils;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;

public class d {
    public static boolean a() {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (yj.a.a().getApplicationContext() == null || (connectivityManager = (ConnectivityManager) yj.a.a().getApplicationContext().getSystemService("connectivity")) == null) {
            return false;
        }
        try {
            activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Exception unused) {
            activeNetworkInfo = null;
        }
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }

    private static int b(int i10) {
        int i11 = -101;
        if (i10 != -101) {
            i11 = -1;
            if (i10 != -1) {
                switch (i10) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return 1;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return 2;
                    case 13:
                        return 3;
                    default:
                        return 0;
                }
            }
        }
        return i11;
    }

    public static int c() {
        int networkType = 0;
        try {
            if (yj.a.a().getApplicationContext() == null && yj.a.a().getApplicationContext().getSystemService("connectivity") == null) {
                return 0;
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) yj.a.a().getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type == 1) {
                    networkType = -101;
                } else if (type == 0) {
                    networkType = ((TelephonyManager) yj.a.a().getApplicationContext().getSystemService("phone")).getNetworkType();
                }
            } else {
                networkType = -1;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return b(networkType);
    }
}
