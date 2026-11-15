package kotlin.jvm.internal;

import java.util.Arrays;
import kotlin.SinceKotlin;
import kotlin.UninitializedPropertyAccessException;

public class Intrinsics {

    @SinceKotlin
    public static class Kotlin {
        private Kotlin() {
        }
    }

    private Intrinsics() {
    }

    public static boolean a(Double d10, double d11) {
        return d10 != null && d10.doubleValue() == d11;
    }

    public static boolean b(Float f10, float f11) {
        return f10 != null && f10.floatValue() == f11;
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static void d(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((IllegalStateException) o(new IllegalStateException(str + " must not be null")));
    }

    public static void e(Object obj) {
        if (obj == null) {
            r();
        }
    }

    public static void f(Object obj, String str) {
        if (obj == null) {
            s(str);
        }
    }

    public static void g(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((NullPointerException) o(new NullPointerException(str + " must not be null")));
    }

    public static void h(Object obj, String str) {
        if (obj == null) {
            u(str);
        }
    }

    public static void i(Object obj, String str) {
        if (obj == null) {
            t(str);
        }
    }

    public static int j(int i10, int i11) {
        if (i10 < i11) {
            return -1;
        }
        return i10 == i11 ? 0 : 1;
    }

    public static int k(long j10, long j11) {
        if (j10 < j11) {
            return -1;
        }
        return j10 == j11 ? 0 : 1;
    }

    private static String l(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String name = Intrinsics.class.getName();
        int i10 = 0;
        while (!stackTrace[i10].getClassName().equals(name)) {
            i10++;
        }
        while (stackTrace[i10].getClassName().equals(name)) {
            i10++;
        }
        StackTraceElement stackTraceElement = stackTrace[i10];
        return "Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str;
    }

    public static void m() {
        v();
    }

    public static void n(int i10, String str) {
        v();
    }

    private static Throwable o(Throwable th2) {
        return p(th2, Intrinsics.class.getName());
    }

    static Throwable p(Throwable th2, String str) {
        StackTraceElement[] stackTrace = th2.getStackTrace();
        int length = stackTrace.length;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            if (str.equals(stackTrace[i11].getClassName())) {
                i10 = i11;
            }
        }
        th2.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i10 + 1, length));
        return th2;
    }

    public static String q(String str, Object obj) {
        return str + obj;
    }

    public static void r() {
        throw ((NullPointerException) o(new NullPointerException()));
    }

    public static void s(String str) {
        throw ((NullPointerException) o(new NullPointerException(str)));
    }

    private static void t(String str) {
        throw ((IllegalArgumentException) o(new IllegalArgumentException(l(str))));
    }

    private static void u(String str) {
        throw ((NullPointerException) o(new NullPointerException(l(str))));
    }

    public static void v() {
        w("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void w(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static void x(String str) {
        throw ((UninitializedPropertyAccessException) o(new UninitializedPropertyAccessException(str)));
    }

    public static void y(String str) {
        x("lateinit property " + str + " has not been initialized");
    }
}
