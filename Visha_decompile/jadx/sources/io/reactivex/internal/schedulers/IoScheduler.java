package io.reactivex.internal.schedulers;

import defpackage.gd1;
import defpackage.rc2;
import defpackage.wk5;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class IoScheduler extends Scheduler {
    public static final RxThreadFactory e;
    public static final RxThreadFactory f;
    public static final a i;
    public static boolean j;
    public static final CachedWorkerPool k;
    public final ThreadFactory c;
    public final AtomicReference d;
    public static final TimeUnit h = TimeUnit.SECONDS;
    public static final long g = Long.getLong("rx2.io-keep-alive-time", 60).longValue();

    public static final class CachedWorkerPool implements Runnable {
        final gd1 allWorkers;
        private final ScheduledExecutorService evictorService;
        private final Future<?> evictorTask;
        private final ConcurrentLinkedQueue<a> expiringWorkerQueue;
        private final long keepAliveTime;
        private final ThreadFactory threadFactory;

        public CachedWorkerPool(long j, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool;
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
            long nanos = timeUnit != null ? timeUnit.toNanos(j) : 0L;
            this.keepAliveTime = nanos;
            this.expiringWorkerQueue = new ConcurrentLinkedQueue<>();
            this.allWorkers = new gd1();
            this.threadFactory = threadFactory;
            if (timeUnit != null) {
                scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, IoScheduler.f);
                scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledExecutorServiceNewScheduledThreadPool = null;
                scheduledFutureScheduleWithFixedDelay = null;
            }
            this.evictorService = scheduledExecutorServiceNewScheduledThreadPool;
            this.evictorTask = scheduledFutureScheduleWithFixedDelay;
        }

        public void evictExpiredWorkers() {
            if (this.expiringWorkerQueue.isEmpty()) {
                return;
            }
            long jNow = now();
            for (a aVar : this.expiringWorkerQueue) {
                if (aVar.e() > jNow) {
                    return;
                }
                if (this.expiringWorkerQueue.remove(aVar)) {
                    this.allWorkers.c(aVar);
                }
            }
        }

        public a get() {
            if (this.allWorkers.isDisposed()) {
                return IoScheduler.i;
            }
            while (!this.expiringWorkerQueue.isEmpty()) {
                a aVarPoll = this.expiringWorkerQueue.poll();
                if (aVarPoll != null) {
                    return aVarPoll;
                }
            }
            a aVar = new a(this.threadFactory);
            this.allWorkers.b(aVar);
            return aVar;
        }

        public long now() {
            return System.nanoTime();
        }

        public void release(a aVar) {
            aVar.f(now() + this.keepAliveTime);
            this.expiringWorkerQueue.offer(aVar);
        }

        @Override
        public void run() {
            evictExpiredWorkers();
        }

        public void shutdown() {
            this.allWorkers.dispose();
            Future<?> future = this.evictorTask;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.evictorService;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }
    }

    public static final class EventLoopWorker extends Scheduler.Worker implements Runnable {
        private final CachedWorkerPool pool;
        private final a threadWorker;
        final AtomicBoolean once = new AtomicBoolean();
        private final gd1 tasks = new gd1();

        public EventLoopWorker(CachedWorkerPool cachedWorkerPool) {
            this.pool = cachedWorkerPool;
            this.threadWorker = cachedWorkerPool.get();
        }

        @Override
        public void dispose() {
            if (this.once.compareAndSet(false, true)) {
                this.tasks.dispose();
                if (IoScheduler.j) {
                    this.threadWorker.a(this, 0L, TimeUnit.NANOSECONDS, null);
                } else {
                    this.pool.release(this.threadWorker);
                }
            }
        }

        @Override
        public boolean isDisposed() {
            return this.once.get();
        }

        @Override
        public void run() {
            this.pool.release(this.threadWorker);
        }

        @Override
        public rc2 schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            return this.tasks.isDisposed() ? EmptyDisposable.INSTANCE : this.threadWorker.a(runnable, j, timeUnit, this.tasks);
        }
    }

    public static final class a extends io.reactivex.internal.schedulers.a {
        public long d;

        public a(ThreadFactory threadFactory) {
            super(threadFactory);
            this.d = 0L;
        }

        public long e() {
            return this.d;
        }

        public void f(long j) {
            this.d = j;
        }
    }

    static {
        a aVar = new a(new RxThreadFactory("RxCachedThreadSchedulerShutdown"));
        i = aVar;
        aVar.dispose();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        RxThreadFactory rxThreadFactory = new RxThreadFactory("RxCachedThreadScheduler", iMax);
        e = rxThreadFactory;
        f = new RxThreadFactory("RxCachedWorkerPoolEvictor", iMax);
        j = Boolean.getBoolean("rx2.io-scheduled-release");
        CachedWorkerPool cachedWorkerPool = new CachedWorkerPool(0L, null, rxThreadFactory);
        k = cachedWorkerPool;
        cachedWorkerPool.shutdown();
    }

    public IoScheduler() {
        this(e);
    }

    @Override
    public Scheduler.Worker b() {
        return new EventLoopWorker((CachedWorkerPool) this.d.get());
    }

    public void f() {
        CachedWorkerPool cachedWorkerPool = new CachedWorkerPool(g, h, this.c);
        if (wk5.a(this.d, k, cachedWorkerPool)) {
            return;
        }
        cachedWorkerPool.shutdown();
    }

    public IoScheduler(ThreadFactory threadFactory) {
        this.c = threadFactory;
        this.d = new AtomicReference(k);
        f();
    }
}
