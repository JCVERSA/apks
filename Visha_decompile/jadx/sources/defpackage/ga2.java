package defpackage;

import android.util.Log;

public abstract class ga2 {
    public static String a;
    public static String b;

    public static String a() {
        String str = a;
        if (str != null) {
            return str;
        }
        try {
            a = maa.c();
        } catch (Exception e) {
            Log.d("DeviceInfoUtils", "getModelName Exception " + e);
        }
        Log.e("DeviceInfoUtils", "getModelName " + a);
        return a;
    }

    public static String b() {
        String str = b;
        if (str != null) {
            return str;
        }
        try {
            b = maa.d("ro.board.platform");
        } catch (Exception e) {
            Log.d("DeviceInfoUtils", "getPlatformName Exception " + e.toString());
        }
        Log.e("DeviceInfoUtils", "getPlatformName " + b);
        return b;
    }
}
