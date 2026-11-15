package defpackage;

public class rs7 implements pj8 {
    public static final c72 c = new c72() {
        @Override
        public final void a(pj8 pj8Var) {
            rs7.d(pj8Var);
        }
    };
    public static final pj8 d = new pj8() {
        @Override
        public final Object get() {
            return rs7.e();
        }
    };
    public c72 a;
    public volatile pj8 b;

    public rs7(c72 c72Var, pj8 pj8Var) {
        this.a = c72Var;
        this.b = pj8Var;
    }

    public static rs7 c() {
        return new rs7(c, d);
    }

    public static void d(pj8 pj8Var) {
    }

    public static Object e() {
        return null;
    }

    public void f(pj8 pj8Var) {
        c72 c72Var;
        if (this.b != d) {
            throw new IllegalStateException("provide() can be called only once.");
        }
        synchronized (this) {
            c72Var = this.a;
            this.a = null;
            this.b = pj8Var;
        }
        c72Var.a(pj8Var);
    }

    @Override
    public Object get() {
        return this.b.get();
    }
}
