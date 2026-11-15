package com.mgtv.ssp;

import android.app.Application;
import android.content.Context;

public class e {
    private static boolean a = false;
    private static int b;

    public static void a(int i) {
        b = i;
    }

    public static void b(Context context) {
        if (b == 1) {
            a = true;
            try {
                mgtv.qt.a.c(context, "startPlay");
            } catch (Throwable unused) {
            }
        }
    }

    public static void c(Context context) {
        if (b == 1 && a) {
            a = false;
            try {
                mgtv.qt.a.c(context, "endPlay");
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(Context context) {
        if (b == 1 && (context instanceof Application)) {
            mgtv.qt.a.a((Application) context, "393CoJ7g", com.hunantv.imgo.util.b.t(), null);
        }
    }
}
