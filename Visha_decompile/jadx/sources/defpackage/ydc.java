package defpackage;

import android.text.TextUtils;
import com.blankj.utilcode.util.b;

public abstract class ydc {
    public static boolean a = false;
    public static boolean b = false;
    public static boolean c = false;
    public static int d = -1;
    public static String e;

    public static int a() {
        if (d == -1) {
            d = b.b();
        }
        return d;
    }

    public static String b() {
        if (TextUtils.isEmpty(e)) {
            e = b.d();
        }
        return e;
    }

    public static void c(boolean z) {
        b = z;
    }

    public static void d(boolean z) {
        a = z;
    }

    public static boolean e() {
        return b;
    }

    public static boolean f() {
        return c;
    }

    public static boolean g() {
        return a;
    }

    public static void h(boolean z) {
        c = z;
    }
}
