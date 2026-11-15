package com.google.common.util.concurrent;

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
        final r val$future;
        final BlockingQueue val$queue;

        AnonymousClass1(BlockingQueue blockingQueue, r rVar) {
            this.val$queue = blockingQueue;
            this.val$future = rVar;
        }

        @Override
        public void run() {
            this.val$queue.add(this.val$future);
        }
    }

    private static final class ScheduledListeningDecorator extends c implements ScheduledExecutorService, t {

        final ScheduledExecutorService f30177b;

        private static final class NeverSuccessfulListenableFutureTask extends AbstractFuture.h implements Runnable {
            private final Runnable delegate;

            public NeverSuccessfulListenableFutureTask(Runnable runnable) {
                this.delegate = (Runnable) com.google.common.base.m.o(runnable);
            }

            @Override
            protected String pendingToString() {
                return "task=[" + this.delegate + "]";
            }

            @Override
            public void run() {
                try {
                    this.delegate.run();
                } catch (Throwable th2) {
                    setException(th2);
                    throw th2;
                }
            }
        }

        private static final class a extends l.a implements s {

            private final ScheduledFuture f30178b;

            public a(r rVar, ScheduledFuture scheduledFuture) {
                super(rVar);
                this.f30178b = scheduledFuture;
            }

            @Override
            public boolean cancel(boolean z10) {
                boolean zCancel = super.cancel(z10);
                if (zCancel) {
                    this.f30178b.cancel(z10);
                }
                return zCancel;
            }

            @Override
            public long getDelay(TimeUnit timeUnit) {
                return this.f30178b.getDelay(timeUnit);
            }

            @Override
            public int compareTo(Delayed delayed) {
                return this.f30178b.compareTo(delayed);
            }
        }

        ScheduledListeningDecorator(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.f30177b = (ScheduledExecutorService) com.google.common.base.m.o(scheduledExecutorService);
        }

        @Override
        public s schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
            TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(runnable, null);
            return new a(trustedListenableFutureTaskCreate, this.f30177b.schedule(trustedListenableFutureTaskCreate, j10, timeUnit));
        }

        @Override
        public s schedule(Callable callable, long j10, TimeUnit timeUnit) {
            TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(callable);
            return new a(trustedListenableFutureTaskCreate, this.f30177b.schedule(trustedListenableFutureTaskCreate, j10, timeUnit));
        }

        @Override
        public s scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
            return new a(neverSuccessfulListenableFutureTask, this.f30177b.scheduleAtFixedRate(neverSuccessfulListenableFutureTask, j10, j11, timeUnit));
        }

        @Override
        public s scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
            return new a(neverSuccessfulListenableFutureTask, this.f30177b.scheduleWithFixedDelay(neverSuccessfulListenableFutureTask, j10, j11, timeUnit));
        }
    }

    class a implements Executor {

        final Executor f30179a;

        final AbstractFuture f30180b;

        a(Executor executor, AbstractFuture abstractFuture) {
            this.f30179a = executor;
            this.f30180b = abstractFuture;
        }

        @Override
        public void execute(Runnable runnable) {
            try {
                this.f30179a.execute(runnable);
            } catch (RejectedExecutionException e10) {
                this.f30180b.setException(e10);
            }
        }
    }

    static class b {
    }

    private static class c extends com.google.common.util.concurrent.a {

        private final ExecutorService f30181a;

        c(ExecutorService executorService) {
            this.f30181a = (ExecutorService) com.google.common.base.m.o(executorService);
        }

        @Override
        public final boolean awaitTermination(long j10, TimeUnit timeUnit) {
            return this.f30181a.awaitTermination(j10, timeUnit);
        }

        @Override
        public final void execute(Runnable runnable) {
            this.f30181a.execute(runnable);
        }

        @Override
        public final boolean isShutdown() {
            return this.f30181a.isShutdown();
        }

        @Override
        public final boolean isTerminated() {
            return this.f30181a.isTerminated();
        }

        @Override
        public final void shutdown() {
            this.f30181a.shutdown();
        }

        @Override
        public final List shutdownNow() {
            return this.f30181a.shutdownNow();
        }

        public final String toString() {
            return super.toString() + "[" + this.f30181a + "]";
        }
    }

    public static Executor a() {
        return DirectExecutor.INSTANCE;
    }

    public static t b(ExecutorService executorService) {
        if (executorService instanceof t) {
            return (t) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new ScheduledListeningDecorator((ScheduledExecutorService) executorService) : new c(executorService);
    }

    static Executor c(Executor executor, AbstractFuture abstractFuture) {
        com.google.common.base.m.o(executor);
        com.google.common.base.m.o(abstractFuture);
        return executor == a() ? executor : new a(executor, abstractFuture);
    }
}
