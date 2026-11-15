package com.mgtv.ssp.download;

import android.util.Log;

public class f {
    private static boolean a = true;

    public static void a(String str, String str2) {
        if (a) {
            Log.e(str, str2);
        }
    }

    public static void b(String str, String str2) {
        if (a) {
            Log.i(str, str2);
        }
    }

    public static void c(String str, String str2) {
        if (a) {
            Log.w(str, str2);
        }
    }
}
