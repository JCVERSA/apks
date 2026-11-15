package io.reactivex.rxjava3.internal.operators.observable;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableFlatMap extends a {

    final yx.h f62397b;

    final boolean f62398c;

    final int f62399d;

    final int f62400e;

    static final class InnerObserver<T, U> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.o {
        private static final long serialVersionUID = -4606175640614850599L;
        volatile boolean done;
        int fusionMode;

        final long f62401id;
        final MergeObserver<T, U> parent;
        volatile io.reactivex.rxjava3.operators.g queue;

        InnerObserver(MergeObserver<T, U> mergeObserver, long j10) {
            this.f62401id = j10;
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
        public void onError(Throwable th2) {
            if (this.parent.errors.tryAddThrowableOrReport(th2)) {
                MergeObserver<T, U> mergeObserver = this.parent;
                if (!mergeObserver.delayErrors) {
                    mergeObserver.disposeAll();
                }
                this.done = true;
                this.parent.drain();
            }
        }

        @Override
        public void onNext(U u10) {
            if (this.fusionMode == 0) {
                this.parent.tryEmit(u10, this);
            } else {
                this.parent.drain();
            }
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar) && (cVar instanceof io.reactivex.rxjava3.operators.b)) {
                io.reactivex.rxjava3.operators.b bVar = (io.reactivex.rxjava3.operators.b) cVar;
                int iRequestFusion = bVar.requestFusion(7);
                if (iRequestFusion == 1) {
                    this.fusionMode = iRequestFusion;
                    this.queue = bVar;
                    this.done = true;
                    this.parent.drain();
                    return;
                }
                if (iRequestFusion == 2) {
                    this.fusionMode = iRequestFusion;
                    this.queue = bVar;
                }
            }
        }
    }

    static final class MergeObserver<T, U> extends AtomicInteger implements io.reactivex.rxjava3.disposables.c, io.reactivex.rxjava3.core.o {
        private static final long serialVersionUID = -2117620485640801370L;
        final int bufferSize;
        final boolean delayErrors;
        volatile boolean disposed;
        volatile boolean done;
        final io.reactivex.rxjava3.core.o downstream;
        final AtomicThrowable errors = new AtomicThrowable();
        int lastIndex;
        final yx.h mapper;
        final int maxConcurrency;
        final AtomicReference<InnerObserver<?, ?>[]> observers;
        volatile io.reactivex.rxjava3.operators.f queue;
        Queue<io.reactivex.rxjava3.core.m> sources;
        long uniqueId;
        io.reactivex.rxjava3.disposables.c upstream;
        int wip;
        static final InnerObserver<?, ?>[] EMPTY = new InnerObserver[0];
        static final InnerObserver<?, ?>[] CANCELLED = new InnerObserver[0];

        MergeObserver(io.reactivex.rxjava3.core.o oVar, yx.h hVar, boolean z10, int i10, int i11) {
            this.downstream = oVar;
            this.mapper = hVar;
            this.delayErrors = z10;
            this.maxConcurrency = i10;
            this.bufferSize = i11;
            if (i10 != Integer.MAX_VALUE) {
                this.sources = new ArrayDeque(i10);
            }
            this.observers = new AtomicReference<>(EMPTY);
        }

        boolean addInner(InnerObserver<T, U> innerObserver) {
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
            } while (!j0.a(this.observers, innerObserverArr, innerObserverArr2));
            return true;
        }

        boolean checkTerminate() {
            if (this.disposed) {
                return true;
            }
            Throwable th2 = this.errors.get();
            if (this.delayErrors || th2 == null) {
                return false;
            }
            disposeAll();
            this.errors.tryTerminateConsumer(this.downstream);
            return true;
        }

        @Override
        public void dispose() {
            this.disposed = true;
            if (disposeAll()) {
                this.errors.tryTerminateAndReport();
            }
        }

        boolean disposeAll() {
            this.upstream.dispose();
            AtomicReference<InnerObserver<?, ?>[]> atomicReference = this.observers;
            InnerObserver<?, ?>[] innerObserverArr = CANCELLED;
            InnerObserver<?, ?>[] andSet = atomicReference.getAndSet(innerObserverArr);
            if (andSet == innerObserverArr) {
                return false;
            }
            for (InnerObserver<?, ?> innerObserver : andSet) {
                innerObserver.dispose();
            }
            return true;
        }

        void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        /* JADX WARN: Code duplicated, block: B:104:0x00c5 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:67:0x00c4 A[PHI: r4
          0x00c4: PHI (r4v6 int) = (r4v4 int), (r4v7 int) binds: [B:57:0x00aa, B:66:0x00c2] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Multi-variable type inference failed */
        void drainLoop() {
            int size;
            boolean z10;
            io.reactivex.rxjava3.core.o oVar = this.downstream;
            int iAddAndGet = 1;
            while (!checkTerminate()) {
                io.reactivex.rxjava3.operators.f fVar = this.queue;
                int i10 = 0;
                if (fVar != null) {
                    while (!checkTerminate()) {
                        Object objPoll = fVar.poll();
                        if (objPoll != null) {
                            oVar.onNext(objPoll);
                            i10++;
                        }
                    }
                    return;
                }
                if (i10 == 0) {
                    boolean z11 = this.done;
                    io.reactivex.rxjava3.operators.f fVar2 = this.queue;
                    InnerObserver<?, ?>[] innerObserverArr = this.observers.get();
                    int length = innerObserverArr.length;
                    if (this.maxConcurrency != Integer.MAX_VALUE) {
                        synchronized (this) {
                            size = this.sources.size();
                        }
                    } else {
                        size = 0;
                    }
                    if (z11 && ((fVar2 == null || fVar2.isEmpty()) && length == 0 && size == 0)) {
                        this.errors.tryTerminateConsumer(this.downstream);
                        return;
                    }
                    if (length != 0) {
                        int iMin = Math.min(length - 1, this.lastIndex);
                        for (int i11 = 0; i11 < length; i11++) {
                            if (checkTerminate()) {
                                return;
                            }
                            InnerObserver<T, U> innerObserver = innerObserverArr[iMin];
                            io.reactivex.rxjava3.operators.g gVar = innerObserver.queue;
                            if (gVar != null) {
                                do {
                                    try {
                                        Object objPoll2 = gVar.poll();
                                        if (objPoll2 == null) {
                                            z10 = innerObserver.done;
                                            io.reactivex.rxjava3.operators.g gVar2 = innerObserver.queue;
                                            if (z10 && (gVar2 == null || gVar2.isEmpty())) {
                                                removeInner(innerObserver);
                                                i10++;
                                            }
                                            iMin++;
                                            if (iMin == length) {
                                                iMin = 0;
                                            }
                                        } else {
                                            oVar.onNext(objPoll2);
                                        }
                                    } catch (Throwable th2) {
                                        io.reactivex.rxjava3.exceptions.a.b(th2);
                                        innerObserver.dispose();
                                        this.errors.tryAddThrowableOrReport(th2);
                                        if (checkTerminate()) {
                                            return;
                                        }
                                        removeInner(innerObserver);
                                        i10++;
                                        iMin++;
                                        if (iMin == length) {
                                        }
                                    }
                                } while (!checkTerminate());
                                return;
                            }
                            z10 = innerObserver.done;
                            io.reactivex.rxjava3.operators.g gVar3 = innerObserver.queue;
                            if (z10) {
                                removeInner(innerObserver);
                                i10++;
                            }
                            iMin++;
                            if (iMin == length) {
                                iMin = 0;
                            }
                        }
                        this.lastIndex = iMin;
                    }
                    if (i10 == 0) {
                        iAddAndGet = addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                        subscribeMore(i10);
                    }
                } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                    subscribeMore(i10);
                }
            }
        }

        @Override
        public boolean isDisposed() {
            return this.disposed;
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
        public void onError(Throwable th2) {
            if (this.done) {
                dy.a.r(th2);
            } else if (this.errors.tryAddThrowableOrReport(th2)) {
                this.done = true;
                drain();
            }
        }

        @Override
        public void onNext(T t10) {
            if (this.done) {
                return;
            }
            try {
                Object objApply = this.mapper.apply(t10);
                Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
                io.reactivex.rxjava3.core.m mVar = (io.reactivex.rxjava3.core.m) objApply;
                if (this.maxConcurrency != Integer.MAX_VALUE) {
                    synchronized (this) {
                        try {
                            int i10 = this.wip;
                            if (i10 == this.maxConcurrency) {
                                this.sources.offer(mVar);
                                return;
                            }
                            this.wip = i10 + 1;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                subscribeInner(mVar);
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                this.upstream.dispose();
                onError(th3);
            }
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            if (DisposableHelper.validate(this.upstream, cVar)) {
                this.upstream = cVar;
                this.downstream.onSubscribe(this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void removeInner(InnerObserver<T, U> innerObserver) {
            InnerObserver<?, ?>[] innerObserverArr;
            InnerObserver<?, ?>[] innerObserverArr2;
            do {
                innerObserverArr = this.observers.get();
                int length = innerObserverArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        i10 = -1;
                        break;
                    } else if (innerObserverArr[i10] == innerObserver) {
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i10 < 0) {
                    return;
                }
                if (length == 1) {
                    innerObserverArr2 = EMPTY;
                } else {
                    InnerObserver<?, ?>[] innerObserverArr3 = new InnerObserver[length - 1];
                    System.arraycopy(innerObserverArr, 0, innerObserverArr3, 0, i10);
                    System.arraycopy(innerObserverArr, i10 + 1, innerObserverArr3, i10, (length - i10) - 1);
                    innerObserverArr2 = innerObserverArr3;
                }
            } while (!j0.a(this.observers, innerObserverArr, innerObserverArr2));
        }

        void subscribeInner(io.reactivex.rxjava3.core.m mVar) {
            boolean z10;
            while (mVar instanceof yx.k) {
                if (!tryEmitScalar((yx.k) mVar) || this.maxConcurrency == Integer.MAX_VALUE) {
                    return;
                }
                synchronized (this) {
                    try {
                        mVar = this.sources.poll();
                        if (mVar == null) {
                            z10 = true;
                            this.wip--;
                        } else {
                            z10 = false;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (z10) {
                    drain();
                    return;
                }
            }
            long j10 = this.uniqueId;
            this.uniqueId = 1 + j10;
            InnerObserver<T, U> innerObserver = new InnerObserver<>(this, j10);
            if (addInner(innerObserver)) {
                mVar.subscribe(innerObserver);
            }
        }

        void subscribeMore(int i10) {
            while (true) {
                int i11 = i10 - 1;
                if (i10 == 0) {
                    return;
                }
                synchronized (this) {
                    try {
                        io.reactivex.rxjava3.core.m mVarPoll = this.sources.poll();
                        if (mVarPoll == null) {
                            this.wip--;
                        } else {
                            subscribeInner(mVarPoll);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                i10 = i11;
            }
        }

        void tryEmit(U u10, InnerObserver<T, U> innerObserver) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.downstream.onNext(u10);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                io.reactivex.rxjava3.operators.g hVar = innerObserver.queue;
                if (hVar == null) {
                    hVar = new io.reactivex.rxjava3.operators.h(this.bufferSize);
                    innerObserver.queue = hVar;
                }
                hVar.offer(u10);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        boolean tryEmitScalar(yx.k kVar) {
            try {
                Object obj = kVar.get();
                if (obj == null) {
                    return true;
                }
                if (get() == 0 && compareAndSet(0, 1)) {
                    this.downstream.onNext(obj);
                    if (decrementAndGet() == 0) {
                        return true;
                    }
                } else {
                    io.reactivex.rxjava3.operators.f hVar = this.queue;
                    if (hVar == null) {
                        hVar = this.maxConcurrency == Integer.MAX_VALUE ? new io.reactivex.rxjava3.operators.h(this.bufferSize) : new SpscArrayQueue(this.maxConcurrency);
                        this.queue = hVar;
                    }
                    hVar.offer(obj);
                    if (getAndIncrement() != 0) {
                        return false;
                    }
                }
                drainLoop();
                return true;
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.errors.tryAddThrowableOrReport(th2);
                drain();
                return true;
            }
        }
    }

    public ObservableFlatMap(io.reactivex.rxjava3.core.m mVar, yx.h hVar, boolean z10, int i10, int i11) {
        super(mVar);
        this.f62397b = hVar;
        this.f62398c = z10;
        this.f62399d = i10;
        this.f62400e = i11;
    }

    @Override
    public void D(io.reactivex.rxjava3.core.o oVar) {
        if (ObservableScalarXMap.b(this.f62424a, oVar, this.f62397b)) {
            return;
        }
        this.f62424a.subscribe(new MergeObserver(oVar, this.f62397b, this.f62398c, this.f62399d, this.f62400e));
    }
}
