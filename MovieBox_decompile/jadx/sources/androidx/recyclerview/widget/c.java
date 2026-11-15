package androidx.recyclerview.widget;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class c {

    private final Executor f14037a;

    private final Executor f14038b;

    private final DiffUtil.e f14039c;

    public static final class a {

        private static final Object f14040d = new Object();

        private static Executor f14041e;

        private Executor f14042a;

        private Executor f14043b;

        private final DiffUtil.e f14044c;

        public a(DiffUtil.e eVar) {
            this.f14044c = eVar;
        }

        public c a() {
            if (this.f14043b == null) {
                synchronized (f14040d) {
                    try {
                        if (f14041e == null) {
                            f14041e = Executors.newFixedThreadPool(2);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                this.f14043b = f14041e;
            }
            return new c(this.f14042a, this.f14043b, this.f14044c);
        }
    }

    c(Executor executor, Executor executor2, DiffUtil.e eVar) {
        this.f14037a = executor;
        this.f14038b = executor2;
        this.f14039c = eVar;
    }

    public Executor a() {
        return this.f14038b;
    }

    public DiffUtil.e b() {
        return this.f14039c;
    }

    public Executor c() {
        return this.f14037a;
    }
}
