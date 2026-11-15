package defpackage;

import android.os.Looper;
import com.yandex.div.internal.ComparisonFailure;

public abstract class xi {
    public static yi a = new yi() {
        @Override
        public final void a(AssertionError assertionError) {
            xi.p(assertionError);
        }
    };
    public static volatile boolean b = false;

    public static void b(String str, Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return;
        }
        if (obj == null || !obj.equals(obj2)) {
            if (!(obj instanceof String) || !(obj2 instanceof String)) {
                k(str, obj, obj2);
                return;
            }
            if (str == null) {
                str = "";
            }
            q(new ComparisonFailure(str, (String) obj, (String) obj2));
        }
    }

    public static void c() {
        f("Code run not in main thread!", Looper.getMainLooper(), Looper.myLooper());
    }

    public static void d(Object obj) {
        e(null, obj);
    }

    public static void e(String str, Object obj) {
        g(str, obj == null);
    }

    public static void f(String str, Object obj, Object obj2) {
        if (obj == obj2) {
            return;
        }
        l(str, obj, obj2);
    }

    public static void g(String str, boolean z) {
        if (z) {
            return;
        }
        i(str);
    }

    public static void h(boolean z) {
        g(null, z);
    }

    public static void i(String str) {
        if (b) {
            if (str == null) {
                str = "";
            }
            q(new AssertionError(str));
        }
    }

    public static void j(String str, Throwable th) {
        if (b) {
            AssertionError assertionError = new AssertionError(str);
            assertionError.initCause(th);
            q(assertionError);
        }
    }

    public static void k(String str, Object obj, Object obj2) {
        i(m(str, obj, obj2));
    }

    public static void l(String str, Object obj, Object obj2) {
        String str2;
        if (str != null) {
            str2 = str + " ";
        } else {
            str2 = "";
        }
        i(str2 + "expected same:<" + obj + "> was not:<" + obj2 + ">");
    }

    public static String m(String str, Object obj, Object obj2) {
        String str2 = "";
        if (str != null && !str.equals("")) {
            str2 = str + " ";
        }
        String strValueOf = String.valueOf(obj);
        String strValueOf2 = String.valueOf(obj2);
        if (strValueOf.equals(strValueOf2)) {
            return str2 + "expected: " + n(obj, strValueOf) + " but was: " + n(obj2, strValueOf2);
        }
        return str2 + "expected:<" + strValueOf + "> but was:<" + strValueOf2 + ">";
    }

    public static String n(Object obj, String str) {
        return (obj == null ? "null" : obj.getClass().getName()) + "<" + str + ">";
    }

    public static boolean o() {
        return b;
    }

    public static void p(AssertionError assertionError) {
        throw assertionError;
    }

    public static void q(AssertionError assertionError) {
        if (o()) {
            a.a(assertionError);
        }
    }
}
