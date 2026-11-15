package defpackage;

import java.util.concurrent.Executor;

public class gf extends eea {
    public static volatile gf c;
    public static Executor d = new a();
    public static Executor e = new b();
    public eea a;
    public eea b;

    public class a implements Executor {
        @Override
        public void execute(Runnable runnable) {
            gf.g().a(runnable);
        }
    }

    public class b implements Executor {
        @Override
        public void execute(Runnable runnable) {
            gf.g().b(runnable);
        }
    }

    public gf() {
        h52 h52Var = new h52();
        this.b = h52Var;
        this.a = h52Var;
    }

    public static Executor f() {
        return d;
    }

    public static eea g() {
        if (c == null) {
            synchronized (gf.class) {
                c = new gf();
            }
        }
        return c;
    }

    public static Executor h() {
        return e;
    }

    @Override
    public void a(Runnable runnable) {
        this.a.a(runnable);
    }

    @Override
    public void b(Runnable runnable) {
        this.a.b(runnable);
    }

    @Override
    public boolean c() {
        return this.a.c();
    }

    @Override
    public void d(Runnable runnable) {
        this.a.d(runnable);
    }

    @Override
    public void e(Runnable runnable) {
        this.a.e(runnable);
    }
}
