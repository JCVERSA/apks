package e4;

import android.os.Build;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class a {

    private static long f59447a;

    private static Method f59448b;

    public static void a(String str) {
        b.a(f(str));
    }

    public static void b() {
        b.b();
    }

    private static void c(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (!(cause instanceof RuntimeException)) {
                throw new RuntimeException(cause);
            }
            throw ((RuntimeException) cause);
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    public static boolean d() {
        return Build.VERSION.SDK_INT >= 29 ? c.a() : e();
    }

    private static boolean e() {
        try {
            if (f59448b == null) {
                f59447a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f59448b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f59448b.invoke(null, Long.valueOf(f59447a))).booleanValue();
        } catch (Exception e10) {
            c("isTagEnabled", e10);
            return false;
        }
    }

    private static String f(String str) {
        return str.length() <= 127 ? str : str.substring(0, 127);
    }
}
