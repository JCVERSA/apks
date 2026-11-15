package io.reactivex.rxjava3.internal.schedulers;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
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

    static final RxThreadFactory f62480e;

    static final RxThreadFactory f62481f;

    static final a f62484i;

    static boolean f62485j;

    static final CachedWorkerPool f62486k;

    final ThreadFactory f62487c;

    final AtomicReference f62488d;

    private static final TimeUnit f62483h = TimeUnit.SECONDS;

    private static final long f62482g = Long.getLong("rx3.io-keep-alive-time", 60).longValue();

    static final class CachedWorkerPool implements Runnable {
        final io.reactivex.rxjava3.disposables.a allWorkers;
        private final ScheduledExecutorService evictorService;
        private final Future<?> evictorTask;
        private final ConcurrentLinkedQueue<a> expiringWorkerQueue;
        private final long keepAliveTime;
        private final ThreadFactory threadFactory;

        CachedWorkerPool(long j10, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool;
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
            long nanos = timeUnit != null ? timeUnit.toNanos(j10) : 0L;
            this.keepAliveTime = nanos;
            this.expiringWorkerQueue = new ConcurrentLinkedQueue<>();
            this.allWorkers = new io.reactivex.rxjava3.disposables.a();
            this.threadFactory = threadFactory;
            if (timeUnit != null) {
                scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, IoScheduler.f62481f);
                scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledExecutorServiceNewScheduledThreadPool = null;
                scheduledFutureScheduleWithFixedDelay = null;
            }
            this.evictorService = scheduledExecutorServiceNewScheduledThreadPool;
            this.evictorTask = scheduledFutureScheduleWithFixedDelay;
        }

        static void evictExpiredWorkers(ConcurrentLinkedQueue<a> concurrentLinkedQueue, io.reactivex.rxjava3.disposables.a aVar) {
            if (concurrentLinkedQueue.isEmpty()) {
                return;
            }
            long jNow = now();
            for (a aVar2 : concurrentLinkedQueue) {
                if (aVar2.e() > jNow) {
                    return;
                }
                if (concurrentLinkedQueue.remove(aVar2)) {
                    aVar.a(aVar2);
                }
            }
        }

        static long now() {
            return System.nanoTime();
        }

        a get() {
            if (this.allWorkers.isDisposed()) {
                return IoScheduler.f62484i;
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

        void release(a aVar) {
            aVar.f(now() + this.keepAliveTime);
            this.expiringWorkerQueue.offer(aVar);
        }

        @Override
        public void run() {
            evictExpiredWorkers(this.expiringWorkerQueue, this.allWorkers);
        }

        void shutdown() {
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

    static final class EventLoopWorker extends Scheduler.Worker implements Runnable {
        private final CachedWorkerPool pool;
        private final a threadWorker;
        final AtomicBoolean once = new AtomicBoolean();
        private final io.reactivex.rxjava3.disposables.a tasks = new io.reactivex.rxjava3.disposables.a();

        EventLoopWorker(CachedWorkerPool cachedWorkerPool) {
            this.pool = cachedWorkerPool;
            this.threadWorker = cachedWorkerPool.get();
        }

        @Override
        public void dispose() {
            if (this.once.compareAndSet(false, true)) {
                this.tasks.dispose();
                if (IoScheduler.f62485j) {
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
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
            return this.tasks.isDisposed() ? EmptyDisposable.INSTANCE : this.threadWorker.a(runnable, j10, timeUnit, this.tasks);
        }
    }

    static final class a extends e {

        long f62489c;

        a(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f62489c = 0L;
        }

        public long e() {
            return this.f62489c;
        }

        public void f(long j10) {
            this.f62489c = j10;
        }
    }

    static {
        a aVar = new a(new RxThreadFactory("RxCachedThreadSchedulerShutdown"));
        f62484i = aVar;
        aVar.dispose();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("rx3.io-priority", 5).intValue()));
        RxThreadFactory rxThreadFactory = new RxThreadFactory("RxCachedThreadScheduler", iMax);
        f62480e = rxThreadFactory;
        f62481f = new RxThreadFactory("RxCachedWorkerPoolEvictor", iMax);
        f62485j = Boolean.getBoolean("rx3.io-scheduled-release");
        CachedWorkerPool cachedWorkerPool = new CachedWorkerPool(0L, null, rxThreadFactory);
        f62486k = cachedWorkerPool;
        cachedWorkerPool.shutdown();
    }

    public IoScheduler() {
        this(f62480e);
    }

    @Override
    public Scheduler.Worker c() {
        return new EventLoopWorker((CachedWorkerPool) this.f62488d.get());
    }

    public void g() {
        CachedWorkerPool cachedWorkerPool = new CachedWorkerPool(f62482g, f62483h, this.f62487c);
        if (j0.a(this.f62488d, f62486k, cachedWorkerPool)) {
            return;
        }
        cachedWorkerPool.shutdown();
    }

    public IoScheduler(ThreadFactory threadFactory) {
        this.f62487c = threadFactory;
        this.f62488d = new AtomicReference(f62486k);
        g();
    }
}
