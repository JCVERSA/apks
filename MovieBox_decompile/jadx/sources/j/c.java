package j;

import java.util.concurrent.Executor;

public class c extends e {

    private static volatile c f62837c;

    private static final Executor f62838d = new Executor() {
        @Override
        public final void execute(Runnable runnable) {
            c.i(runnable);
        }
    };

    private static final Executor f62839e = new Executor() {
        @Override
        public final void execute(Runnable runnable) {
            c.j(runnable);
        }
    };

    private e f62840a;

    private final e f62841b;

    private c() {
        d dVar = new d();
        this.f62841b = dVar;
        this.f62840a = dVar;
    }

    public static Executor g() {
        return f62839e;
    }

    public static c h() {
        if (f62837c != null) {
            return f62837c;
        }
        synchronized (c.class) {
            try {
                if (f62837c == null) {
                    f62837c = new c();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f62837c;
    }

    public static void i(Runnable runnable) {
        h().d(runnable);
    }

    public static void j(Runnable runnable) {
        h().a(runnable);
    }

    @Override
    public void a(Runnable runnable) {
        this.f62840a.a(runnable);
    }

    @Override
    public boolean c() {
        return this.f62840a.c();
    }

    @Override
    public void d(Runnable runnable) {
        this.f62840a.d(runnable);
    }
}
