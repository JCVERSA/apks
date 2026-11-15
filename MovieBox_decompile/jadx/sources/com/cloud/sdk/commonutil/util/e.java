package com.cloud.sdk.commonutil.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Field;

public abstract class e {

    private static volatile Context f22523a = null;

    private static volatile boolean f22524b = false;

    private static volatile boolean f22525c = false;

    private static volatile long f22526d;

    public static Context a() {
        if (f22523a == null) {
            c.Log().e("u should init first");
        }
        return f22523a;
    }

    public static File b(Context context) {
        boolean z10 = true;
        try {
            Field declaredField = Environment.class.getDeclaredField("sUserRequired");
            declaredField.setAccessible(true);
            z10 = declaredField.getBoolean(new Environment());
        } catch (Exception unused) {
        }
        if (z10) {
            return null;
        }
        try {
            return context.getExternalCacheDir();
        } catch (Exception e10) {
            c.Log().e("ssp", "getExternalCacheDir error: " + Log.getStackTraceString(e10));
            return null;
        }
    }

    public static long c() {
        return f22526d;
    }

    public static String d() {
        return f22523a == null ? "" : a().getPackageName();
    }

    public static int e() {
        Context contextA = a();
        if (contextA == null) {
            return -1;
        }
        try {
            PackageInfo packageInfo = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (Exception e10) {
            c.Log().e("ssp", "getVersionCode error: " + Log.getStackTraceString(e10));
            return -1;
        }
    }

    public static String f() {
        Context contextA = a();
        if (contextA == null) {
            return "";
        }
        try {
            PackageInfo packageInfo = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0);
            return packageInfo != null ? packageInfo.versionName : "";
        } catch (Exception e10) {
            c.Log().e("ssp", "getVersionCode error: " + Log.getStackTraceString(e10));
            return "";
        }
    }

    public static synchronized void g(Context context) {
        if (!h()) {
            f22525c = true;
            f22523a = context.getApplicationContext();
            i.a(a());
            f22526d = System.currentTimeMillis();
            c.Log().d("HSCoreUtil", "init time is " + f22526d);
        }
    }

    public static boolean h() {
        return f22525c && f22523a != null;
    }

    public static void i(Context context) {
        try {
            f22523a = context.getApplicationContext();
        } catch (Throwable unused) {
            c.Log().e("context is null, please check it");
        }
    }

    public static void j(boolean z10) {
        f22524b = z10;
    }
}
