package io.reactivex;

import defpackage.rc2;
import defpackage.re3;
import defpackage.yw8;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.schedulers.a;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;

public abstract class Scheduler {
    public static boolean a = Boolean.getBoolean("rx2.scheduler.use-nanotime");
    public static final long b = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    public static final class DisposeTask implements rc2, Runnable {
        final Runnable decoratedRun;
        Thread runner;
        final Worker w;

        public DisposeTask(Runnable runnable, Worker worker) {
            this.decoratedRun = runnable;
            this.w = worker;
        }

        @Override
        public void dispose() {
            if (this.runner == Thread.currentThread()) {
                Worker worker = this.w;
                if (worker instanceof a) {
                    ((a) worker).d();
                    return;
                }
            }
            this.w.dispose();
        }

        public Runnable getWrappedRunnable() {
            return this.decoratedRun;
        }

        @Override
        public boolean isDisposed() {
            return this.w.isDisposed();
        }

        @Override
        public void run() {
            this.runner = Thread.currentThread();
            try {
                this.decoratedRun.run();
            } finally {
                dispose();
                this.runner = null;
            }
        }
    }

    public static final class PeriodicDirectTask implements rc2, Runnable {
        volatile boolean disposed;
        final Runnable run;
        final Worker worker;

        public PeriodicDirectTask(Runnable runnable, Worker worker) {
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
            } catch (Throwable th) {
                re3.b(th);
                this.worker.dispose();
                throw ExceptionHelper.d(th);
            }
        }
    }

    public static abstract class Worker implements rc2 {

        public final class PeriodicTask implements Runnable {
            long count;
            final Runnable decoratedRun;
            long lastNowNanoseconds;
            final long periodInNanoseconds;
            final SequentialDisposable sd;
            long startInNanoseconds;

            public PeriodicTask(long j, Runnable runnable, long j2, SequentialDisposable sequentialDisposable, long j3) {
                this.decoratedRun = runnable;
                this.sd = sequentialDisposable;
                this.periodInNanoseconds = j3;
                this.lastNowNanoseconds = j2;
                this.startInNanoseconds = j;
            }

            public Runnable getWrappedRunnable() {
                return this.decoratedRun;
            }

            /* JADX WARN: Code duplicated, block: B:10:0x0034  */
            @Override
            public void run() {
                long j;
                this.decoratedRun.run();
                if (this.sd.isDisposed()) {
                    return;
                }
                Worker worker = Worker.this;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long jNow = worker.now(timeUnit);
                long j2 = Scheduler.b;
                long j3 = jNow + j2;
                long j4 = this.lastNowNanoseconds;
                if (j3 >= j4) {
                    long j5 = this.periodInNanoseconds;
                    if (jNow >= j4 + j5 + j2) {
                        long j6 = this.periodInNanoseconds;
                        long j7 = jNow + j6;
                        long j8 = this.count + 1;
                        this.count = j8;
                        this.startInNanoseconds = j7 - (j6 * j8);
                        j = j7;
                    } else {
                        long j9 = this.startInNanoseconds;
                        long j10 = this.count + 1;
                        this.count = j10;
                        j = j9 + (j10 * j5);
                    }
                } else {
                    long j11 = this.periodInNanoseconds;
                    long j12 = jNow + j11;
                    long j13 = this.count + 1;
                    this.count = j13;
                    this.startInNanoseconds = j12 - (j11 * j13);
                    j = j12;
                }
                this.lastNowNanoseconds = jNow;
                this.sd.replace(Worker.this.schedule(this, j - jNow, timeUnit));
            }
        }

        public long now(TimeUnit timeUnit) {
            return Scheduler.a(timeUnit);
        }

        public rc2 schedule(Runnable runnable) {
            return schedule(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        public abstract rc2 schedule(Runnable runnable, long j, TimeUnit timeUnit);

        public rc2 schedulePeriodically(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            Runnable runnableV = yw8.v(runnable);
            long nanos = timeUnit.toNanos(j2);
            long jNow = now(TimeUnit.NANOSECONDS);
            rc2 rc2VarSchedule = schedule(new PeriodicTask(jNow + timeUnit.toNanos(j), runnableV, jNow, sequentialDisposable2, nanos), j, timeUnit);
            if (rc2VarSchedule == EmptyDisposable.INSTANCE) {
                return rc2VarSchedule;
            }
            sequentialDisposable.replace(rc2VarSchedule);
            return sequentialDisposable2;
        }
    }

    public static long a(TimeUnit timeUnit) {
        return !a ? timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS) : timeUnit.convert(System.nanoTime(), TimeUnit.NANOSECONDS);
    }

    public abstract Worker b();

    public rc2 c(Runnable runnable) {
        return d(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    public rc2 d(Runnable runnable, long j, TimeUnit timeUnit) {
        Worker workerB = b();
        DisposeTask disposeTask = new DisposeTask(yw8.v(runnable), workerB);
        workerB.schedule(disposeTask, j, timeUnit);
        return disposeTask;
    }

    public rc2 e(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Worker workerB = b();
        PeriodicDirectTask periodicDirectTask = new PeriodicDirectTask(yw8.v(runnable), workerB);
        rc2 rc2VarSchedulePeriodically = workerB.schedulePeriodically(periodicDirectTask, j, j2, timeUnit);
        return rc2VarSchedulePeriodically == EmptyDisposable.INSTANCE ? rc2VarSchedulePeriodically : periodicDirectTask;
    }
}
