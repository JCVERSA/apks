package com.google.firebase.concurrent;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

class o implements ScheduledExecutorService {

    private final ExecutorService f30300a;

    private final ScheduledExecutorService f30301b;

    o(ExecutorService executorService, ScheduledExecutorService scheduledExecutorService) {
        this.f30300a = executorService;
        this.f30301b = scheduledExecutorService;
    }

    public static void m(Runnable runnable, p.b bVar) {
        try {
            runnable.run();
            bVar.set(null);
        } catch (Exception e10) {
            bVar.a(e10);
        }
    }

    public void o(final Runnable runnable, final p.b bVar) {
        this.f30300a.execute(new Runnable() {
            @Override
            public final void run() {
                o.m(runnable, bVar);
            }
        });
    }

    public ScheduledFuture p(final Runnable runnable, long j10, TimeUnit timeUnit, final p.b bVar) {
        return this.f30301b.schedule(new Runnable() {
            @Override
            public final void run() {
                this.f30287a.o(runnable, bVar);
            }
        }, j10, timeUnit);
    }

    public static void q(Callable callable, p.b bVar) {
        try {
            bVar.set(callable.call());
        } catch (Exception e10) {
            bVar.a(e10);
        }
    }

    public Future r(final Callable callable, final p.b bVar) {
        return this.f30300a.submit(new Runnable() {
            @Override
            public final void run() {
                o.q(callable, bVar);
            }
        });
    }

    public ScheduledFuture s(final Callable callable, long j10, TimeUnit timeUnit, final p.b bVar) {
        return this.f30301b.schedule(new Callable() {
            @Override
            public final Object call() {
                return this.f30290a.r(callable, bVar);
            }
        }, j10, timeUnit);
    }

    public static void t(Runnable runnable, p.b bVar) throws Exception {
        try {
            runnable.run();
        } catch (Exception e10) {
            bVar.a(e10);
            throw e10;
        }
    }

    public void u(final Runnable runnable, final p.b bVar) {
        this.f30300a.execute(new Runnable() {
            @Override
            public final void run() throws Exception {
                o.t(runnable, bVar);
            }
        });
    }

    public ScheduledFuture v(final Runnable runnable, long j10, long j11, TimeUnit timeUnit, final p.b bVar) {
        return this.f30301b.scheduleAtFixedRate(new Runnable() {
            @Override
            public final void run() {
                this.f30284a.u(runnable, bVar);
            }
        }, j10, j11, timeUnit);
    }

    public void w(final Runnable runnable, final p.b bVar) {
        this.f30300a.execute(new Runnable() {
            @Override
            public final void run() {
                o.y(runnable, bVar);
            }
        });
    }

    public ScheduledFuture x(final Runnable runnable, long j10, long j11, TimeUnit timeUnit, final p.b bVar) {
        return this.f30301b.scheduleWithFixedDelay(new Runnable() {
            @Override
            public final void run() {
                this.f30293a.w(runnable, bVar);
            }
        }, j10, j11, timeUnit);
    }

    public static void y(Runnable runnable, p.b bVar) {
        try {
            runnable.run();
        } catch (Exception e10) {
            bVar.a(e10);
        }
    }

    @Override
    public boolean awaitTermination(long j10, TimeUnit timeUnit) {
        return this.f30300a.awaitTermination(j10, timeUnit);
    }

    @Override
    public void execute(Runnable runnable) {
        this.f30300a.execute(runnable);
    }

    @Override
    public List invokeAll(Collection collection) {
        return this.f30300a.invokeAll(collection);
    }

    @Override
    public Object invokeAny(Collection collection) {
        return this.f30300a.invokeAny(collection);
    }

    @Override
    public boolean isShutdown() {
        return this.f30300a.isShutdown();
    }

    @Override
    public boolean isTerminated() {
        return this.f30300a.isTerminated();
    }

    @Override
    public ScheduledFuture schedule(final Runnable runnable, final long j10, final TimeUnit timeUnit) {
        return new p(new p.c() {
            @Override
            public final ScheduledFuture a(p.b bVar) {
                return this.f30262a.p(runnable, j10, timeUnit, bVar);
            }
        });
    }

    @Override
    public ScheduledFuture scheduleAtFixedRate(final Runnable runnable, final long j10, final long j11, final TimeUnit timeUnit) {
        return new p(new p.c() {
            @Override
            public final ScheduledFuture a(p.b bVar) {
                return this.f30270a.v(runnable, j10, j11, timeUnit, bVar);
            }
        });
    }

    @Override
    public ScheduledFuture scheduleWithFixedDelay(final Runnable runnable, final long j10, final long j11, final TimeUnit timeUnit) {
        return new p(new p.c() {
            @Override
            public final ScheduledFuture a(p.b bVar) {
                return this.f30275a.x(runnable, j10, j11, timeUnit, bVar);
            }
        });
    }

    @Override
    public void shutdown() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override
    public List shutdownNow() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override
    public Future submit(Callable callable) {
        return this.f30300a.submit(callable);
    }

    @Override
    public List invokeAll(Collection collection, long j10, TimeUnit timeUnit) {
        return this.f30300a.invokeAll(collection, j10, timeUnit);
    }

    @Override
    public Object invokeAny(Collection collection, long j10, TimeUnit timeUnit) {
        return this.f30300a.invokeAny(collection, j10, timeUnit);
    }

    @Override
    public ScheduledFuture schedule(final Callable callable, final long j10, final TimeUnit timeUnit) {
        return new p(new p.c() {
            @Override
            public final ScheduledFuture a(p.b bVar) {
                return this.f30280a.s(callable, j10, timeUnit, bVar);
            }
        });
    }

    @Override
    public Future submit(Runnable runnable, Object obj) {
        return this.f30300a.submit(runnable, obj);
    }

    @Override
    public Future submit(Runnable runnable) {
        return this.f30300a.submit(runnable);
    }
}
