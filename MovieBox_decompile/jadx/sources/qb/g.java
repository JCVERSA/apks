package qb;

import android.util.Log;

public class g {

    static final g f69614c = new g("FirebaseCrashlytics");

    private final String f69615a;

    private int f69616b = 4;

    public g(String str) {
        this.f69615a = str;
    }

    private boolean a(int i10) {
        return this.f69616b <= i10 || Log.isLoggable(this.f69615a, i10);
    }

    public static g f() {
        return f69614c;
    }

    public void b(String str) {
        c(str, null);
    }

    public void c(String str, Throwable th2) {
        a(3);
    }

    public void d(String str) {
        e(str, null);
    }

    public void e(String str, Throwable th2) {
        if (a(6)) {
            Log.e(this.f69615a, str, th2);
        }
    }

    public void g(String str) {
        h(str, null);
    }

    public void h(String str, Throwable th2) {
        a(4);
    }

    public void i(String str) {
        j(str, null);
    }

    public void j(String str, Throwable th2) {
        if (a(2)) {
            Log.v(this.f69615a, str, th2);
        }
    }

    public void k(String str) {
        l(str, null);
    }

    public void l(String str, Throwable th2) {
        if (a(5)) {
            Log.w(this.f69615a, str, th2);
        }
    }
}
