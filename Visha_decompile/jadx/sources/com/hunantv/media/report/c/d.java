package com.hunantv.media.report.c;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.hunantv.media.config.NetPlayConfig;

public class d {
    private static String a(int i, int i2) {
        if (i == 1) {
            return "WIFI";
        }
        if (i != 0) {
            return "ERROR";
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
                return "3G";
            case 4:
            case 7:
            case 11:
            default:
                return "2G";
            case 13:
                return "4G";
        }
    }

    public static String b(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return "ERROR";
        }
        try {
            try {
                activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            } catch (Exception e) {
                e.printStackTrace();
                activeNetworkInfo = null;
            }
            if (activeNetworkInfo != null && activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED) {
                return a(activeNetworkInfo.getType(), a.a((TelephonyManager) context.getSystemService("phone")));
            }
            return "None";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "ERROR";
        }
    }

    public static boolean c(Context context) {
        if (context == null) {
            return false;
        }
        try {
            NetworkInfo[] allNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getAllNetworkInfo();
            if (allNetworkInfo != null) {
                for (NetworkInfo networkInfo : allNetworkInfo) {
                    if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static String a(Context context) {
        String strB = b(context);
        NetPlayConfig.setNetworkType(strB);
        return strB;
    }
}
