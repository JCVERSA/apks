package com.hunantv.imgo.log;

import android.util.Log;

public class e {
    static boolean a = true;
    private static d b;

    public static void a(String str, Object obj, boolean z) {
        d dVar = b;
        if (dVar != null) {
            dVar.a(str, obj, z);
        } else {
            Log.d(str, (String) obj);
        }
    }

    public static void b(String str, Object obj, boolean z) {
        d dVar = b;
        if (dVar != null) {
            dVar.b(str, obj, z);
        } else {
            Log.i(str, (String) obj);
        }
    }

    public static void c(String str, Object obj, boolean z) {
        d dVar = b;
        if (dVar != null) {
            dVar.c(str, obj, z);
        } else {
            Log.w(str, (String) obj);
        }
    }

    public static void d(String str, Object obj, boolean z) {
        d dVar = b;
        if (dVar != null) {
            dVar.d(str, obj, z);
        } else {
            Log.e(str, (String) obj);
        }
    }

    public static void a(String str, Object obj, Throwable th, boolean z) {
        d dVar = b;
        if (dVar != null) {
            dVar.a(str, obj, th, z);
        } else {
            Log.e(str, (String) obj);
        }
    }
}
