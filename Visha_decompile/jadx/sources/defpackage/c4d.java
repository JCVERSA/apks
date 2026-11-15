package defpackage;

import android.util.Log;
import com.transsion.core.log.ObjectLogUtils;

public abstract class c4d {
    public static final ObjectLogUtils a = new ObjectLogUtils.a().p("Athena").q(true).n(false).m();

    public static void a(Exception exc) {
        d(Log.getStackTraceString(exc));
    }

    public static void b(String str) {
        String str2 = "%s";
        if (str != null && str.length() != 0) {
            str2 = String.format("%s", str);
        }
        ObjectLogUtils objectLogUtils = a;
        objectLogUtils.x(1);
        objectLogUtils.g(str2);
    }

    public static void c(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(str, objArr);
        }
        ObjectLogUtils objectLogUtils = a;
        objectLogUtils.x(1);
        objectLogUtils.g(str);
    }

    public static void d(String str) {
        String str2 = "%s";
        if (str != null && str.length() != 0) {
            str2 = String.format("%s", str);
        }
        ObjectLogUtils objectLogUtils = a;
        objectLogUtils.x(1);
        objectLogUtils.i(str2);
    }

    public static void e(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(str, objArr);
        }
        ObjectLogUtils objectLogUtils = a;
        objectLogUtils.x(1);
        objectLogUtils.i(str);
    }

    public static void f(String str) {
        String str2 = "%s";
        if (str != null && str.length() != 0) {
            str2 = String.format("%s", str);
        }
        ObjectLogUtils objectLogUtils = a;
        objectLogUtils.x(1);
        objectLogUtils.n(str2);
    }

    public static void g(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(str, objArr);
        }
        ObjectLogUtils objectLogUtils = a;
        objectLogUtils.x(1);
        objectLogUtils.n(str);
    }
}
