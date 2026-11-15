package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableList;
import defpackage.gj;
import defpackage.im5;
import defpackage.j45;
import defpackage.j94;
import defpackage.k45;
import defpackage.k94;
import defpackage.lk4;
import defpackage.o74;
import defpackage.wfb;
import defpackage.xd8;
import defpackage.zq6;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public abstract class Futures extends lk4 {

    public static final class CallbackListener<V> implements Runnable {
        final j94 callback;
        final Future<V> future;

        public CallbackListener(Future<V> future, j94 j94Var) {
            this.future = future;
            this.callback = j94Var;
        }

        @Override
        public void run() {
            Throwable thA;
            Future<V> future = this.future;
            if ((future instanceof j45) && (thA = k45.a((j45) future)) != null) {
                this.callback.onFailure(thA);
                return;
            }
            try {
                this.callback.onSuccess(Futures.e(this.future));
            } catch (ExecutionException e) {
                this.callback.onFailure(e.getCause());
            } catch (Throwable th) {
                this.callback.onFailure(th);
            }
        }

        public String toString() {
            return zq6.b(this).j(this.callback).toString();
        }
    }

    public static final class NonCancellationPropagatingFuture<V> extends AbstractFuture.h implements Runnable {
        private im5 delegate;

        public NonCancellationPropagatingFuture(im5 im5Var) {
            this.delegate = im5Var;
        }

        @Override
        public void afterDone() {
            this.delegate = null;
        }

        @Override
        public String pendingToString() {
            im5 im5Var = this.delegate;
            if (im5Var == null) {
                return null;
            }
            return "delegate=[" + im5Var + "]";
        }

        @Override
        public void run() {
            im5 im5Var = this.delegate;
            if (im5Var != null) {
                setFuture(im5Var);
            }
        }
    }

    public static final class a {
        public final boolean a;
        public final ImmutableList b;

        public a(boolean z, ImmutableList immutableList, k94 k94Var) {
            this(z, immutableList);
        }

        public im5 a(Callable callable, Executor executor) {
            return new CombinedFuture(this.b, this.a, executor, callable);
        }

        public a(boolean z, ImmutableList immutableList) {
            this.a = z;
            this.b = immutableList;
        }
    }

    public static void a(im5 im5Var, j94 j94Var, Executor executor) {
        xd8.o(j94Var);
        im5Var.addListener(new CallbackListener(im5Var, j94Var), executor);
    }

    public static im5 b(im5 im5Var, Class cls, o74 o74Var, Executor executor) {
        return AbstractCatchingFuture.create(im5Var, cls, o74Var, executor);
    }

    public static im5 c(im5 im5Var, Class cls, gj gjVar, Executor executor) {
        return AbstractCatchingFuture.createAsync(im5Var, cls, gjVar, executor);
    }

    public static Object d(Future future, Class cls, long j, TimeUnit timeUnit) {
        return FuturesGetChecked.f(future, cls, j, timeUnit);
    }

    public static Object e(Future future) {
        xd8.x(future.isDone(), "Future was expected to be done: %s", future);
        return wfb.a(future);
    }

    public static im5 f() {
        f.a aVar = f.a.b;
        return aVar != null ? aVar : new f.a();
    }

    public static im5 g(Throwable th) {
        xd8.o(th);
        return new f.b(th);
    }

    public static im5 h() {
        return f.c;
    }

    public static im5 i(im5 im5Var, o74 o74Var, Executor executor) {
        return AbstractTransformFuture.create(im5Var, o74Var, executor);
    }

    public static im5 j(im5 im5Var, gj gjVar, Executor executor) {
        return AbstractTransformFuture.createAsync(im5Var, gjVar, executor);
    }

    public static a k(im5... im5VarArr) {
        return new a(false, ImmutableList.copyOf(im5VarArr), null);
    }

    public static im5 l(im5 im5Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return im5Var.isDone() ? im5Var : TimeoutFuture.r(im5Var, j, timeUnit, scheduledExecutorService);
    }
}
