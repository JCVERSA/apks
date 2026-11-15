package com.mgtv.data.aphone.core.j;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;

public class g {
    public static boolean a(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) ? false : true;
    }

    public static String b(Context context) {
        NetworkInfo networkInfoA = a((ConnectivityManager) context.getSystemService("connectivity"));
        return (networkInfoA == null || networkInfoA.getState() != NetworkInfo.State.CONNECTED) ? "0" : a(networkInfoA.getType(), a((TelephonyManager) context.getSystemService("phone")));
    }

    private static String a(int i, int i2) {
        if (i == 1) {
            return "1";
        }
        if (i != 0) {
            return "4";
        }
        switch (i2) {
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "2";
            case 4:
            case 7:
            case 11:
            default:
                return "4";
            case 13:
                return "3";
        }
    }

    private static int a(TelephonyManager telephonyManager) {
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

    private static NetworkInfo a(ConnectivityManager connectivityManager) {
        if (connectivityManager == null) {
            return null;
        }
        try {
            return connectivityManager.getActiveNetworkInfo();
        } catch (NullPointerException e) {
            e.printStackTrace();
            return null;
        }
    }
}
