package com.doman.core.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;

public final class h {
    private static h a;

    public static int a(Context context) {
        String strE = e(context);
        a();
        if (!c(context)) {
            return 0;
        }
        if (strE.equals("wifi")) {
            return 1;
        }
        if (strE.equals("2G")) {
            return 2;
        }
        if (strE.equals("3G")) {
            return 3;
        }
        if (strE.equals("4G")) {
            return 4;
        }
        return strE.equals("5G") ? 5 : -1;
    }

    public static int b(Context context) {
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        if (simOperator.length() <= 0) {
            return -1;
        }
        if (simOperator.equals("46000") || simOperator.equals("46002")) {
            return 2;
        }
        if (simOperator.equals("46001")) {
            return 1;
        }
        return simOperator.equals("46003") ? 3 : -1;
    }

    private static boolean c(Context context) {
        NetworkInfo networkInfoD = d(context);
        return networkInfoD != null && networkInfoD.isAvailable();
    }

    private static NetworkInfo d(Context context) {
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    private static String e(Context context) {
        String str;
        NetworkInfo networkInfoD = d(context);
        if (networkInfoD == null || !networkInfoD.isConnected()) {
            str = "unknow";
        } else if (networkInfoD.getType() == 1) {
            str = "wifi";
        } else if (networkInfoD.getType() == 0) {
            String subtypeName = networkInfoD.getSubtypeName();
            g.a("NetWorkUtils", "Network getSubtypeName : ".concat(String.valueOf(subtypeName)));
            int subtype = networkInfoD.getSubtype();
            if (subtype != 20) {
                switch (subtype) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        subtypeName = "2G";
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
                        subtypeName = "3G";
                        break;
                    case 13:
                        subtypeName = "4G";
                        break;
                    default:
                        if (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) {
                            subtypeName = "3G";
                        }
                        break;
                }
            } else {
                subtypeName = "5G";
            }
            g.a("NetWorkUtils", "Network getSubtype : " + Integer.valueOf(subtype).toString());
            str = subtypeName;
        } else {
            str = "unknow";
        }
        g.a("NetWorkUtils", "Network Type : ".concat(str));
        return str;
    }

    public static h a() {
        if (a == null) {
            a = new h();
        }
        return a;
    }
}
