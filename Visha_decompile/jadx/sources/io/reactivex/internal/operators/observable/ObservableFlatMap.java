package io.reactivex.internal.operators.observable;

import defpackage.ac7;
import defpackage.fm8;
import defpackage.ld7;
import defpackage.mv9;
import defpackage.n3;
import defpackage.nm9;
import defpackage.om9;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import defpackage.t74;
import defpackage.wk5;
import defpackage.yw8;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableFlatMap extends n3 {
    public final t74 c;
    public final boolean d;
    public final int e;
    public final int f;

    public static final class InnerObserver<T, U> extends AtomicReference<rc2> implements pd7 {
        private static final long serialVersionUID = -4606175640614850599L;
        volatile boolean done;
        int fusionMode;
        final long id;
        final MergeObserver<T, U> parent;
        volatile om9 queue;

        public InnerObserver(MergeObserver<T, U> mergeObserver, long j) {
            this.id = j;
            this.parent = mergeObserver;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override
        public void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override
        public void onError(Throwable th) {
            if (!this.parent.errors.addThrowable(th)) {
                yw8.s(th);
                return;
            }
            MergeObserver<T, U> mergeObserver = this.parent;
            if (!mergeObserver.delayErrors) {
                mergeObserver.disposeAll();
            }
            this.done = true;
            this.parent.drain();
        }

        @Override
        public void onNext(U u) {
            if (this.fusionMode == 0) {
                this.parent.tryEmit(u, this);
            } else {
                this.parent.drain();
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.setOnce(this, rc2Var) && (rc2Var instanceof fm8)) {
                fm8 fm8Var = (fm8) rc2Var;
                int iRequestFusion = fm8Var.requestFusion(7);
                if (iRequestFusion == 1) {
                    this.fusionMode = iRequestFusion;
                    this.queue = fm8Var;
                    this.done = true;
                    this.parent.drain();
                    return;
                }
                if (iRequestFusion == 2) {
                    this.fusionMode = iRequestFusion;
                    this.queue = fm8Var;
                }
            }
        }
    }

    public static final class MergeObserver<T, U> extends AtomicInteger implements rc2, pd7 {
        private static final long serialVersionUID = -2117620485640801370L;
        final int bufferSize;
        volatile boolean cancelled;
        final boolean delayErrors;
        volatile boolean done;
        final pd7 downstream;
        final AtomicThrowable errors = new AtomicThrowable();
        long lastId;
        int lastIndex;
        final t74 mapper;
        final int maxConcurrency;
        final AtomicReference<InnerObserver<?, ?>[]> observers;
        volatile nm9 queue;
        Queue<ld7> sources;
        long uniqueId;
        rc2 upstream;
        int wip;
        static final InnerObserver<?, ?>[] EMPTY = new InnerObserver[0];
        static final InnerObserver<?, ?>[] CANCELLED = new InnerObserver[0];

        public MergeObserver(pd7 pd7Var, t74 t74Var, boolean z, int i, int i2) {
            this.downstream = pd7Var;
            this.mapper = t74Var;
            this.delayErrors = z;
            this.maxConcurrency = i;
            this.bufferSize = i2;
            if (i != Integer.MAX_VALUE) {
                this.sources = new ArrayDeque(i);
            }
            this.observers = new AtomicReference<>(EMPTY);
        }

        public boolean addInner(InnerObserver<T, U> innerObserver) {
            InnerObserver<?, ?>[] innerObserverArr;
            InnerObserver[] innerObserverArr2;
            do {
                innerObserverArr = this.observers.get();
                if (innerObserverArr == CANCELLED) {
                    innerObserver.dispose();
                    return false;
                }
                int length = innerObserverArr.length;
                innerObserverArr2 = new InnerObserver[length + 1];
                System.arraycopy(innerObserverArr, 0, innerObserverArr2, 0, length);
                innerObserverArr2[length] = innerObserver;
            } while (!wk5.a(this.observers, innerObserverArr, innerObserverArr2));
            return true;
        }

        public boolean checkTerminate() {
            if (this.cancelled) {
                return true;
            }
            Throwable th = this.errors.get();
            if (this.delayErrors || th == null) {
                return false;
            }
            disposeAll();
            Throwable thTerminate = this.errors.terminate();
            if (thTerminate != ExceptionHelper.a) {
                this.downstream.onError(thTerminate);
            }
            return true;
        }

        @Override
        public void dispose() {
            Throwable thTerminate;
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            if (!disposeAll() || (thTerminate = this.errors.terminate()) == null || thTerminate == ExceptionHelper.a) {
                return;
            }
            yw8.s(thTerminate);
        }

        public boolean disposeAll() {
            InnerObserver<?, ?>[] andSet;
            this.upstream.dispose();
            InnerObserver<?, ?>[] innerObserverArr = this.observers.get();
            InnerObserver<?, ?>[] innerObserverArr2 = CANCELLED;
            if (innerObserverArr == innerObserverArr2 || (andSet = this.observers.getAndSet(innerObserverArr2)) == innerObserverArr2) {
                return false;
            }
            for (InnerObserver<?, ?> innerObserver : andSet) {
                innerObserver.dispose();
            }
            return true;
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        /* JADX WARN: Code duplicated, block: B:113:0x00f5 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:128:0x00fd A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:87:0x00f6  */
        /* JADX WARN: Code duplicated, block: B:90:0x00fc A[PHI: r4
          0x00fc: PHI (r4v6 int) = (r4v4 int), (r4v7 int) binds: [B:77:0x00db, B:89:0x00fa] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Multi-variable type inference failed */
        public void drainLoop() {
            int size;
            boolean z;
            pd7 pd7Var = this.downstream;
            int iAddAndGet = 1;
            while (!checkTerminate()) {
                nm9 nm9Var = this.queue;
                int i = 0;
                if (nm9Var != null) {
                    while (!checkTerminate()) {
                        Object objPoll = nm9Var.poll();
                        if (objPoll != null) {
                            pd7Var.onNext(objPoll);
                            i++;
                        }
                    }
                    return;
                }
                if (i == 0) {
                    boolean z2 = this.done;
                    nm9 nm9Var2 = this.queue;
                    InnerObserver<?, ?>[] innerObserverArr = this.observers.get();
                    int length = innerObserverArr.length;
                    if (this.maxConcurrency != Integer.MAX_VALUE) {
                        synchronized (this) {
                            size = this.sources.size();
                        }
                    } else {
                        size = 0;
                    }
                    if (z2 && ((nm9Var2 == null || nm9Var2.isEmpty()) && length == 0 && size == 0)) {
                        Throwable thTerminate = this.errors.terminate();
                        if (thTerminate != ExceptionHelper.a) {
                            if (thTerminate == null) {
                                pd7Var.onComplete();
                                return;
                            } else {
                                pd7Var.onError(thTerminate);
                                return;
                            }
                        }
                        return;
                    }
                    if (length != 0) {
                        long j = this.lastId;
                        int i2 = this.lastIndex;
                        if (length <= i2 || innerObserverArr[i2].id != j) {
                            if (length <= i2) {
                                i2 = 0;
                            }
                            for (int i3 = 0; i3 < length && innerObserverArr[i2].id != j; i3++) {
                                i2++;
                                if (i2 == length) {
                                    i2 = 0;
                                }
                            }
                            this.lastIndex = i2;
                            this.lastId = innerObserverArr[i2].id;
                        }
                        for (int i4 = 0; i4 < length; i4++) {
                            if (checkTerminate()) {
                                return;
                            }
                            InnerObserver<T, U> innerObserver = innerObserverArr[i2];
                            om9 om9Var = innerObserver.queue;
                            if (om9Var != null) {
                                do {
                                    try {
                                        Object objPoll2 = om9Var.poll();
                                        if (objPoll2 == null) {
                                            z = innerObserver.done;
                                            om9 om9Var2 = innerObserver.queue;
                                            if (z && (om9Var2 == null || om9Var2.isEmpty())) {
                                                removeInner(innerObserver);
                                                if (checkTerminate()) {
                                                    return;
                                                } else {
                                                    i++;
                                                }
                                            }
                                            i2++;
                                            if (i2 == length) {
                                                i2 = 0;
                                            }
                                        } else {
                                            pd7Var.onNext(objPoll2);
                                        }
                                    } catch (Throwable th) {
                                        re3.b(th);
                                        innerObserver.dispose();
                                        this.errors.addThrowable(th);
                                        if (checkTerminate()) {
                                            return;
                                        }
                                        removeInner(innerObserver);
                                        i++;
                                        i2++;
                                        if (i2 == length) {
                                        }
                                    }
                                } while (!checkTerminate());
                                return;
                            }
                            z = innerObserver.done;
                            om9 om9Var3 = innerObserver.queue;
                            if (z) {
                                removeInner(innerObserver);
                                if (checkTerminate()) {
                                    return;
                                } else {
                                    i++;
                                }
                            }
                            i2++;
                            if (i2 == length) {
                                i2 = 0;
                            }
                        }
                        this.lastIndex = i2;
                        this.lastId = innerObserverArr[i2].id;
                    }
                    if (i == 0) {
                        iAddAndGet = addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                        subscribeMore(i);
                    }
                } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                    subscribeMore(i);
                }
            }
        }

        @Override
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            drain();
        }

        @Override
        public void onError(Throwable th) {
            if (this.done) {
                yw8.s(th);
            } else if (!this.errors.addThrowable(th)) {
                yw8.s(th);
            } else {
                this.done = true;
                drain();
            }
        }

        @Override
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            try {
                ld7 ld7Var = (ld7) ac7.d(this.mapper.apply(t), "The mapper returned a null ObservableSource");
                if (this.maxConcurrency != Integer.MAX_VALUE) {
                    synchronized (this) {
                        try {
                            int i = this.wip;
                            if (i == this.maxConcurrency) {
                                this.sources.offer(ld7Var);
                                return;
                            }
                            this.wip = i + 1;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                subscribeInner(ld7Var);
            } catch (Throwable th2) {
                re3.b(th2);
                this.upstream.dispose();
                onError(th2);
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.upstream, rc2Var)) {
                this.upstream = rc2Var;
                this.downstream.onSubscribe(this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void removeInner(InnerObserver<T, U> innerObserver) {
            InnerObserver<?, ?>[] innerObserverArr;
            InnerObserver<?, ?>[] innerObserverArr2;
            do {
                innerObserverArr = this.observers.get();
                int length = innerObserverArr.length;
                if (length == 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    } else if (innerObserverArr[i] == innerObserver) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    innerObserverArr2 = EMPTY;
                } else {
                    InnerObserver<?, ?>[] innerObserverArr3 = new InnerObserver[length - 1];
                    System.arraycopy(innerObserverArr, 0, innerObserverArr3, 0, i);
                    System.arraycopy(innerObserverArr, i + 1, innerObserverArr3, i, (length - i) - 1);
                    innerObserverArr2 = innerObserverArr3;
                }
            } while (!wk5.a(this.observers, innerObserverArr, innerObserverArr2));
        }

        public void subscribeInner(ld7 ld7Var) {
            boolean z;
            while (ld7Var instanceof Callable) {
                if (!tryEmitScalar((Callable) ld7Var) || this.maxConcurrency == Integer.MAX_VALUE) {
                    return;
                }
                synchronized (this) {
                    try {
                        ld7Var = this.sources.poll();
                        if (ld7Var == null) {
                            z = true;
                            this.wip--;
                        } else {
                            z = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z) {
                    drain();
                    return;
                }
            }
            long j = this.uniqueId;
            this.uniqueId = 1 + j;
            InnerObserver<T, U> innerObserver = new InnerObserver<>(this, j);
            if (addInner(innerObserver)) {
                ld7Var.subscribe(innerObserver);
            }
        }

        public void subscribeMore(int i) {
            while (true) {
                int i2 = i - 1;
                if (i == 0) {
                    return;
                }
                synchronized (this) {
                    try {
                        ld7 ld7VarPoll = this.sources.poll();
                        if (ld7VarPoll == null) {
                            this.wip--;
                        } else {
                            subscribeInner(ld7VarPoll);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                i = i2;
            }
        }

        public void tryEmit(U u, InnerObserver<T, U> innerObserver) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.downstream.onNext(u);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                om9 mv9Var = innerObserver.queue;
                if (mv9Var == null) {
                    mv9Var = new mv9(this.bufferSize);
                    innerObserver.queue = mv9Var;
                }
                mv9Var.offer(u);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        public boolean tryEmitScalar(Callable<? extends U> callable) {
            try {
                U uCall = callable.call();
                if (uCall == null) {
                    return true;
                }
                if (get() == 0 && compareAndSet(0, 1)) {
                    this.downstream.onNext(uCall);
                    if (decrementAndGet() == 0) {
                        return true;
                    }
                } else {
                    nm9 mv9Var = this.queue;
                    if (mv9Var == null) {
                        mv9Var = this.maxConcurrency == Integer.MAX_VALUE ? new mv9(this.bufferSize) : new SpscArrayQueue(this.maxConcurrency);
                        this.queue = mv9Var;
                    }
                    if (!mv9Var.offer(uCall)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return true;
                    }
                    if (getAndIncrement() != 0) {
                        return false;
                    }
                }
                drainLoop();
                return true;
            } catch (Throwable th) {
                re3.b(th);
                this.errors.addThrowable(th);
                drain();
                return true;
            }
        }
    }

    public ObservableFlatMap(ld7 ld7Var, t74 t74Var, boolean z, int i, int i2) {
        super(ld7Var);
        this.c = t74Var;
        this.d = z;
        this.e = i;
        this.f = i2;
    }

    @Override
    public void c0(pd7 pd7Var) {
        if (ObservableScalarXMap.b(this.b, pd7Var, this.c)) {
            return;
        }
        this.b.subscribe(new MergeObserver(pd7Var, this.c, this.d, this.e, this.f));
    }
}
