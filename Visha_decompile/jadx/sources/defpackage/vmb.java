package defpackage;

import android.util.Log;

public abstract class vmb {
    public static volatile hv4 a;
    public static final Object b = new Object();

    public static void a(String str, String str2) {
        h().a(str, 3, str2);
    }

    public static void b(String str, String str2, Throwable th) {
        h().b(str, 3, str2, th);
    }

    public static void c(String str, String str2) {
        h().a(str, 6, str2);
    }

    public static void d(String str, String str2, Throwable th) {
        h().b(str, 6, str2, th);
    }

    public static void e(String str, String str2) {
        h().a(str, 4, str2);
    }

    public static void f() {
        g(new qp5.a().d());
    }

    public static void g(qp5 qp5Var) {
        synchronized (b) {
            try {
                if (a != null) {
                    Log.w("VLog", "VLog is already initialized, do not initialize again");
                } else {
                    a = new i22(qp5Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static hv4 h() {
        hv4 hv4Var;
        hv4 hv4Var2 = a;
        if (hv4Var2 != null) {
            return hv4Var2;
        }
        synchronized (b) {
            try {
                if (a == null) {
                    a = new i22(new qp5.a().d());
                }
                hv4Var = a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return hv4Var;
    }

    public static void i(String str, String str2) {
        h().a(str, 5, str2);
    }

    public static void j(String str, String str2, Throwable th) {
        h().b(str, 5, str2, th);
    }
}
