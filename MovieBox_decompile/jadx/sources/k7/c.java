package k7;

import android.os.Build;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.h;
import com.hisavana.common.BuildConfig;
import java.util.concurrent.atomic.AtomicInteger;

public class c {

    private static String f63770a = null;

    private static String f63771b = null;

    private static int f63772c = 0;

    private static int f63773d = -1;

    private static String f63774e = null;

    private static int f63775f = -1;

    private static int f63776g = -1;

    private static int f63777h = -1;

    private static String f63778i;

    private static String f63779j;

    private static String f63780k;

    private static String f63781l;

    private static String f63782m;

    private static int f63783n;

    private static String f63784o;

    private static String f63785p;

    private static String f63786q;

    private static final AtomicInteger f63787r = new AtomicInteger(0);

    private static final AtomicInteger f63788s = new AtomicInteger(0);

    public static String a() {
        if (TextUtils.isEmpty(f63780k)) {
            f63780k = Build.BRAND;
        }
        return f63780k;
    }

    public static String b() {
        if (TextUtils.isEmpty(f63786q)) {
            f63786q = DeviceUtil.c();
        }
        return f63786q;
    }

    public static String c() {
        if (TextUtils.isEmpty(f63774e)) {
            f63774e = Build.MANUFACTURER;
        }
        return f63774e;
    }

    public static String d() {
        if (DeviceUtil.b(f63778i, f63787r, 1)) {
            String strL = DeviceUtil.l();
            if (!TextUtils.isEmpty(strL) && strL.length() >= 3) {
                f63778i = strL.substring(0, 3);
            }
        }
        return f63778i;
    }

    public static String e() {
        if (DeviceUtil.b(f63779j, f63788s, 1)) {
            String strL = DeviceUtil.l();
            if (!TextUtils.isEmpty(strL) && strL.length() >= 3) {
                f63779j = strL.substring(3);
            }
        }
        return f63779j;
    }

    public static String f() {
        if (TextUtils.isEmpty(f63781l)) {
            f63781l = Build.MODEL;
        }
        return f63781l;
    }

    public static int g() {
        if (f63783n == 0) {
            f63783n = DeviceUtil.k();
        }
        return f63783n;
    }

    public static String h() {
        if (TextUtils.isEmpty(f63782m)) {
            f63782m = DeviceUtil.m();
        }
        return f63782m;
    }

    public static int i() {
        if (f63777h == -1) {
            f63777h = (int) h.b();
        }
        return f63777h;
    }

    public static int j() {
        if (f63776g == -1) {
            try {
                f63776g = h.f();
            } catch (Throwable unused) {
            }
        }
        return f63776g;
    }

    public static int k() {
        if (f63775f == -1) {
            try {
                f63775f = h.g();
            } catch (Throwable unused) {
            }
        }
        return f63775f;
    }

    public static String l() {
        if (TextUtils.isEmpty(f63771b)) {
            f63771b = BuildConfig.VERSION_NAME;
        }
        return f63771b;
    }

    public static int m() {
        if (f63772c == 0) {
            f63772c = 359100;
        }
        return f63772c;
    }

    public static String n() {
        if (TextUtils.isEmpty(f63770a)) {
            f63770a = DeviceUtil.o();
        }
        return f63770a;
    }

    public static int o() {
        if (f63773d == -1) {
            f63773d = DeviceUtil.q() ? 2 : 1;
        }
        return f63773d;
    }

    public static String p() {
        if (TextUtils.isEmpty(f63785p)) {
            f63785p = String.valueOf(com.cloud.sdk.commonutil.util.e.e());
        }
        return f63785p;
    }

    public static String q() {
        if (TextUtils.isEmpty(f63784o)) {
            f63784o = String.valueOf(com.cloud.sdk.commonutil.util.e.f());
        }
        return f63784o;
    }
}
