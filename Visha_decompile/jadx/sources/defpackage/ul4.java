package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Field;

public abstract class ul4 {
    public static volatile Context a = null;
    public static volatile boolean b = false;
    public static volatile boolean c = false;
    public static volatile long d = 0;
    public static boolean e = false;

    public static Context a() {
        if (a == null) {
            ja1.Log().e("u should init first");
        }
        return a;
    }

    public static File b(Context context) {
        boolean z = true;
        try {
            Field declaredField = Environment.class.getDeclaredField("sUserRequired");
            declaredField.setAccessible(true);
            z = declaredField.getBoolean(new Environment());
        } catch (Exception unused) {
        }
        if (z) {
            return null;
        }
        try {
            return context.getExternalCacheDir();
        } catch (Exception e2) {
            ja1.Log().e("ssp", "getExternalCacheDir error: " + Log.getStackTraceString(e2));
            return null;
        }
    }

    public static long c() {
        return d;
    }

    public static String d() {
        return a == null ? "" : a().getPackageName();
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
        } catch (Exception e2) {
            ja1.Log().e("ssp", "getVersionCode error: " + Log.getStackTraceString(e2));
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
        } catch (Exception e2) {
            ja1.Log().e("ssp", "getVersionCode error: " + Log.getStackTraceString(e2));
            return "";
        }
    }

    public static synchronized void g(Context context) {
        if (!i()) {
            c = true;
            a = context.getApplicationContext();
            im4.a(a());
            vl4.f(a());
            d = System.currentTimeMillis();
            ja1.Log().d("HSCoreUtil", "init time is " + d);
        }
    }

    public static boolean h() {
        return b;
    }

    public static boolean i() {
        return c && a != null;
    }

    public static boolean j() {
        return e;
    }

    public static void k(Context context) {
        try {
            a = context.getApplicationContext();
        } catch (Throwable unused) {
            ja1.Log().e("context is null, please check it");
        }
    }

    public static void l(boolean z) {
        b = z;
    }
}
