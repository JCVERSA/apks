package defpackage;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class z72 implements ScheduledExecutorService {
    public final ExecutorService b;
    public final ScheduledExecutorService c;

    public z72(ExecutorService executorService, ScheduledExecutorService scheduledExecutorService) {
        this.b = executorService;
        this.c = scheduledExecutorService;
    }

    public static void G(Runnable runnable, a82.b bVar) {
        try {
            runnable.run();
            bVar.set(null);
        } catch (Exception e) {
            bVar.a(e);
        }
    }

    public static void J(Callable callable, a82.b bVar) {
        try {
            bVar.set(callable.call());
        } catch (Exception e) {
            bVar.a(e);
        }
    }

    public static void M(Runnable runnable, a82.b bVar) throws Exception {
        try {
            runnable.run();
        } catch (Exception e) {
            bVar.a(e);
            throw e;
        }
    }

    public static void R(Runnable runnable, a82.b bVar) {
        try {
            runnable.run();
        } catch (Exception e) {
            bVar.a(e);
        }
    }

    public final void H(final Runnable runnable, final a82.b bVar) {
        this.b.execute(new Runnable() {
            @Override
            public final void run() {
                z72.G(runnable, bVar);
            }
        });
    }

    public final ScheduledFuture I(final Runnable runnable, long j, TimeUnit timeUnit, final a82.b bVar) {
        return this.c.schedule(new Runnable() {
            @Override
            public final void run() {
                this.b.H(runnable, bVar);
            }
        }, j, timeUnit);
    }

    public final Future K(final Callable callable, final a82.b bVar) {
        return this.b.submit(new Runnable() {
            @Override
            public final void run() {
                z72.J(callable, bVar);
            }
        });
    }

    public final ScheduledFuture L(final Callable callable, long j, TimeUnit timeUnit, final a82.b bVar) {
        return this.c.schedule(new Callable() {
            @Override
            public final Object call() {
                return this.b.K(callable, bVar);
            }
        }, j, timeUnit);
    }

    public final void N(final Runnable runnable, final a82.b bVar) {
        this.b.execute(new Runnable() {
            @Override
            public final void run() throws Exception {
                z72.M(runnable, bVar);
            }
        });
    }

    public final ScheduledFuture O(final Runnable runnable, long j, long j2, TimeUnit timeUnit, final a82.b bVar) {
        return this.c.scheduleAtFixedRate(new Runnable() {
            @Override
            public final void run() {
                this.b.N(runnable, bVar);
            }
        }, j, j2, timeUnit);
    }

    public final void P(final Runnable runnable, final a82.b bVar) {
        this.b.execute(new Runnable() {
            @Override
            public final void run() {
                z72.R(runnable, bVar);
            }
        });
    }

    public final ScheduledFuture Q(final Runnable runnable, long j, long j2, TimeUnit timeUnit, final a82.b bVar) {
        return this.c.scheduleWithFixedDelay(new Runnable() {
            @Override
            public final void run() {
                this.b.P(runnable, bVar);
            }
        }, j, j2, timeUnit);
    }

    @Override
    public boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.b.awaitTermination(j, timeUnit);
    }

    @Override
    public void execute(Runnable runnable) {
        this.b.execute(runnable);
    }

    @Override
    public List invokeAll(Collection collection) {
        return this.b.invokeAll(collection);
    }

    @Override
    public Object invokeAny(Collection collection) {
        return this.b.invokeAny(collection);
    }

    @Override
    public boolean isShutdown() {
        return this.b.isShutdown();
    }

    @Override
    public boolean isTerminated() {
        return this.b.isTerminated();
    }

    @Override
    public ScheduledFuture schedule(final Runnable runnable, final long j, final TimeUnit timeUnit) {
        return new a82(new a82.c() {
            @Override
            public final ScheduledFuture a(a82.b bVar) {
                return this.a.I(runnable, j, timeUnit, bVar);
            }
        });
    }

    @Override
    public ScheduledFuture scheduleAtFixedRate(final Runnable runnable, final long j, final long j2, final TimeUnit timeUnit) {
        return new a82(new a82.c() {
            @Override
            public final ScheduledFuture a(a82.b bVar) {
                return this.a.O(runnable, j, j2, timeUnit, bVar);
            }
        });
    }

    @Override
    public ScheduledFuture scheduleWithFixedDelay(final Runnable runnable, final long j, final long j2, final TimeUnit timeUnit) {
        return new a82(new a82.c() {
            @Override
            public final ScheduledFuture a(a82.b bVar) {
                return this.a.Q(runnable, j, j2, timeUnit, bVar);
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
        return this.b.submit(callable);
    }

    @Override
    public List invokeAll(Collection collection, long j, TimeUnit timeUnit) {
        return this.b.invokeAll(collection, j, timeUnit);
    }

    @Override
    public Object invokeAny(Collection collection, long j, TimeUnit timeUnit) {
        return this.b.invokeAny(collection, j, timeUnit);
    }

    @Override
    public ScheduledFuture schedule(final Callable callable, final long j, final TimeUnit timeUnit) {
        return new a82(new a82.c() {
            @Override
            public final ScheduledFuture a(a82.b bVar) {
                return this.a.L(callable, j, timeUnit, bVar);
            }
        });
    }

    @Override
    public Future submit(Runnable runnable, Object obj) {
        return this.b.submit(runnable, obj);
    }

    @Override
    public Future submit(Runnable runnable) {
        return this.b.submit(runnable);
    }
}
