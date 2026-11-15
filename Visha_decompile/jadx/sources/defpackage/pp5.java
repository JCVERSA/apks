package defpackage;

import android.util.Log;
import com.yandex.div.logging.Severity;

public abstract class pp5 {
    public static volatile boolean a = false;
    public static volatile Severity b = Severity.VERBOSE;

    public static void a(String str, String str2) {
        if (d(Severity.DEBUG)) {
            Log.d(str, str2);
        }
    }

    public static void b(String str, String str2) {
        if (d(Severity.ERROR)) {
            Log.e(str, str2);
        }
    }

    public static void c(String str, String str2, Throwable th) {
        if (d(Severity.ERROR)) {
            Log.e(str, str2, th);
        }
    }

    public static boolean d(Severity severity) {
        if (e()) {
            return b.isAtLeast(severity);
        }
        return false;
    }

    public static boolean e() {
        return a;
    }

    public static void f(String str, String str2) {
        if (d(Severity.WARNING)) {
            Log.w(str, str2);
        }
    }
}
