package com.mgtv.irouting.utils;

import android.util.Log;

public class e {
    private static boolean a = false;

    public static void a(String str, String str2) {
        if (a) {
            Log.v(str, str2);
        }
    }

    public static void b(String str, String str2) {
        if (a) {
            Log.e(str, str2);
        }
    }
}
