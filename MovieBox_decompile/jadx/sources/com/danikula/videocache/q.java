package com.danikula.videocache;

import android.util.Log;

public final class q {

    private static boolean f23409a = false;

    public static void b(String str) {
        if (f23409a) {
            Log.e("Download_VideoCache", str);
        }
    }

    public static void d(boolean z10) {
        f23409a = z10;
    }

    public static void e(String str) {
        if (f23409a) {
            Log.v("Download_VideoCache", str);
        }
    }

    public static void f(String str) {
        if (f23409a) {
            Log.w("Download_VideoCache", str);
        }
    }

    public static void a(String str) {
    }

    public static void c(String str) {
    }
}
