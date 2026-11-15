package io.reactivex.internal.schedulers;

import defpackage.gd1;
import defpackage.k29;
import defpackage.rc2;
import defpackage.sc2;
import defpackage.yc2;
import defpackage.yw8;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.queue.MpscLinkedQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ExecutorScheduler extends Scheduler {
    public static final Scheduler e = k29.e();
    public final boolean c;
    public final Executor d;

    public final class DelayedDispose implements Runnable {
        private final DelayedRunnable dr;

        public DelayedDispose(DelayedRunnable delayedRunnable) {
            this.dr = delayedRunnable;
        }

        @Override
        public void run() {
            DelayedRunnable delayedRunnable = this.dr;
            delayedRunnable.direct.replace(ExecutorScheduler.this.c(delayedRunnable));
        }
    }

    public static final class DelayedRunnable extends AtomicReference<Runnable> implements Runnable, rc2 {
        private static final long serialVersionUID = -4101336210206799084L;
        final SequentialDisposable direct;
        final SequentialDisposable timed;

        public DelayedRunnable(Runnable runnable) {
            super(runnable);
            this.timed = new SequentialDisposable();
            this.direct = new SequentialDisposable();
        }

        @Override
        public void dispose() {
            if (getAndSet(null) != null) {
                this.timed.dispose();
                this.direct.dispose();
            }
        }

        public Runnable getWrappedRunnable() {
            Runnable runnable = get();
            return runnable != null ? runnable : Functions.b;
        }

        @Override
        public boolean isDisposed() {
            return get() == null;
        }

        @Override
        public void run() {
            Runnable runnable = get();
            if (runnable != null) {
                try {
                    runnable.run();
                    lazySet(null);
                    this.timed.lazySet(DisposableHelper.DISPOSED);
                    SequentialDisposable sequentialDisposable = this.direct;
                } finally {
                    lazySet(null);
                    this.timed.lazySet(DisposableHelper.DISPOSED);
                    this.direct.lazySet(DisposableHelper.DISPOSED);
                }
            }
        }
    }

    public ExecutorScheduler(Executor executor, boolean z) {
        this.d = executor;
        this.c = z;
    }

    @Override
    public Scheduler.Worker b() {
        return new ExecutorWorker(this.d, this.c);
    }

    @Override
    public rc2 c(Runnable runnable) {
        Runnable runnableV = yw8.v(runnable);
        try {
            if (this.d instanceof ExecutorService) {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(runnableV);
                scheduledDirectTask.setFuture(((ExecutorService) this.d).submit(scheduledDirectTask));
                return scheduledDirectTask;
            }
            if (this.c) {
                ExecutorWorker.InterruptibleRunnable interruptibleRunnable = new ExecutorWorker.InterruptibleRunnable(runnableV, null);
                this.d.execute(interruptibleRunnable);
                return interruptibleRunnable;
            }
            ExecutorWorker.BooleanRunnable booleanRunnable = new ExecutorWorker.BooleanRunnable(runnableV);
            this.d.execute(booleanRunnable);
            return booleanRunnable;
        } catch (RejectedExecutionException e2) {
            yw8.s(e2);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override
    public rc2 d(Runnable runnable, long j, TimeUnit timeUnit) {
        Runnable runnableV = yw8.v(runnable);
        if (!(this.d instanceof ScheduledExecutorService)) {
            DelayedRunnable delayedRunnable = new DelayedRunnable(runnableV);
            delayedRunnable.timed.replace(e.d(new DelayedDispose(delayedRunnable), j, timeUnit));
            return delayedRunnable;
        }
        try {
            ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(runnableV);
            scheduledDirectTask.setFuture(((ScheduledExecutorService) this.d).schedule(scheduledDirectTask, j, timeUnit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e2) {
            yw8.s(e2);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override
    public rc2 e(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        if (!(this.d instanceof ScheduledExecutorService)) {
            return super.e(runnable, j, j2, timeUnit);
        }
        try {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(yw8.v(runnable));
            scheduledDirectPeriodicTask.setFuture(((ScheduledExecutorService) this.d).scheduleAtFixedRate(scheduledDirectPeriodicTask, j, j2, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e2) {
            yw8.s(e2);
            return EmptyDisposable.INSTANCE;
        }
    }

    public static final class ExecutorWorker extends Scheduler.Worker implements Runnable {
        volatile boolean disposed;
        final Executor executor;
        final boolean interruptibleWorker;
        final AtomicInteger wip = new AtomicInteger();
        final gd1 tasks = new gd1();
        final MpscLinkedQueue queue = new MpscLinkedQueue();

        public static final class BooleanRunnable extends AtomicBoolean implements Runnable, rc2 {
            private static final long serialVersionUID = -2421395018820541164L;
            final Runnable actual;

            public BooleanRunnable(Runnable runnable) {
                this.actual = runnable;
            }

            @Override
            public void dispose() {
                lazySet(true);
            }

            @Override
            public boolean isDisposed() {
                return get();
            }

            @Override
            public void run() {
                if (get()) {
                    return;
                }
                try {
                    this.actual.run();
                } finally {
                    lazySet(true);
                }
            }
        }

        public static final class InterruptibleRunnable extends AtomicInteger implements Runnable, rc2 {
            static final int FINISHED = 2;
            static final int INTERRUPTED = 4;
            static final int INTERRUPTING = 3;
            static final int READY = 0;
            static final int RUNNING = 1;
            private static final long serialVersionUID = -3603436687413320876L;
            final Runnable run;
            final sc2 tasks;
            volatile Thread thread;

            public InterruptibleRunnable(Runnable runnable, sc2 sc2Var) {
                this.run = runnable;
                this.tasks = sc2Var;
            }

            public void cleanup() {
                sc2 sc2Var = this.tasks;
                if (sc2Var != null) {
                    sc2Var.a(this);
                }
            }

            @Override
            public void dispose() {
                while (true) {
                    int i = get();
                    if (i >= 2) {
                        return;
                    }
                    if (i == 0) {
                        if (compareAndSet(0, 4)) {
                            cleanup();
                            return;
                        }
                    } else if (compareAndSet(1, 3)) {
                        Thread thread = this.thread;
                        if (thread != null) {
                            thread.interrupt();
                            this.thread = null;
                        }
                        set(4);
                        cleanup();
                        return;
                    }
                }
            }

            @Override
            public boolean isDisposed() {
                return get() >= 2;
            }

            @Override
            public void run() {
                if (get() == 0) {
                    this.thread = Thread.currentThread();
                    if (!compareAndSet(0, 1)) {
                        this.thread = null;
                        return;
                    }
                    try {
                        this.run.run();
                        this.thread = null;
                        if (compareAndSet(1, 2)) {
                        }
                    } finally {
                        this.thread = null;
                        if (compareAndSet(1, 2)) {
                            cleanup();
                        } else {
                            while (get() == 3) {
                                Thread.yield();
                            }
                            Thread.interrupted();
                        }
                    }
                }
            }
        }

        public final class SequentialDispose implements Runnable {
            private final Runnable decoratedRun;
            private final SequentialDisposable mar;

            public SequentialDispose(SequentialDisposable sequentialDisposable, Runnable runnable) {
                this.mar = sequentialDisposable;
                this.decoratedRun = runnable;
            }

            @Override
            public void run() {
                this.mar.replace(ExecutorWorker.this.schedule(this.decoratedRun));
            }
        }

        public ExecutorWorker(Executor executor, boolean z) {
            this.executor = executor;
            this.interruptibleWorker = z;
        }

        @Override
        public void dispose() {
            if (this.disposed) {
                return;
            }
            this.disposed = true;
            this.tasks.dispose();
            if (this.wip.getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override
        public void run() {
            MpscLinkedQueue mpscLinkedQueue = this.queue;
            int iAddAndGet = 1;
            while (!this.disposed) {
                while (true) {
                    Runnable runnable = (Runnable) mpscLinkedQueue.poll();
                    if (runnable == null) {
                        break;
                    }
                    runnable.run();
                    if (this.disposed) {
                        mpscLinkedQueue.clear();
                        return;
                    }
                }
                if (this.disposed) {
                    mpscLinkedQueue.clear();
                    return;
                } else {
                    iAddAndGet = this.wip.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
            mpscLinkedQueue.clear();
        }

        @Override
        public rc2 schedule(Runnable runnable) {
            rc2 booleanRunnable;
            if (this.disposed) {
                return EmptyDisposable.INSTANCE;
            }
            Runnable runnableV = yw8.v(runnable);
            if (this.interruptibleWorker) {
                booleanRunnable = new InterruptibleRunnable(runnableV, this.tasks);
                this.tasks.b(booleanRunnable);
            } else {
                booleanRunnable = new BooleanRunnable(runnableV);
            }
            this.queue.offer(booleanRunnable);
            if (this.wip.getAndIncrement() == 0) {
                try {
                    this.executor.execute(this);
                } catch (RejectedExecutionException e) {
                    this.disposed = true;
                    this.queue.clear();
                    yw8.s(e);
                    return EmptyDisposable.INSTANCE;
                }
            }
            return booleanRunnable;
        }

        @Override
        public rc2 schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            if (j <= 0) {
                return schedule(runnable);
            }
            if (this.disposed) {
                return EmptyDisposable.INSTANCE;
            }
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(new SequentialDispose(sequentialDisposable2, yw8.v(runnable)), this.tasks);
            this.tasks.b(scheduledRunnable);
            Executor executor = this.executor;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    scheduledRunnable.setFuture(((ScheduledExecutorService) executor).schedule((Callable) scheduledRunnable, j, timeUnit));
                } catch (RejectedExecutionException e) {
                    this.disposed = true;
                    yw8.s(e);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                scheduledRunnable.setFuture(new yc2(ExecutorScheduler.e.d(scheduledRunnable, j, timeUnit)));
            }
            sequentialDisposable.replace(scheduledRunnable);
            return sequentialDisposable2;
        }
    }
}
