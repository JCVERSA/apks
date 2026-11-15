package io.reactivex.internal.operators.flowable;

import defpackage.br0;
import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.mv9;
import defpackage.nm9;
import defpackage.r14;
import defpackage.rc2;
import defpackage.re3;
import defpackage.t14;
import defpackage.w14;
import defpackage.yw8;
import io.reactivex.BackpressureStrategy;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class FlowableCreate extends r14 {
    public final w14 c;
    public final BackpressureStrategy d;

    public static abstract class BaseEmitter<T> extends AtomicLong implements t14, f2a {
        private static final long serialVersionUID = 7326289992464377023L;
        final d2a downstream;
        final SequentialDisposable serial = new SequentialDisposable();

        public BaseEmitter(d2a d2aVar) {
            this.downstream = d2aVar;
        }

        @Override
        public final void cancel() {
            this.serial.dispose();
            onUnsubscribed();
        }

        public void complete() {
            if (isCancelled()) {
                return;
            }
            try {
                this.downstream.onComplete();
            } finally {
                this.serial.dispose();
            }
        }

        public boolean error(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isCancelled()) {
                return false;
            }
            try {
                this.downstream.onError(th);
                return true;
            } finally {
                this.serial.dispose();
            }
        }

        @Override
        public final boolean isCancelled() {
            return this.serial.isDisposed();
        }

        @Override
        public void onComplete() {
            complete();
        }

        @Override
        public final void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            yw8.s(th);
        }

        @Override
        public abstract void onNext(Object obj);

        public void onRequested() {
        }

        public void onUnsubscribed() {
        }

        @Override
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                i50.a(this, j);
                onRequested();
            }
        }

        public final long requested() {
            return get();
        }

        public final t14 serialize() {
            return new SerializedEmitter(this);
        }

        public final void setCancellable(br0 br0Var) {
            setDisposable(new CancellableDisposable(br0Var));
        }

        @Override
        public final void setDisposable(rc2 rc2Var) {
            this.serial.update(rc2Var);
        }

        @Override
        public String toString() {
            return String.format("%s{%s}", getClass().getSimpleName(), super.toString());
        }

        public boolean tryOnError(Throwable th) {
            return error(th);
        }
    }

    public static final class BufferAsyncEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 2427151001689639875L;
        volatile boolean done;
        Throwable error;
        final mv9 queue;
        final AtomicInteger wip;

        public BufferAsyncEmitter(d2a d2aVar, int i) {
            super(d2aVar);
            this.queue = new mv9(i);
            this.wip = new AtomicInteger();
        }

        public void drain() {
            if (this.wip.getAndIncrement() != 0) {
                return;
            }
            d2a d2aVar = this.downstream;
            mv9 mv9Var = this.queue;
            int iAddAndGet = 1;
            do {
                long j = get();
                long j2 = 0;
                while (j2 != j) {
                    if (isCancelled()) {
                        mv9Var.clear();
                        return;
                    }
                    boolean z = this.done;
                    Object objPoll = mv9Var.poll();
                    boolean z2 = objPoll == null;
                    if (z && z2) {
                        Throwable th = this.error;
                        if (th != null) {
                            error(th);
                            return;
                        } else {
                            complete();
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    d2aVar.onNext(objPoll);
                    j2++;
                }
                if (j2 == j) {
                    if (isCancelled()) {
                        mv9Var.clear();
                        return;
                    }
                    boolean z3 = this.done;
                    boolean zIsEmpty = mv9Var.isEmpty();
                    if (z3 && zIsEmpty) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            error(th2);
                            return;
                        } else {
                            complete();
                            return;
                        }
                    }
                }
                if (j2 != 0) {
                    i50.d(this, j2);
                }
                iAddAndGet = this.wip.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override
        public void onNext(T t) {
            if (this.done || isCancelled()) {
                return;
            }
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.queue.offer(t);
                drain();
            }
        }

        @Override
        public void onRequested() {
            drain();
        }

        @Override
        public void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override
        public boolean tryOnError(Throwable th) {
            if (this.done || isCancelled()) {
                return false;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.error = th;
            this.done = true;
            drain();
            return true;
        }
    }

    public static final class DropAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        private static final long serialVersionUID = 8360058422307496563L;

        public DropAsyncEmitter(d2a d2aVar) {
            super(d2aVar);
        }

        @Override
        public void onOverflow() {
        }
    }

    public static final class ErrorAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        private static final long serialVersionUID = 338953216916120960L;

        public ErrorAsyncEmitter(d2a d2aVar) {
            super(d2aVar);
        }

        @Override
        public void onOverflow() {
            onError(new MissingBackpressureException("create: could not emit value due to lack of requests"));
        }
    }

    public static final class LatestAsyncEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 4023437720691792495L;
        volatile boolean done;
        Throwable error;
        final AtomicReference<T> queue;
        final AtomicInteger wip;

        public LatestAsyncEmitter(d2a d2aVar) {
            super(d2aVar);
            this.queue = new AtomicReference<>();
            this.wip = new AtomicInteger();
        }

        public void drain() {
            if (this.wip.getAndIncrement() != 0) {
                return;
            }
            d2a d2aVar = this.downstream;
            AtomicReference<T> atomicReference = this.queue;
            int iAddAndGet = 1;
            do {
                long j = get();
                long j2 = 0;
                while (true) {
                    if (j2 == j) {
                        break;
                    }
                    if (isCancelled()) {
                        atomicReference.lazySet(null);
                        return;
                    }
                    boolean z = this.done;
                    T andSet = atomicReference.getAndSet(null);
                    boolean z2 = andSet == null;
                    if (z && z2) {
                        Throwable th = this.error;
                        if (th != null) {
                            error(th);
                            return;
                        } else {
                            complete();
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    d2aVar.onNext(andSet);
                    j2++;
                }
                if (j2 == j) {
                    if (isCancelled()) {
                        atomicReference.lazySet(null);
                        return;
                    }
                    boolean z3 = this.done;
                    boolean z4 = atomicReference.get() == null;
                    if (z3 && z4) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            error(th2);
                            return;
                        } else {
                            complete();
                            return;
                        }
                    }
                }
                if (j2 != 0) {
                    i50.d(this, j2);
                }
                iAddAndGet = this.wip.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override
        public void onNext(T t) {
            if (this.done || isCancelled()) {
                return;
            }
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.queue.set(t);
                drain();
            }
        }

        @Override
        public void onRequested() {
            drain();
        }

        @Override
        public void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.lazySet(null);
            }
        }

        @Override
        public boolean tryOnError(Throwable th) {
            if (this.done || isCancelled()) {
                return false;
            }
            if (th == null) {
                onError(new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources."));
            }
            this.error = th;
            this.done = true;
            drain();
            return true;
        }
    }

    public static final class MissingEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 3776720187248809713L;

        public MissingEmitter(d2a d2aVar) {
            super(d2aVar);
        }

        @Override
        public void onNext(T t) {
            long j;
            if (isCancelled()) {
                return;
            }
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            this.downstream.onNext(t);
            do {
                j = get();
                if (j == 0) {
                    return;
                }
            } while (!compareAndSet(j, j - 1));
        }
    }

    public static abstract class NoOverflowBaseAsyncEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 4127754106204442833L;

        public NoOverflowBaseAsyncEmitter(d2a d2aVar) {
            super(d2aVar);
        }

        @Override
        public final void onNext(T t) {
            if (isCancelled()) {
                return;
            }
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else if (get() == 0) {
                onOverflow();
            } else {
                this.downstream.onNext(t);
                i50.d(this, 1L);
            }
        }

        public abstract void onOverflow();
    }

    public static final class SerializedEmitter<T> extends AtomicInteger implements t14 {
        private static final long serialVersionUID = 4883307006032401862L;
        volatile boolean done;
        final BaseEmitter<T> emitter;
        final AtomicThrowable error = new AtomicThrowable();
        final nm9 queue = new mv9(16);

        public SerializedEmitter(BaseEmitter<T> baseEmitter) {
            this.emitter = baseEmitter;
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        public void drainLoop() {
            BaseEmitter<T> baseEmitter = this.emitter;
            nm9 nm9Var = this.queue;
            AtomicThrowable atomicThrowable = this.error;
            int iAddAndGet = 1;
            while (!baseEmitter.isCancelled()) {
                if (atomicThrowable.get() != null) {
                    nm9Var.clear();
                    baseEmitter.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z = this.done;
                Object objPoll = nm9Var.poll();
                boolean z2 = objPoll == null;
                if (z && z2) {
                    baseEmitter.onComplete();
                    return;
                } else if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    baseEmitter.onNext(objPoll);
                }
            }
            nm9Var.clear();
        }

        @Override
        public boolean isCancelled() {
            return this.emitter.isCancelled();
        }

        @Override
        public void onComplete() {
            if (this.emitter.isCancelled() || this.done) {
                return;
            }
            this.done = true;
            drain();
        }

        @Override
        public void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            yw8.s(th);
        }

        @Override
        public void onNext(T t) {
            if (this.emitter.isCancelled() || this.done) {
                return;
            }
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.emitter.onNext(t);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                nm9 nm9Var = this.queue;
                synchronized (nm9Var) {
                    nm9Var.offer(t);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        public long requested() {
            return this.emitter.requested();
        }

        public t14 serialize() {
            return this;
        }

        public void setCancellable(br0 br0Var) {
            this.emitter.setCancellable(br0Var);
        }

        @Override
        public void setDisposable(rc2 rc2Var) {
            this.emitter.setDisposable(rc2Var);
        }

        @Override
        public String toString() {
            return this.emitter.toString();
        }

        public boolean tryOnError(Throwable th) {
            if (!this.emitter.isCancelled() && !this.done) {
                if (th == null) {
                    th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                }
                if (this.error.addThrowable(th)) {
                    this.done = true;
                    drain();
                    return true;
                }
            }
            return false;
        }
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            a = iArr;
            try {
                iArr[BackpressureStrategy.MISSING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[BackpressureStrategy.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[BackpressureStrategy.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[BackpressureStrategy.LATEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public FlowableCreate(w14 w14Var, BackpressureStrategy backpressureStrategy) {
        this.c = w14Var;
        this.d = backpressureStrategy;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public void q(d2a d2aVar) {
        BaseEmitter missingEmitter;
        int i = a.a[this.d.ordinal()];
        if (i == 1) {
            missingEmitter = new MissingEmitter(d2aVar);
        } else if (i == 2) {
            missingEmitter = new ErrorAsyncEmitter(d2aVar);
        } else if (i != 3) {
            missingEmitter = i != 4 ? new BufferAsyncEmitter(d2aVar, r14.a()) : new LatestAsyncEmitter(d2aVar);
        } else {
            missingEmitter = new DropAsyncEmitter(d2aVar);
        }
        d2aVar.onSubscribe(missingEmitter);
        try {
            this.c.subscribe(missingEmitter);
        } catch (Throwable th) {
            re3.b(th);
            missingEmitter.onError(th);
        }
    }
}
