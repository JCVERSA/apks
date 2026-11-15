package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;

public abstract class ez6 {
    public static boolean a() {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (xj1.a().getApplicationContext() == null || (connectivityManager = (ConnectivityManager) xj1.a().getApplicationContext().getSystemService("connectivity")) == null) {
            return false;
        }
        try {
            activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Exception unused) {
            activeNetworkInfo = null;
        }
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }

    public static int b(int i) {
        int i2 = -101;
        if (i != -101) {
            i2 = -1;
            if (i != -1) {
                switch (i) {
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
        return i2;
    }

    public static int c() {
        int networkType = 0;
        try {
            if (xj1.a().getApplicationContext() == null && xj1.a().getApplicationContext().getSystemService("connectivity") == null) {
                return 0;
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) xj1.a().getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type == 1) {
                    networkType = -101;
                } else if (type == 0) {
                    networkType = ((TelephonyManager) xj1.a().getApplicationContext().getSystemService("phone")).getNetworkType();
                }
            } else {
                networkType = -1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return b(networkType);
    }
}
