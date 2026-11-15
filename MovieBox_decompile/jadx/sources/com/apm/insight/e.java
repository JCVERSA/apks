package com.apm.insight;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import com.apm.insight.runtime.ConfigManager;
import com.apm.insight.runtime.g;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;

public final class e {

    private static Context f18837a = null;

    private static Application f18838b = null;

    private static long f18839c = 0;

    private static String f18840d = "default";

    private static boolean f18841e = false;

    @SuppressLint({"StaticFieldLeak"})
    private static com.apm.insight.nativecrash.b f18842f;

    private static volatile ConcurrentHashMap<Integer, String> f18845i;

    private static volatile String f18850n;

    private static ConfigManager f18843g = new ConfigManager();

    private static a f18844h = new a();

    private static g f18846j = null;

    private static volatile String f18847k = null;

    private static Object f18848l = new Object();

    private static volatile int f18849m = 0;

    private static int f18851o = 0;

    private static boolean f18852p = true;

    private static boolean f18853q = true;

    private static boolean f18854r = false;

    private static boolean f18855s = true;

    private static boolean f18856t = true;

    private static boolean f18857u = true;

    public static com.apm.insight.nativecrash.b a() {
        if (f18842f == null) {
            f18842f = g.a(f18837a);
        }
        return f18842f;
    }

    public static a b() {
        return f18844h;
    }

    public static g c() {
        if (f18846j == null) {
            synchronized (e.class) {
                f18846j = new g();
            }
        }
        return f18846j;
    }

    public static void d(boolean z10) {
        f18855s = z10;
    }

    public static String e() {
        return f() + '_' + Long.toHexString(new Random().nextLong()) + "G";
    }

    public static String f() {
        if (f18847k == null) {
            synchronized (f18848l) {
                try {
                    if (f18847k == null) {
                        f18847k = Long.toHexString(new Random().nextLong()) + "U";
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f18847k;
    }

    public static Context g() {
        return f18837a;
    }

    public static Application h() {
        return f18838b;
    }

    public static ConfigManager i() {
        return f18843g;
    }

    public static long j() {
        return f18839c;
    }

    public static String k() {
        return f18840d;
    }

    public static void l() {
        f18851o = 1;
    }

    public static int m() {
        return f18851o;
    }

    public static boolean n() {
        return f18841e;
    }

    static void o() {
        f18841e = true;
    }

    public static ConcurrentHashMap<Integer, String> p() {
        return f18845i;
    }

    public static int q() {
        return f18849m;
    }

    public static String r() {
        return f18850n;
    }

    public static boolean s() {
        return f18852p;
    }

    public static boolean t() {
        return f18853q;
    }

    public static boolean u() {
        return f18854r;
    }

    public static boolean v() {
        return f18855s;
    }

    public static boolean w() {
        return f18857u;
    }

    public static boolean x() {
        return f18856t;
    }

    static void b(int i10, String str) {
        f18849m = i10;
        f18850n = str;
    }

    public static boolean d() {
        if (!f18843g.isDebugMode()) {
            return false;
        }
        Object obj = a().a().get("channel");
        return (obj == null ? TmcConstants.ROUTE_UNKNOWN : String.valueOf(obj)).contains("local_test");
    }

    public static void e(boolean z10) {
        f18857u = z10;
    }

    public static void a(com.apm.insight.nativecrash.b bVar) {
        f18842f = bVar;
    }

    public static void b(boolean z10) {
        f18853q = z10;
    }

    public static void a(Application application) {
        if (application != null) {
            f18838b = application;
        }
    }

    public static void a(Application application, Context context) {
        if (f18838b == null) {
            f18839c = System.currentTimeMillis();
            f18837a = context;
            f18838b = application;
            f18847k = Long.toHexString(new Random().nextLong()) + "G";
        }
    }

    public static void c(boolean z10) {
        f18854r = z10;
    }

    public static void f(boolean z10) {
        f18856t = z10;
    }

    static void a(Application application, Context context, ICommonParams iCommonParams) {
        a(application, context);
        f18842f = new com.apm.insight.nativecrash.b(f18837a, iCommonParams, a());
    }

    public static String a(long j10, CrashType crashType, boolean z10, boolean z11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(j10);
        sb2.append("_");
        sb2.append(crashType.getName());
        sb2.append('_');
        sb2.append(f());
        sb2.append('_');
        sb2.append(z10 ? "oom_" : "normal_");
        sb2.append(f18839c);
        sb2.append('_');
        sb2.append(z11 ? "ignore_" : "normal_");
        sb2.append(Long.toHexString(new Random().nextLong()));
        sb2.append("G");
        return sb2.toString();
    }

    static void a(String str) {
        f18840d = str;
    }

    static void a(int i10, String str) {
        if (f18845i == null) {
            synchronized (e.class) {
                try {
                    if (f18845i == null) {
                        f18845i = new ConcurrentHashMap<>();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        f18845i.put(Integer.valueOf(i10), str);
    }

    public static void a(boolean z10) {
        f18852p = z10;
    }
}
