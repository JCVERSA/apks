package uc;

import java.util.Locale;

public class a {

    private static volatile a f73038c;

    private final c f73039a;

    private boolean f73040b;

    public a(c cVar) {
        this.f73040b = false;
        this.f73039a = cVar == null ? c.c() : cVar;
    }

    public static a e() {
        if (f73038c == null) {
            synchronized (a.class) {
                try {
                    if (f73038c == null) {
                        f73038c = new a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f73038c;
    }

    public void a(String str) {
        if (this.f73040b) {
            this.f73039a.a(str);
        }
    }

    public void b(String str, Object... objArr) {
        if (this.f73040b) {
            this.f73039a.a(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    public void c(String str) {
        if (this.f73040b) {
            this.f73039a.b(str);
        }
    }

    public void d(String str, Object... objArr) {
        if (this.f73040b) {
            this.f73039a.b(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    public void f(String str) {
        if (this.f73040b) {
            this.f73039a.d(str);
        }
    }

    public void g(String str, Object... objArr) {
        if (this.f73040b) {
            this.f73039a.d(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    public boolean h() {
        return this.f73040b;
    }

    public void i(boolean z10) {
        this.f73040b = z10;
    }

    public void j(String str) {
        if (this.f73040b) {
            this.f73039a.e(str);
        }
    }

    public void k(String str, Object... objArr) {
        if (this.f73040b) {
            this.f73039a.e(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    private a() {
        this(null);
    }
}
