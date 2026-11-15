package defpackage;

import android.os.Build;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.BuildConfig;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class md8 {
    public static String a = null;
    public static String b = null;
    public static int c = 0;
    public static int d = -1;
    public static String e = null;
    public static int f = -1;
    public static int g = -1;
    public static int h = -1;
    public static String i;
    public static String j;
    public static String k;
    public static String l;
    public static String m;
    public static int n;
    public static String o;
    public static String p;
    public static String q;
    public static final AtomicInteger r = new AtomicInteger(0);
    public static final AtomicInteger s = new AtomicInteger(0);

    public static String a() {
        if (TextUtils.isEmpty(k)) {
            k = Build.BRAND;
        }
        return k;
    }

    public static String b() {
        if (TextUtils.isEmpty(q)) {
            q = DeviceUtil.d();
        }
        return q;
    }

    public static String c() {
        if (TextUtils.isEmpty(e)) {
            e = Build.MANUFACTURER;
        }
        return e;
    }

    public static String d() {
        if (DeviceUtil.b(i, r, 1)) {
            String strM = DeviceUtil.m();
            if (!TextUtils.isEmpty(strM) && strM.length() >= 3) {
                i = strM.substring(0, 3);
            }
        }
        return i;
    }

    public static String e() {
        if (DeviceUtil.b(j, s, 1)) {
            String strM = DeviceUtil.m();
            if (!TextUtils.isEmpty(strM) && strM.length() >= 3) {
                j = strM.substring(3);
            }
        }
        return j;
    }

    public static String f() {
        if (TextUtils.isEmpty(l)) {
            l = Build.MODEL;
        }
        return l;
    }

    public static int g() {
        if (n == 0) {
            n = DeviceUtil.l();
        }
        return n;
    }

    public static String h() {
        if (TextUtils.isEmpty(m)) {
            m = DeviceUtil.n();
        }
        return m;
    }

    public static int i() {
        if (h == -1) {
            h = (int) hm4.b();
        }
        return h;
    }

    public static int j() {
        if (g == -1) {
            try {
                g = hm4.g();
            } catch (Throwable unused) {
            }
        }
        return g;
    }

    public static int k() {
        if (f == -1) {
            try {
                f = hm4.h();
            } catch (Throwable unused) {
            }
        }
        return f;
    }

    public static String l() {
        if (TextUtils.isEmpty(b)) {
            b = BuildConfig.VERSION_NAME;
        }
        return b;
    }

    public static int m() {
        if (c == 0) {
            c = 366100;
        }
        return c;
    }

    public static String n() {
        if (TextUtils.isEmpty(a)) {
            a = DeviceUtil.p();
        }
        return a;
    }

    public static int o() {
        if (d == -1) {
            d = DeviceUtil.r() ? 2 : 1;
        }
        return d;
    }

    public static String p() {
        if (TextUtils.isEmpty(p)) {
            p = String.valueOf(ul4.e());
        }
        return p;
    }

    public static String q() {
        if (TextUtils.isEmpty(o)) {
            o = String.valueOf(ul4.f());
        }
        return o;
    }
}
