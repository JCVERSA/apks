package jl;

import com.transsion.core.log.ObjectLogUtils;

public class b implements c {

    private static b f63171d;

    boolean f63172a = false;

    int f63173b = 2;

    private ObjectLogUtils f63174c = new ObjectLogUtils.a().o(true).r(true).q(false).m();

    private b() {
    }

    public static b b() {
        if (f63171d == null) {
            synchronized (b.class) {
                try {
                    if (f63171d == null) {
                        f63171d = new b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f63171d;
    }

    @Override
    public void a(boolean z10) {
        if (z10 != this.f63172a) {
            this.f63172a = z10;
        }
    }

    public boolean c() {
        return this.f63172a;
    }

    @Override
    public void d(String str, String str2) {
        f(2, str, str2);
    }

    @Override
    public void e(String str, String str2) {
        f(6, str, str2);
    }

    public void f(int i10, String str, String str2) {
        g(i10, str, str2, null);
    }

    public void g(int i10, String str, String str2, Throwable th2) {
        if (c() && h(i10)) {
            if (i10 == 2) {
                this.f63174c.y(str, str2, th2);
                return;
            }
            if (i10 == 3) {
                this.f63174c.h(str, str2, th2);
                return;
            }
            if (i10 == 4) {
                this.f63174c.o(str, str2, th2);
            } else if (i10 == 5) {
                this.f63174c.A(str, str2, th2);
            } else {
                if (i10 != 6) {
                    return;
                }
                this.f63174c.j(str, str2, th2);
            }
        }
    }

    public boolean h(int i10) {
        return i10 >= this.f63173b;
    }

    @Override
    public void v(String str, String str2) {
        f(2, str, str2);
    }

    @Override
    public void e(String str, String str2, Throwable th2) {
        g(6, str, str2, th2);
    }
}
