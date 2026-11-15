package com.google.common.util.concurrent;

import defpackage.im5;
import defpackage.jm5;
import defpackage.pm5;
import defpackage.xd8;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public abstract class MoreExecutors {

    class AnonymousClass1 implements Runnable {
        final im5 val$future;
        final BlockingQueue val$queue;

        public AnonymousClass1(BlockingQueue blockingQueue, im5 im5Var) {
            this.val$queue = blockingQueue;
            this.val$future = im5Var;
        }

        @Override
        public void run() {
            this.val$queue.add(this.val$future);
        }
    }

    public static final class ScheduledListeningDecorator extends c implements ScheduledExecutorService, pm5 {
        public final ScheduledExecutorService c;

        public static final class NeverSuccessfulListenableFutureTask extends AbstractFuture.h implements Runnable {
            private final Runnable delegate;

            public NeverSuccessfulListenableFutureTask(Runnable runnable) {
                this.delegate = (Runnable) xd8.o(runnable);
            }

            @Override
            public String pendingToString() {
                return "task=[" + this.delegate + "]";
            }

            @Override
            public void run() {
                try {
                    this.delegate.run();
                } catch (Throwable th) {
                    setException(th);
                    throw th;
                }
            }
        }

        public static final class a extends e.a implements jm5 {
            public final ScheduledFuture c;

            public a(im5 im5Var, ScheduledFuture scheduledFuture) {
                super(im5Var);
                this.c = scheduledFuture;
            }

            @Override
            public boolean cancel(boolean z) {
                boolean zCancel = super.cancel(z);
                if (zCancel) {
                    this.c.cancel(z);
                }
                return zCancel;
            }

            @Override
            public long getDelay(TimeUnit timeUnit) {
                return this.c.getDelay(timeUnit);
            }

            @Override
            public int compareTo(Delayed delayed) {
                return this.c.compareTo(delayed);
            }
        }

        public ScheduledListeningDecorator(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.c = (ScheduledExecutorService) xd8.o(scheduledExecutorService);
        }

        @Override
        public jm5 schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(runnable, null);
            return new a(trustedListenableFutureTaskCreate, this.c.schedule(trustedListenableFutureTaskCreate, j, timeUnit));
        }

        @Override
        public jm5 schedule(Callable callable, long j, TimeUnit timeUnit) {
            TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(callable);
            return new a(trustedListenableFutureTaskCreate, this.c.schedule(trustedListenableFutureTaskCreate, j, timeUnit));
        }

        @Override
        public jm5 scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
            return new a(neverSuccessfulListenableFutureTask, this.c.scheduleAtFixedRate(neverSuccessfulListenableFutureTask, j, j2, timeUnit));
        }

        @Override
        public jm5 scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
            return new a(neverSuccessfulListenableFutureTask, this.c.scheduleWithFixedDelay(neverSuccessfulListenableFutureTask, j, j2, timeUnit));
        }
    }

    public class a implements Executor {
        public final Executor b;
        public final AbstractFuture c;

        public a(Executor executor, AbstractFuture abstractFuture) {
            this.b = executor;
            this.c = abstractFuture;
        }

        @Override
        public void execute(Runnable runnable) {
            try {
                this.b.execute(runnable);
            } catch (RejectedExecutionException e) {
                this.c.setException(e);
            }
        }
    }

    public static class b {
    }

    public static class c extends com.google.common.util.concurrent.a {
        public final ExecutorService b;

        public c(ExecutorService executorService) {
            this.b = (ExecutorService) xd8.o(executorService);
        }

        @Override
        public final boolean awaitTermination(long j, TimeUnit timeUnit) {
            return this.b.awaitTermination(j, timeUnit);
        }

        @Override
        public final void execute(Runnable runnable) {
            this.b.execute(runnable);
        }

        @Override
        public final boolean isShutdown() {
            return this.b.isShutdown();
        }

        @Override
        public final boolean isTerminated() {
            return this.b.isTerminated();
        }

        @Override
        public final void shutdown() {
            this.b.shutdown();
        }

        @Override
        public final List shutdownNow() {
            return this.b.shutdownNow();
        }

        public final String toString() {
            return super.toString() + "[" + this.b + "]";
        }
    }

    public static Executor a() {
        return DirectExecutor.INSTANCE;
    }

    public static pm5 b(ExecutorService executorService) {
        if (executorService instanceof pm5) {
            return (pm5) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new ScheduledListeningDecorator((ScheduledExecutorService) executorService) : new c(executorService);
    }

    public static Executor c(Executor executor, AbstractFuture abstractFuture) {
        xd8.o(executor);
        xd8.o(abstractFuture);
        return executor == a() ? executor : new a(executor, abstractFuture);
    }
}
