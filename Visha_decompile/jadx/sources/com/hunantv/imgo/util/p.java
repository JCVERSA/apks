package com.hunantv.imgo.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import com.hunantv.imgo.BaseApplication;

public class p {
    public static int a = 1;
    public static int b = 2;
    public static int c = 3;
    public static int d = 1;
    public static int e = 2;

    public static boolean a() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) BaseApplication.getContext().getSystemService("connectivity");
            NetworkInfo networkInfoA = connectivityManager != null ? c.a(connectivityManager) : null;
            return networkInfoA != null && networkInfoA.isAvailable() && networkInfoA.getType() == 1;
        } catch (Exception unused) {
        }
    }

    private static int b(int i, int i2) {
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
            default:
                return 4;
            case 13:
                return 3;
        }
    }

    public static String c() {
        try {
            NetworkInfo networkInfoA = c.a((ConnectivityManager) BaseApplication.getContext().getSystemService("connectivity"));
            if (networkInfoA != null && networkInfoA.getState() == NetworkInfo.State.CONNECTED) {
                return a(networkInfoA.getType(), c.a((TelephonyManager) BaseApplication.getContext().getSystemService("phone")));
            }
            return "None";
        } catch (Throwable unused) {
            return "2G";
        }
    }

    public static int d() {
        if (BaseApplication.getContext() == null) {
            return 4;
        }
        try {
            NetworkInfo networkInfoA = c.a((ConnectivityManager) BaseApplication.getContext().getSystemService("connectivity"));
            if (networkInfoA == null || networkInfoA.getState() != NetworkInfo.State.CONNECTED) {
                return 0;
            }
            try {
                return b(networkInfoA.getType(), c.a((TelephonyManager) BaseApplication.getContext().getSystemService("phone")));
            } catch (Throwable unused) {
                return 4;
            }
        } catch (Exception unused2) {
            return 4;
        }
    }

    public static int e() {
        ConnectivityManager connectivityManager = (ConnectivityManager) BaseApplication.getContext().getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.isConnected()) {
            return 0;
        }
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        return (networkInfo2 == null || !networkInfo2.isConnected()) ? 2 : 1;
    }

    public static boolean f() {
        try {
            NetworkInfo networkInfoA = c.a((ConnectivityManager) BaseApplication.getContext().getSystemService("connectivity"));
            if (networkInfoA != null) {
                return networkInfoA.isAvailable();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean b() {
        try {
            NetworkInfo networkInfoA = c.a((ConnectivityManager) BaseApplication.getContext().getSystemService("connectivity"));
            if (networkInfoA != null) {
                return networkInfoA.isConnected();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static String a(int i, int i2) {
        if (i == 1) {
            return "WIFI";
        }
        if (i != 0) {
            return "2G";
        }
        if (i2 == 3) {
            return "3G";
        }
        if (i2 == 20) {
            return "5G";
        }
        if (i2 == 5 || i2 == 6) {
            return "3G";
        }
        switch (i2) {
            case 8:
            case 9:
            case 10:
                return "3G";
            default:
                switch (i2) {
                    case 12:
                    case 14:
                    case 15:
                        return "3G";
                    case 13:
                        return "4G";
                    default:
                        return "2G";
                }
        }
    }

    public static String b(Context context) {
        Context applicationContext;
        WifiManager wifiManager;
        if (context == null || (applicationContext = context.getApplicationContext()) == null || (wifiManager = (WifiManager) applicationContext.getSystemService("wifi")) == null) {
            return "";
        }
        try {
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (connectionInfo == null) {
                return "";
            }
            return String.valueOf(connectionInfo.getRssi());
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static Boolean a(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            if (connectivityManager == null) {
                return Boolean.FALSE;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                return Boolean.FALSE;
            }
            return Boolean.TRUE;
        } catch (Throwable unused) {
        }
    }

    public static String c(Context context) {
        Context applicationContext;
        WifiInfo connectionInfo;
        if (context == null || (applicationContext = context.getApplicationContext()) == null) {
            return "";
        }
        try {
            WifiManager wifiManager = (WifiManager) applicationContext.getSystemService("wifi");
            if (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
                return "";
            }
            return String.valueOf(connectionInfo.getFrequency());
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
