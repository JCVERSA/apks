package defpackage;

import com.dianping.logan.CLoganProtocol;

public class gq5 implements hq5 {
    public static gq5 d;
    public hq5 a;
    public boolean b;
    public ef7 c;

    public static gq5 g() {
        if (d == null) {
            synchronized (gq5.class) {
                d = new gq5();
            }
        }
        return d;
    }

    @Override
    public void a(ef7 ef7Var) {
        this.c = ef7Var;
    }

    @Override
    public void b() {
        hq5 hq5Var = this.a;
        if (hq5Var != null) {
            hq5Var.b();
        }
    }

    @Override
    public void c(String str, String str2, int i, String str3, String str4) {
        if (this.b) {
            return;
        }
        if (!CLoganProtocol.g()) {
            this.a = null;
            return;
        }
        CLoganProtocol cLoganProtocolI = CLoganProtocol.i();
        this.a = cLoganProtocolI;
        cLoganProtocolI.a(this.c);
        this.a.c(str, str2, i, str3, str4);
        this.b = true;
    }

    @Override
    public void d(int i, String str, long j, String str2, long j2, boolean z) {
        hq5 hq5Var = this.a;
        if (hq5Var != null) {
            hq5Var.d(i, str, j, str2, j2, z);
        }
    }

    @Override
    public void e(String str) {
        hq5 hq5Var = this.a;
        if (hq5Var != null) {
            hq5Var.e(str);
        }
    }

    @Override
    public void f(boolean z) {
        hq5 hq5Var = this.a;
        if (hq5Var != null) {
            hq5Var.f(z);
        }
    }
}
