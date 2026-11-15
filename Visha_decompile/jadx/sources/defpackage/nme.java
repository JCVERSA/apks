package defpackage;

import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import java.util.Locale;

public abstract class nme {
    public static final String a = "Volley";
    public static final boolean b = Log.isLoggable("Volley", 2);
    public static final String c = nme.class.getName();

    public static void a(String str, Object... objArr) {
        Log.d(a, e(str, objArr));
    }

    public static void b(String str, Object... objArr) {
        Log.e(a, e(str, objArr));
    }

    public static void c(Throwable th, String str, Object... objArr) {
        Log.e(a, e(str, objArr), th);
    }

    public static void d(String str, Object... objArr) {
        if (b) {
            Log.v(a, e(str, objArr));
        }
    }

    public static String e(String str, Object... objArr) {
        String str2;
        String str3 = String.format(Locale.US, str, objArr);
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        for (int i = 2; i < stackTrace.length; i++) {
            if (!stackTrace[i].getClassName().equals(c)) {
                String className = stackTrace[i].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                str2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1) + Consts.DOT + stackTrace[i].getMethodName();
                return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str3);
            }
        }
        str2 = "<unknown>";
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str3);
    }
}
