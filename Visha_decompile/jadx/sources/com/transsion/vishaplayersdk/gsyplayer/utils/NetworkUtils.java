package com.transsion.vishaplayersdk.gsyplayer.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.telephony.TelephonyManager;

public class NetworkUtils {
    public static final int NETWORK_2G = 2;
    public static final int NETWORK_3G = 3;
    public static final int NETWORK_4G = 4;
    public static final int NETWORK_NO = -1;
    private static final int NETWORK_TYPE_GSM = 16;
    private static final int NETWORK_TYPE_IWLAN = 18;
    private static final int NETWORK_TYPE_TD_SCDMA = 17;
    public static final int NETWORK_UNKNOWN = 5;
    public static final int NETWORK_WIFI = 1;
    private static long lastTimeStamp;
    private static long lastTotalRxBytes;

    private NetworkUtils() {
    }

    private static NetworkInfo getActiveNetworkInfo(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static long getNetSpeed(Context context) {
        ApplicationInfo applicationInfo;
        long j;
        if (context == null || (applicationInfo = context.getApplicationInfo()) == null) {
            return 0L;
        }
        long uidRxBytes = TrafficStats.getUidRxBytes(applicationInfo.uid);
        if (uidRxBytes == -1) {
            long totalRxBytes = TrafficStats.getTotalRxBytes();
            if (totalRxBytes < 0) {
                return 0L;
            }
            j = totalRxBytes / 1024;
        } else {
            if (uidRxBytes < 0) {
                return 0L;
            }
            j = uidRxBytes / 1024;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = jCurrentTimeMillis - lastTimeStamp;
        if (j2 <= 0 || j2 > 60000) {
            lastTimeStamp = jCurrentTimeMillis;
            lastTotalRxBytes = j;
            return 0L;
        }
        long j3 = ((j - lastTotalRxBytes) * 1000) / j2;
        lastTimeStamp = jCurrentTimeMillis;
        lastTotalRxBytes = j;
        return j3;
    }

    public static int getNetWorkType(Context context) {
        int i;
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
            return -1;
        }
        if (activeNetworkInfo.getType() == 1) {
            return 1;
        }
        if (activeNetworkInfo.getType() != 0) {
            return 5;
        }
        switch (activeNetworkInfo.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                i = 2;
                break;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return 3;
            case 13:
            case 18:
                i = 4;
                break;
            default:
                String subtypeName = activeNetworkInfo.getSubtypeName();
                return ("TD-SCDMA".equalsIgnoreCase(subtypeName) || "WCDMA".equalsIgnoreCase(subtypeName) || "CDMA2000".equalsIgnoreCase(subtypeName)) ? 3 : 5;
        }
        return i;
    }

    public static String getNetWorkTypeName(Context context) {
        int netWorkType = getNetWorkType(context);
        if (netWorkType == -1) {
            return "NETWORK_NO";
        }
        if (netWorkType == 1) {
            return "NETWORK_WIFI";
        }
        if (netWorkType == 2) {
            return "NETWORK_2G";
        }
        if (netWorkType != 3) {
            return netWorkType != 4 ? "NETWORK_UNKNOWN" : "NETWORK_4G";
        }
        return "NETWORK_3G";
    }

    public static String getNetworkOperatorName(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            return telephonyManager.getNetworkOperatorName();
        }
        return null;
    }

    public static int getPhoneType(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            return telephonyManager.getPhoneType();
        }
        return -1;
    }

    public static boolean is4G(Context context) {
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.getSubtype() == 13;
    }

    public static boolean isAvailable(Context context) {
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }

    public static boolean isConnected(Context context) {
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static boolean isMobileConnected(Context context) {
        return isAvailable(context) && !isWifiConnected(context);
    }

    public static boolean isWifiConnected(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager != null && connectivityManager.getActiveNetworkInfo().getType() == 1;
    }

    public static void openWirelessSettings(Context context) {
        context.startActivity(new Intent("android.settings.SETTINGS"));
    }
}
