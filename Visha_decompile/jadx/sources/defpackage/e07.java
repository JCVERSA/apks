package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;

public abstract class e07 {
    public static long a;
    public static long b;

    public static NetworkInfo a(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static long b(Context context) {
        if (context == null) {
            return 0L;
        }
        long totalRxBytes = TrafficStats.getUidRxBytes(context.getApplicationInfo().uid) == -1 ? 0L : TrafficStats.getTotalRxBytes() / 1024;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - a;
        if (j == 0) {
            return j;
        }
        long j2 = ((totalRxBytes - b) * 1000) / j;
        a = jCurrentTimeMillis;
        b = totalRxBytes;
        return j2;
    }

    public static int c(Context context) {
        int i;
        NetworkInfo networkInfoA = a(context);
        if (networkInfoA == null || !networkInfoA.isAvailable()) {
            return -1;
        }
        if (networkInfoA.getType() == 1) {
            return 1;
        }
        if (networkInfoA.getType() != 0) {
            return 5;
        }
        switch (networkInfoA.getSubtype()) {
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
                String subtypeName = networkInfoA.getSubtypeName();
                return ("TD-SCDMA".equalsIgnoreCase(subtypeName) || "WCDMA".equalsIgnoreCase(subtypeName) || "CDMA2000".equalsIgnoreCase(subtypeName)) ? 3 : 5;
        }
        return i;
    }

    public static String d(Context context) {
        int iC = c(context);
        if (iC == -1) {
            return "NETWORK_NO";
        }
        if (iC == 1) {
            return "NETWORK_WIFI";
        }
        if (iC == 2) {
            return "NETWORK_2G";
        }
        if (iC != 3) {
            return iC != 4 ? "NETWORK_UNKNOWN" : "NETWORK_4G";
        }
        return "NETWORK_3G";
    }

    public static boolean e(Context context) {
        NetworkInfo networkInfoA = a(context);
        return networkInfoA != null && networkInfoA.isAvailable();
    }

    public static boolean f(Context context) {
        NetworkInfo networkInfoA = a(context);
        return networkInfoA != null && networkInfoA.isConnected();
    }

    public static boolean g(Context context) {
        return e(context) && !h(context);
    }

    public static boolean h(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        return (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || activeNetworkInfo.getType() != 1) ? false : true;
    }
}
