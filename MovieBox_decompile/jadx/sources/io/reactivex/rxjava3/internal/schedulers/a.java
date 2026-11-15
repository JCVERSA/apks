package io.reactivex.rxjava3.internal.schedulers;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class a extends Scheduler {

    static final b f62499e;

    static final RxThreadFactory f62500f;

    static final int f62501g = g(Runtime.getRuntime().availableProcessors(), Integer.getInteger("rx3.computation-threads", 0).intValue());

    static final c f62502h;

    final ThreadFactory f62503c;

    final AtomicReference f62504d;

    static final class b {

        final int f62510a;

        final c[] f62511b;

        long f62512c;

        b(int i10, ThreadFactory threadFactory) {
            this.f62510a = i10;
            this.f62511b = new c[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                this.f62511b[i11] = new c(threadFactory);
            }
        }

        public c a() {
            int i10 = this.f62510a;
            if (i10 == 0) {
                return a.f62502h;
            }
            c[] cVarArr = this.f62511b;
            long j10 = this.f62512c;
            this.f62512c = 1 + j10;
            return cVarArr[(int) (j10 % ((long) i10))];
        }

        public void b() {
            for (c cVar : this.f62511b) {
                cVar.dispose();
            }
        }
    }

    static final class c extends e {
        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        c cVar = new c(new RxThreadFactory("RxComputationShutdown"));
        f62502h = cVar;
        cVar.dispose();
        RxThreadFactory rxThreadFactory = new RxThreadFactory("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx3.computation-priority", 5).intValue())), true);
        f62500f = rxThreadFactory;
        b bVar = new b(0, rxThreadFactory);
        f62499e = bVar;
        bVar.b();
    }

    public a() {
        this(f62500f);
    }

    static int g(int i10, int i11) {
        return (i11 <= 0 || i11 > i10) ? i10 : i11;
    }

    @Override
    public Scheduler.Worker c() {
        return new C0765a(((b) this.f62504d.get()).a());
    }

    @Override
    public io.reactivex.rxjava3.disposables.c e(Runnable runnable, long j10, TimeUnit timeUnit) {
        return ((b) this.f62504d.get()).a().b(runnable, j10, timeUnit);
    }

    @Override
    public io.reactivex.rxjava3.disposables.c f(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        return ((b) this.f62504d.get()).a().c(runnable, j10, j11, timeUnit);
    }

    public void h() {
        b bVar = new b(f62501g, this.f62503c);
        if (j0.a(this.f62504d, f62499e, bVar)) {
            return;
        }
        bVar.b();
    }

    public a(ThreadFactory threadFactory) {
        this.f62503c = threadFactory;
        this.f62504d = new AtomicReference(f62499e);
        h();
    }

    static final class C0765a extends Scheduler.Worker {

        private final zx.a f62505a;

        private final io.reactivex.rxjava3.disposables.a f62506b;

        private final zx.a f62507c;

        private final c f62508d;

        volatile boolean f62509e;

        C0765a(c cVar) {
            this.f62508d = cVar;
            zx.a aVar = new zx.a();
            this.f62505a = aVar;
            io.reactivex.rxjava3.disposables.a aVar2 = new io.reactivex.rxjava3.disposables.a();
            this.f62506b = aVar2;
            zx.a aVar3 = new zx.a();
            this.f62507c = aVar3;
            aVar3.b(aVar);
            aVar3.b(aVar2);
        }

        @Override
        public void dispose() {
            if (this.f62509e) {
                return;
            }
            this.f62509e = true;
            this.f62507c.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.f62509e;
        }

        @Override
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable) {
            return this.f62509e ? EmptyDisposable.INSTANCE : this.f62508d.a(runnable, 0L, TimeUnit.MILLISECONDS, this.f62505a);
        }

        @Override
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
            if (this.f62509e) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f62508d.a(runnable, j10, timeUnit, this.f62506b);
        }
    }
}
