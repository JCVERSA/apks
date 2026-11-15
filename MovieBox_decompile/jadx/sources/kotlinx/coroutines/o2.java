package kotlinx.coroutines;

public final class o2 {

    public static final o2 f64935a = new o2();

    private static final ThreadLocal f64936b = kotlinx.coroutines.internal.j0.a(new kotlinx.coroutines.internal.z("ThreadLocalEventLoop"));

    private o2() {
    }

    public final e1 a() {
        return (e1) f64936b.get();
    }

    public final e1 b() {
        ThreadLocal threadLocal = f64936b;
        e1 e1Var = (e1) threadLocal.get();
        if (e1Var != null) {
            return e1Var;
        }
        e1 e1VarA = g1.a();
        threadLocal.set(e1VarA);
        return e1VarA;
    }

    public final void c() {
        f64936b.set(null);
    }

    public final void d(e1 e1Var) {
        f64936b.set(e1Var);
    }
}
