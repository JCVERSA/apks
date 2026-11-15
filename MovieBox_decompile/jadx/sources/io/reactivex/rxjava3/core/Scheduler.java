package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;

public abstract class Scheduler {

    static boolean f62313a = Boolean.getBoolean("rx3.scheduler.use-nanotime");

    static final long f62314b = a(Long.getLong("rx3.scheduler.drift-tolerance", 15).longValue(), System.getProperty("rx3.scheduler.drift-tolerance-unit", "minutes"));

    static final class DisposeTask implements io.reactivex.rxjava3.disposables.c, Runnable {
        final Runnable decoratedRun;
        Thread runner;

        final Worker f62315w;

        DisposeTask(Runnable runnable, Worker worker) {
            this.decoratedRun = runnable;
            this.f62315w = worker;
        }

        @Override
        public void dispose() {
            if (this.runner == Thread.currentThread()) {
                Worker worker = this.f62315w;
                if (worker instanceof io.reactivex.rxjava3.internal.schedulers.e) {
                    ((io.reactivex.rxjava3.internal.schedulers.e) worker).d();
                    return;
                }
            }
            this.f62315w.dispose();
        }

        public Runnable getWrappedRunnable() {
            return this.decoratedRun;
        }

        @Override
        public boolean isDisposed() {
            return this.f62315w.isDisposed();
        }

        @Override
        public void run() {
            this.runner = Thread.currentThread();
            try {
                this.decoratedRun.run();
                dispose();
                this.runner = null;
            } catch (Throwable th2) {
                try {
                    dy.a.r(th2);
                    throw th2;
                } catch (Throwable th3) {
                    dispose();
                    this.runner = null;
                    throw th3;
                }
            }
        }
    }

    static final class PeriodicDirectTask implements io.reactivex.rxjava3.disposables.c, Runnable {
        volatile boolean disposed;
        final Runnable run;
        final Worker worker;

        PeriodicDirectTask(Runnable runnable, Worker worker) {
            this.run = runnable;
            this.worker = worker;
        }

        @Override
        public void dispose() {
            this.disposed = true;
            this.worker.dispose();
        }

        public Runnable getWrappedRunnable() {
            return this.run;
        }

        @Override
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override
        public void run() {
            if (this.disposed) {
                return;
            }
            try {
                this.run.run();
            } catch (Throwable th2) {
                dispose();
                dy.a.r(th2);
                throw th2;
            }
        }
    }

    public static abstract class Worker implements io.reactivex.rxjava3.disposables.c {

        final class PeriodicTask implements Runnable {
            long count;
            final Runnable decoratedRun;
            long lastNowNanoseconds;
            final long periodInNanoseconds;

            final SequentialDisposable f62316sd;
            long startInNanoseconds;

            PeriodicTask(long j10, Runnable runnable, long j11, SequentialDisposable sequentialDisposable, long j12) {
                this.decoratedRun = runnable;
                this.f62316sd = sequentialDisposable;
                this.periodInNanoseconds = j12;
                this.lastNowNanoseconds = j11;
                this.startInNanoseconds = j10;
            }

            public Runnable getWrappedRunnable() {
                return this.decoratedRun;
            }

            /* JADX WARN: Code duplicated, block: B:10:0x0034  */
            @Override
            public void run() {
                long j10;
                this.decoratedRun.run();
                if (this.f62316sd.isDisposed()) {
                    return;
                }
                Worker worker = Worker.this;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long jNow = worker.now(timeUnit);
                long j11 = Scheduler.f62314b;
                long j12 = jNow + j11;
                long j13 = this.lastNowNanoseconds;
                if (j12 >= j13) {
                    long j14 = this.periodInNanoseconds;
                    if (jNow >= j13 + j14 + j11) {
                        long j15 = this.periodInNanoseconds;
                        long j16 = jNow + j15;
                        long j17 = this.count + 1;
                        this.count = j17;
                        this.startInNanoseconds = j16 - (j15 * j17);
                        j10 = j16;
                    } else {
                        long j18 = this.startInNanoseconds;
                        long j19 = this.count + 1;
                        this.count = j19;
                        j10 = j18 + (j19 * j14);
                    }
                } else {
                    long j110 = this.periodInNanoseconds;
                    long j111 = jNow + j110;
                    long j112 = this.count + 1;
                    this.count = j112;
                    this.startInNanoseconds = j111 - (j110 * j112);
                    j10 = j111;
                }
                this.lastNowNanoseconds = jNow;
                this.f62316sd.replace(Worker.this.schedule(this, j10 - jNow, timeUnit));
            }
        }

        public long now(TimeUnit timeUnit) {
            return Scheduler.b(timeUnit);
        }

        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable) {
            return schedule(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        public abstract io.reactivex.rxjava3.disposables.c schedule(Runnable runnable, long j10, TimeUnit timeUnit);

        public io.reactivex.rxjava3.disposables.c schedulePeriodically(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            Runnable runnableT = dy.a.t(runnable);
            long nanos = timeUnit.toNanos(j11);
            long jNow = now(TimeUnit.NANOSECONDS);
            io.reactivex.rxjava3.disposables.c cVarSchedule = schedule(new PeriodicTask(jNow + timeUnit.toNanos(j10), runnableT, jNow, sequentialDisposable2, nanos), j10, timeUnit);
            if (cVarSchedule == EmptyDisposable.INSTANCE) {
                return cVarSchedule;
            }
            sequentialDisposable.replace(cVarSchedule);
            return sequentialDisposable2;
        }
    }

    static long a(long j10, String str) {
        if ("seconds".equalsIgnoreCase(str)) {
            return TimeUnit.SECONDS.toNanos(j10);
        }
        return "milliseconds".equalsIgnoreCase(str) ? TimeUnit.MILLISECONDS.toNanos(j10) : TimeUnit.MINUTES.toNanos(j10);
    }

    static long b(TimeUnit timeUnit) {
        return !f62313a ? timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS) : timeUnit.convert(System.nanoTime(), TimeUnit.NANOSECONDS);
    }

    public abstract Worker c();

    public io.reactivex.rxjava3.disposables.c d(Runnable runnable) {
        return e(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    public io.reactivex.rxjava3.disposables.c e(Runnable runnable, long j10, TimeUnit timeUnit) {
        Worker workerC = c();
        DisposeTask disposeTask = new DisposeTask(dy.a.t(runnable), workerC);
        workerC.schedule(disposeTask, j10, timeUnit);
        return disposeTask;
    }

    public io.reactivex.rxjava3.disposables.c f(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        Worker workerC = c();
        PeriodicDirectTask periodicDirectTask = new PeriodicDirectTask(dy.a.t(runnable), workerC);
        io.reactivex.rxjava3.disposables.c cVarSchedulePeriodically = workerC.schedulePeriodically(periodicDirectTask, j10, j11, timeUnit);
        return cVarSchedulePeriodically == EmptyDisposable.INSTANCE ? cVarSchedulePeriodically : periodicDirectTask;
    }
}
