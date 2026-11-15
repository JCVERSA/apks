package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.mgadplus.mgutil.SourceKitLogger;

public abstract class fyd {
    public static int a(int i, int i2) {
        if (i == 1) {
            return 1;
        }
        if (i != 0) {
            return 4;
        }
        switch (i2) {
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 2;
            case 7:
            case 11:
            case 16:
            case 17:
            case 18:
            case 19:
            default:
                return 4;
            case 13:
                return 3;
            case 20:
                return 5;
        }
    }

    public static int b(Context context) {
        try {
            NetworkInfo networkInfoC = c((ConnectivityManager) context.getSystemService("connectivity"));
            if (networkInfoC == null || networkInfoC.getState() != NetworkInfo.State.CONNECTED) {
                return 0;
            }
            try {
                return a(networkInfoC.getType(), networkInfoC.getSubtype());
            } catch (Throwable unused) {
                return 1;
            }
        } catch (Exception unused2) {
            return 4;
        }
    }

    public static NetworkInfo c(ConnectivityManager connectivityManager) {
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

    public static int d(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
            if (networkInfo != null && networkInfo.isConnected()) {
                return 0;
            }
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
            return (networkInfo2 == null || !networkInfo2.isConnected()) ? 2 : 1;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static boolean e(Context context) {
        SourceKitLogger.a("NetworkUtils", "Testing connectivity:");
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
            if (networkInfo != null && networkInfo.isConnected()) {
                SourceKitLogger.a("NetworkUtils", "Connected to Internet TYPE_WIFI");
                return true;
            }
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
            if (networkInfo2 != null && networkInfo2.isConnected()) {
                SourceKitLogger.a("NetworkUtils", "Connected to Internet TYPE_MOBILE");
                return true;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                SourceKitLogger.a("NetworkUtils", "No Internet connection");
                return false;
            }
            SourceKitLogger.a("NetworkUtils", "Connected to Internet activeNetwork");
            return true;
        } catch (Exception unused) {
        }
    }
}
