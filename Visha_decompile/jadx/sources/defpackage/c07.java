package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;

public abstract class c07 {
    public static int a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (!b(context)) {
            return 0;
        }
        if (activeNetworkInfo.getType() == 1) {
            return 1;
        }
        if (activeNetworkInfo.getType() != 0) {
            return 0;
        }
        int subtype = activeNetworkInfo.getSubtype();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (subtype == 20) {
            return 5;
        }
        if (subtype == 13 && telephonyManager != null && !telephonyManager.isNetworkRoaming()) {
            return 4;
        }
        int i = 3;
        if (subtype != 3 && subtype != 8 && subtype != 14 && subtype != 10 && subtype != 15 && subtype != 5 && subtype != 6 && subtype != 12) {
            i = 2;
            if (subtype != 1 && subtype != 2 && subtype != 7 && subtype != 4 && subtype != 11) {
                return 6;
            }
        }
        return i;
    }

    public static boolean b(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) ? false : true;
    }

    public static boolean c(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }
}
