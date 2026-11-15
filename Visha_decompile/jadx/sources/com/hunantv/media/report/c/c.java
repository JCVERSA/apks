package com.hunantv.media.report.c;

import android.util.Log;
import java.util.Locale;

public class c {
    private static boolean a = false;

    public static void a(String str, String str2) {
        if (a) {
            Log.d(str, str2);
        }
    }

    public static void b(String str, String str2) {
        if (a) {
            Log.i(str, str2);
        }
    }

    public static void a(String str, String str2, Object... objArr) {
        if (a) {
            Log.i(str, String.format(Locale.US, str2, objArr));
        }
    }
}
