package kotlinx.coroutines;

public abstract class q0 {

    private static final boolean f64939a = kotlinx.coroutines.internal.a0.f("kotlinx.coroutines.main.delay", false);

    private static final t0 f64940b = b();

    public static final t0 a() {
        return f64940b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final t0 b() {
        if (!f64939a) {
            return DefaultExecutor.INSTANCE;
        }
        a2 a2VarC = y0.c();
        return (kotlinx.coroutines.internal.p.c(a2VarC) || !(a2VarC instanceof t0)) ? DefaultExecutor.INSTANCE : (t0) a2VarC;
    }
}
