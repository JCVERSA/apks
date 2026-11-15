package com.google.common.util.concurrent;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

abstract class AbstractTransformFuture<I, O, F, T> extends i.a implements Runnable {
    F function;
    r inputFuture;

    private static final class AsyncTransformFuture<I, O> extends AbstractTransformFuture<I, O, f, r> {
        AsyncTransformFuture(r rVar, f fVar) {
            super(rVar, fVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        r doTransform(f fVar, Object obj) throws Exception {
            android.support.v4.media.session.c.a(fVar);
            return doTransform2((f) null, obj);
        }

        r doTransform2(f fVar, I i10) throws Exception {
            r rVarApply = fVar.apply(i10);
            com.google.common.base.m.q(rVarApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", fVar);
            return rVarApply;
        }

        @Override
        public void setResult(r rVar) {
            setFuture(rVar);
        }
    }

    private static final class TransformFuture<I, O> extends AbstractTransformFuture<I, O, com.google.common.base.f, O> {
        TransformFuture(r rVar, com.google.common.base.f fVar) {
            super(rVar, fVar);
        }

        @Override
        void setResult(O o10) {
            set(o10);
        }

        @Override
        public O doTransform(com.google.common.base.f fVar, I i10) {
            return (O) fVar.apply(i10);
        }
    }

    AbstractTransformFuture(r rVar, F f10) {
        this.inputFuture = (r) com.google.common.base.m.o(rVar);
        this.function = (F) com.google.common.base.m.o(f10);
    }

    static <I, O> r create(r rVar, com.google.common.base.f fVar, Executor executor) {
        com.google.common.base.m.o(fVar);
        TransformFuture transformFuture = new TransformFuture(rVar, fVar);
        rVar.addListener(transformFuture, MoreExecutors.c(executor, transformFuture));
        return transformFuture;
    }

    static <I, O> r createAsync(r rVar, f fVar, Executor executor) {
        com.google.common.base.m.o(executor);
        AsyncTransformFuture asyncTransformFuture = new AsyncTransformFuture(rVar, fVar);
        rVar.addListener(asyncTransformFuture, MoreExecutors.c(executor, asyncTransformFuture));
        return asyncTransformFuture;
    }

    @Override
    protected final void afterDone() {
        maybePropagateCancellationTo(this.inputFuture);
        this.inputFuture = null;
        this.function = null;
    }

    abstract T doTransform(F f10, I i10) throws Exception;

    @Override
    protected String pendingToString() {
        String str;
        r rVar = this.inputFuture;
        F f10 = this.function;
        String strPendingToString = super.pendingToString();
        if (rVar != null) {
            str = "inputFuture=[" + rVar + "], ";
        } else {
            str = "";
        }
        if (f10 != null) {
            return str + "function=[" + f10 + "]";
        }
        if (strPendingToString == null) {
            return null;
        }
        return str + strPendingToString;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void run() {
        r rVar = this.inputFuture;
        F f10 = this.function;
        if ((isCancelled() | (rVar == null)) || (f10 == null)) {
            return;
        }
        this.inputFuture = null;
        if (rVar.isCancelled()) {
            setFuture(rVar);
            return;
        }
        try {
            try {
                Object objDoTransform = doTransform(f10, Futures.d(rVar));
                this.function = null;
                setResult(objDoTransform);
            } catch (Throwable th2) {
                try {
                    w.b(th2);
                    setException(th2);
                } finally {
                    this.function = null;
                }
            }
        } catch (Error e10) {
            setException(e10);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (ExecutionException e11) {
            setException(e11.getCause());
        } catch (Exception e12) {
            setException(e12);
        }
    }

    abstract void setResult(T t10);
}
