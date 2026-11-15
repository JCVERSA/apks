package com.google.common.util.concurrent;

import com.google.common.util.concurrent.CombinedFuture.CombinedFutureInterruptibleTask;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

abstract class CombinedFuture extends c {

    private final class AsyncCallableInterruptibleTask extends CombinedFutureInterruptibleTask<r> {
        private final e callable;
        final CombinedFuture this$0;

        AsyncCallableInterruptibleTask(CombinedFuture combinedFuture, e eVar, Executor executor) {
            super(combinedFuture, executor);
            android.support.v4.media.session.c.a(com.google.common.base.m.o(eVar));
        }

        String toPendingString() {
            throw null;
        }

        public r m291runInterruptibly() throws Exception {
            throw null;
        }

        public void setValue(r rVar) {
            throw null;
        }
    }

    private final class CallableInterruptibleTask extends CombinedFutureInterruptibleTask<Object> {
        private final Callable<Object> callable;
        final CombinedFuture this$0;

        CallableInterruptibleTask(CombinedFuture combinedFuture, Callable<Object> callable, Executor executor) {
            super(combinedFuture, executor);
            this.callable = (Callable) com.google.common.base.m.o(callable);
        }

        Object runInterruptibly() throws Exception {
            return this.callable.call();
        }

        void setValue(Object obj) {
            throw null;
        }

        String toPendingString() {
            return this.callable.toString();
        }
    }

    private abstract class CombinedFutureInterruptibleTask<T> extends InterruptibleTask<T> {
        private final Executor listenerExecutor;
        final CombinedFuture this$0;

        CombinedFutureInterruptibleTask(CombinedFuture combinedFuture, Executor executor) {
            this.listenerExecutor = (Executor) com.google.common.base.m.o(executor);
        }

        @Override
        final void afterRanInterruptiblyFailure(Throwable th2) {
            CombinedFuture.s(null, null);
            if (th2 instanceof ExecutionException) {
                ((ExecutionException) th2).getCause();
                throw null;
            }
            if (!(th2 instanceof CancellationException)) {
                throw null;
            }
            throw null;
        }

        @Override
        final void afterRanInterruptiblySuccess(T t10) {
            CombinedFuture.s(null, null);
            setValue(t10);
        }

        final void execute() {
            try {
                this.listenerExecutor.execute(this);
            } catch (RejectedExecutionException unused) {
                throw null;
            }
        }

        @Override
        final boolean isDone() {
            throw null;
        }

        abstract void setValue(T t10);
    }

    static CombinedFutureInterruptibleTask s(CombinedFuture combinedFuture, CombinedFutureInterruptibleTask combinedFutureInterruptibleTask) {
        throw null;
    }
}
