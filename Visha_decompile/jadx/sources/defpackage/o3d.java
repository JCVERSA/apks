package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.transsion.core.log.ObjectLogUtils;

public abstract class o3d {
    public static int a = -1;
    public static a b;

    public static class a extends ConnectivityManager.NetworkCallback {
        public a() {
        }

        @Override
        public void onAvailable(Network network) {
            super.onAvailable(network);
            o3d.b();
        }

        @Override
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            super.onCapabilitiesChanged(network, networkCapabilities);
            o3d.b();
        }

        @Override
        public void onLost(Network network) {
            super.onLost(network);
            o3d.b();
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    public static int a(Context context) {
        int subtype;
        String subtypeName;
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            subtype = 0;
        } else if (Build.VERSION.SDK_INT < 30) {
            subtype = telephonyManager.getNetworkType();
        } else if (ContextCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") == 0 || telephonyManager.hasCarrierPrivileges()) {
            subtype = telephonyManager.getDataNetworkType();
        } else {
            subtype = 0;
        }
        if (subtype != 0 || (connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            subtypeName = "";
        } else {
            subtype = activeNetworkInfo.getSubtype();
            subtypeName = activeNetworkInfo.getSubtypeName();
        }
        switch (subtype) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return 2;
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
            case 19:
                return 4;
            case 20:
                return 5;
            default:
                if (TextUtils.isEmpty(subtypeName)) {
                    return 99;
                }
                return (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) ? 3 : 0;
        }
    }

    public static void b() {
        a = -1;
    }

    public static boolean c(ConnectivityManager connectivityManager) {
        NetworkCapabilities networkCapabilities;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return false;
        }
        return networkCapabilities.hasTransport(3);
    }

    public static int d(Context context) {
        NetworkCapabilities networkCapabilities;
        int i = a;
        if (i != -1 && i != 0 && i != 99) {
            return i;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (!e(connectivityManager)) {
                a = 99;
                return 99;
            }
            if (g(connectivityManager)) {
                a = 1;
            } else if (c(connectivityManager)) {
                a = 6;
            } else {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                boolean zHasTransport = false;
                if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                    zHasTransport = networkCapabilities.hasTransport(0);
                }
                if (zHasTransport) {
                    a = a(context);
                } else {
                    a = 100;
                }
            }
            return a;
        } catch (Exception unused) {
            return 99;
        }
    }

    public static boolean e(ConnectivityManager connectivityManager) {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        if (connectivityManager == null || (activeNetwork = connectivityManager.getActiveNetwork()) == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return false;
        }
        return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(3) || networkCapabilities.hasTransport(4) || networkCapabilities.hasCapability(16);
    }

    public static boolean f(Context context) {
        try {
            return e((ConnectivityManager) context.getSystemService("connectivity"));
        } catch (Exception e) {
            ObjectLogUtils objectLogUtils = c4d.a;
            c4d.d(Log.getStackTraceString(e));
            return false;
        }
    }

    public static boolean g(ConnectivityManager connectivityManager) {
        NetworkCapabilities networkCapabilities;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return false;
        }
        return networkCapabilities.hasTransport(1);
    }

    public static boolean h(Context context) {
        try {
            if (!f(context)) {
                return false;
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            return g(connectivityManager) || c(connectivityManager);
        } catch (Exception unused) {
            return false;
        }
    }

    public static void i(Context context) {
        try {
            if (b == null) {
                b = new a();
            }
            NetworkRequest networkRequestBuild = new NetworkRequest.Builder().build();
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(networkRequestBuild, b);
            }
        } catch (Exception e) {
            ObjectLogUtils objectLogUtils = c4d.a;
            c4d.d(Log.getStackTraceString(e));
        }
    }
}
