package defpackage;

import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.schedulers.RxThreadFactory;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class zd1 extends Scheduler {
    public static final b e;
    public static final RxThreadFactory f;
    public static final int g = f(Runtime.getRuntime().availableProcessors(), Integer.getInteger("rx2.computation-threads", 0).intValue());
    public static final c h;
    public final ThreadFactory c;
    public final AtomicReference d;

    public static final class b {
        public final int a;
        public final c[] b;
        public long c;

        public b(int i, ThreadFactory threadFactory) {
            this.a = i;
            this.b = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.b[i2] = new c(threadFactory);
            }
        }

        public c a() {
            int i = this.a;
            if (i == 0) {
                return zd1.h;
            }
            c[] cVarArr = this.b;
            long j = this.c;
            this.c = 1 + j;
            return cVarArr[(int) (j % ((long) i))];
        }

        public void b() {
            for (c cVar : this.b) {
                cVar.dispose();
            }
        }
    }

    public static final class c extends io.reactivex.internal.schedulers.a {
        public c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        c cVar = new c(new RxThreadFactory("RxComputationShutdown"));
        h = cVar;
        cVar.dispose();
        RxThreadFactory rxThreadFactory = new RxThreadFactory("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
        f = rxThreadFactory;
        b bVar = new b(0, rxThreadFactory);
        e = bVar;
        bVar.b();
    }

    public zd1() {
        this(f);
    }

    public static int f(int i, int i2) {
        return (i2 <= 0 || i2 > i) ? i : i2;
    }

    @Override
    public Scheduler.Worker b() {
        return new a(((b) this.d.get()).a());
    }

    @Override
    public rc2 d(Runnable runnable, long j, TimeUnit timeUnit) {
        return ((b) this.d.get()).a().b(runnable, j, timeUnit);
    }

    @Override
    public rc2 e(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return ((b) this.d.get()).a().c(runnable, j, j2, timeUnit);
    }

    public void g() {
        b bVar = new b(g, this.c);
        if (wk5.a(this.d, e, bVar)) {
            return;
        }
        bVar.b();
    }

    public zd1(ThreadFactory threadFactory) {
        this.c = threadFactory;
        this.d = new AtomicReference(e);
        g();
    }

    public static final class a extends Scheduler.Worker {
        public final rl5 b;
        public final gd1 c;
        public final rl5 d;
        public final c e;
        public volatile boolean f;

        public a(c cVar) {
            this.e = cVar;
            rl5 rl5Var = new rl5();
            this.b = rl5Var;
            gd1 gd1Var = new gd1();
            this.c = gd1Var;
            rl5 rl5Var2 = new rl5();
            this.d = rl5Var2;
            rl5Var2.b(rl5Var);
            rl5Var2.b(gd1Var);
        }

        @Override
        public void dispose() {
            if (this.f) {
                return;
            }
            this.f = true;
            this.d.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.f;
        }

        @Override
        public rc2 schedule(Runnable runnable) {
            return this.f ? EmptyDisposable.INSTANCE : this.e.a(runnable, 0L, TimeUnit.MILLISECONDS, this.b);
        }

        @Override
        public rc2 schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            if (this.f) {
                return EmptyDisposable.INSTANCE;
            }
            return this.e.a(runnable, j, timeUnit, this.c);
        }
    }
}
