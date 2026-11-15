package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.UninitializedPropertyAccessException;

public abstract class y45 {

    public static class a {
    }

    public static void A(String str) {
        throw ((UninitializedPropertyAccessException) q(new UninitializedPropertyAccessException(str)));
    }

    public static void B(String str) {
        A("lateinit property " + str + " has not been initialized");
    }

    public static boolean a(Double d, double d2) {
        return d != null && d.doubleValue() == d2;
    }

    public static boolean b(Double d, Double d2) {
        if (d == null) {
            if (d2 != null) {
                return false;
            }
        } else if (d2 == null || d.doubleValue() != d2.doubleValue()) {
            return false;
        }
        return true;
    }

    public static boolean c(Float f, float f2) {
        return f != null && f.floatValue() == f2;
    }

    public static boolean d(Float f, Float f2) {
        if (f == null) {
            if (f2 != null) {
                return false;
            }
        } else if (f2 == null || f.floatValue() != f2.floatValue()) {
            return false;
        }
        return true;
    }

    public static boolean e(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static void f(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((IllegalStateException) q(new IllegalStateException(str + " must not be null")));
    }

    public static void g(Object obj) {
        if (obj == null) {
            t();
        }
    }

    public static void h(Object obj, String str) {
        if (obj == null) {
            u(str);
        }
    }

    public static void i(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((NullPointerException) q(new NullPointerException(str + " must not be null")));
    }

    public static void j(Object obj, String str) {
        if (obj == null) {
            x(str);
        }
    }

    public static void k(Object obj, String str) {
        if (obj == null) {
            w(str);
        }
    }

    public static int l(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    public static int m(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    public static String n(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String name = y45.class.getName();
        int i = 0;
        while (!stackTrace[i].getClassName().equals(name)) {
            i++;
        }
        while (stackTrace[i].getClassName().equals(name)) {
            i++;
        }
        StackTraceElement stackTraceElement = stackTrace[i];
        return "Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + Consts.DOT + stackTraceElement.getMethodName() + ", parameter " + str;
    }

    public static void o() {
        y();
    }

    public static void p(int i, String str) {
        y();
    }

    public static Throwable q(Throwable th) {
        return r(th, y45.class.getName());
    }

    public static Throwable r(Throwable th, String str) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        th.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
        return th;
    }

    public static String s(String str, Object obj) {
        return str + obj;
    }

    public static void t() {
        throw ((NullPointerException) q(new NullPointerException()));
    }

    public static void u(String str) {
        throw ((NullPointerException) q(new NullPointerException(str)));
    }

    public static void v() {
        throw ((KotlinNullPointerException) q(new KotlinNullPointerException()));
    }

    public static void w(String str) {
        throw ((IllegalArgumentException) q(new IllegalArgumentException(n(str))));
    }

    public static void x(String str) {
        throw ((NullPointerException) q(new NullPointerException(n(str))));
    }

    public static void y() {
        z("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void z(String str) {
        throw new UnsupportedOperationException(str);
    }
}
