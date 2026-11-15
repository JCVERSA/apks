package defpackage;

import android.os.Build;
import android.util.Log;
import com.transsion.audiotagger.tag.reference.Languages;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.security.InvalidParameterException;

public abstract class bq5 {
    public static String a(String str, String str2, String[] strArr, Object[] objArr) {
        StringBuilder sb = new StringBuilder(80);
        sb.append("17.0.0.7-alpha30");
        sb.append(" ");
        if (str != null) {
            sb.append(str);
        }
        if (str != null && str2 != null) {
            sb.append("_");
            sb.append(str2);
        } else if (str2 != null) {
            sb.append(str2);
        }
        if (strArr == null || objArr == null) {
            return sb.toString();
        }
        if (strArr.length != objArr.length) {
            throw new InvalidParameterException("Length of names and values array is not equal");
        }
        sb.append(" { ");
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (i > 0) {
                sb.append(StringUtils.COMMA);
            }
            sb.append(strArr[i]);
            sb.append("=");
            sb.append(objArr[i]);
        }
        sb.append(" }");
        return sb.toString();
    }

    public static void b(String str) {
        c(null, str);
    }

    public static void c(String str, String str2) {
        d(str, str2, null);
    }

    public static void d(String str, String str2, Throwable th) {
        e(str, str2, null, null, th);
    }

    public static void e(String str, String str2, String[] strArr, Object[] objArr, Throwable th) {
        if (n(3)) {
            Log.d("os_widgets", a(str, str2, strArr, objArr), th);
        }
    }

    public static void f(String str) {
        g(null, str);
    }

    public static void g(String str, String str2) {
        h(str, str2, null);
    }

    public static void h(String str, String str2, Throwable th) {
        i(str, str2, null, null, th);
    }

    public static void i(String str, String str2, String[] strArr, Object[] objArr, Throwable th) {
        if (n(6)) {
            Log.e("os_widgets", a(str, str2, strArr, objArr), th);
        }
    }

    public static void j(String str, String str2) {
        k(str, str2, null);
    }

    public static void k(String str, String str2, Throwable th) {
        l(str, str2, null, null, th);
    }

    public static void l(String str, String str2, String[] strArr, Object[] objArr, Throwable th) {
        if (n(4)) {
            Log.i("os_widgets", a(str, str2, strArr, objArr), th);
        }
    }

    public static boolean m() {
        String str = Build.TYPE;
        return "userdebug".equals(str) || Languages.DEFAULT_ID.equals(str);
    }

    public static boolean n(int i) {
        return m() || Log.isLoggable("os_widgets", i);
    }

    public static void o(String str) {
        p(null, str);
    }

    public static void p(String str, String str2) {
        q(str, str2, null);
    }

    public static void q(String str, String str2, Throwable th) {
        r(str, str2, null, null, th);
    }

    public static void r(String str, String str2, String[] strArr, Object[] objArr, Throwable th) {
        if (n(2)) {
            Log.v("os_widgets", a(str, str2, strArr, objArr), th);
        }
    }

    public static void s(String str, String str2) {
        t(str, str2, null);
    }

    public static void t(String str, String str2, Throwable th) {
        u(str, str2, null, null, null);
    }

    public static void u(String str, String str2, String[] strArr, Object[] objArr, Throwable th) {
        if (n(5)) {
            Log.w("os_widgets", a(str, str2, strArr, objArr), th);
        }
    }
}
