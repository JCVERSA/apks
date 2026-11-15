package defpackage;

public final class fia {
    public static final fia a = new fia();
    public static final ThreadLocal b = hia.a(new y7a("ThreadLocalEventLoop"));

    public final yd3 a() {
        return (yd3) b.get();
    }

    public final yd3 b() {
        ThreadLocal threadLocal = b;
        yd3 yd3Var = (yd3) threadLocal.get();
        if (yd3Var != null) {
            return yd3Var;
        }
        yd3 yd3VarA = zd3.a();
        threadLocal.set(yd3VarA);
        return yd3VarA;
    }

    public final void c() {
        b.set(null);
    }

    public final void d(yd3 yd3Var) {
        b.set(yd3Var);
    }
}
