package defpackage;

import com.transsion.core.log.ObjectLogUtils;

public class gt4 implements up5 {
    public static gt4 d;
    public boolean a = false;
    public int b = 2;
    public ObjectLogUtils c = new ObjectLogUtils.a().o(true).r(true).q(false).m();

    public static gt4 b() {
        if (d == null) {
            synchronized (gt4.class) {
                try {
                    if (d == null) {
                        d = new gt4();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    @Override
    public void a(boolean z) {
        if (z != this.a) {
            this.a = z;
        }
    }

    public boolean c() {
        return this.a;
    }

    @Override
    public void d(String str, String str2) {
        f(2, str, str2);
    }

    @Override
    public void e(String str, String str2) {
        f(6, str, str2);
    }

    public void f(int i, String str, String str2) {
        g(i, str, str2, null);
    }

    public void g(int i, String str, String str2, Throwable th) {
        if (c() && h(i)) {
            if (i == 2) {
                this.c.y(str, str2, th);
                return;
            }
            if (i == 3) {
                this.c.h(str, str2, th);
                return;
            }
            if (i == 4) {
                this.c.o(str, str2, th);
            } else if (i == 5) {
                this.c.A(str, str2, th);
            } else {
                if (i != 6) {
                    return;
                }
                this.c.j(str, str2, th);
            }
        }
    }

    public boolean h(int i) {
        return i >= this.b;
    }

    @Override
    public void v(String str, String str2) {
        f(2, str, str2);
    }

    @Override
    public void e(String str, String str2, Throwable th) {
        g(6, str, str2, th);
    }
}
