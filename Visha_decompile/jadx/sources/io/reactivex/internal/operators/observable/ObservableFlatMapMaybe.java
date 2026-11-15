package io.reactivex.internal.operators.observable;

import defpackage.ac7;
import defpackage.gd1;
import defpackage.k96;
import defpackage.l96;
import defpackage.ld7;
import defpackage.mc7;
import defpackage.mv9;
import defpackage.n3;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import defpackage.t74;
import defpackage.wk5;
import defpackage.yw8;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableFlatMapMaybe extends n3 {
    public final t74 c;
    public final boolean d;

    public static final class FlatMapMaybeObserver<T, R> extends AtomicInteger implements pd7, rc2 {
        private static final long serialVersionUID = 8600231336733376951L;
        volatile boolean cancelled;
        final boolean delayErrors;
        final pd7 downstream;
        final t74 mapper;
        rc2 upstream;
        final gd1 set = new gd1();
        final AtomicThrowable errors = new AtomicThrowable();
        final AtomicInteger active = new AtomicInteger(1);
        final AtomicReference<mv9> queue = new AtomicReference<>();

        public final class InnerObserver extends AtomicReference<rc2> implements k96, rc2 {
            private static final long serialVersionUID = -502562646270949838L;

            public InnerObserver() {
            }

            @Override
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override
            public void onComplete() {
                FlatMapMaybeObserver.this.innerComplete(this);
            }

            @Override
            public void onError(Throwable th) {
                FlatMapMaybeObserver.this.innerError(this, th);
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
                DisposableHelper.setOnce(this, rc2Var);
            }

            @Override
            public void onSuccess(R r) {
                FlatMapMaybeObserver.this.innerSuccess(this, r);
            }
        }

        public FlatMapMaybeObserver(pd7 pd7Var, t74 t74Var, boolean z) {
            this.downstream = pd7Var;
            this.mapper = t74Var;
            this.delayErrors = z;
        }

        public void clear() {
            mv9 mv9Var = this.queue.get();
            if (mv9Var != null) {
                mv9Var.clear();
            }
        }

        @Override
        public void dispose() {
            this.cancelled = true;
            this.upstream.dispose();
            this.set.dispose();
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        public void drainLoop() {
            pd7 pd7Var = this.downstream;
            AtomicInteger atomicInteger = this.active;
            AtomicReference<mv9> atomicReference = this.queue;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (!this.delayErrors && this.errors.get() != null) {
                    Throwable thTerminate = this.errors.terminate();
                    clear();
                    pd7Var.onError(thTerminate);
                    return;
                }
                boolean z = atomicInteger.get() == 0;
                mv9 mv9Var = atomicReference.get();
                Object objPoll = mv9Var != null ? mv9Var.poll() : null;
                boolean z2 = objPoll == null;
                if (z && z2) {
                    Throwable thTerminate2 = this.errors.terminate();
                    if (thTerminate2 != null) {
                        pd7Var.onError(thTerminate2);
                        return;
                    } else {
                        pd7Var.onComplete();
                        return;
                    }
                }
                if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    pd7Var.onNext(objPoll);
                }
            }
            clear();
        }

        public mv9 getOrCreateQueue() {
            mv9 mv9Var;
            do {
                mv9 mv9Var2 = this.queue.get();
                if (mv9Var2 != null) {
                    return mv9Var2;
                }
                mv9Var = new mv9(mc7.c());
            } while (!wk5.a(this.queue, null, mv9Var));
            return mv9Var;
        }

        public void innerComplete(FlatMapMaybeObserver<T, R>.InnerObserver innerObserver) {
            this.set.a(innerObserver);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z = this.active.decrementAndGet() == 0;
                    mv9 mv9Var = this.queue.get();
                    if (!z || (mv9Var != null && !mv9Var.isEmpty())) {
                        if (decrementAndGet() == 0) {
                            return;
                        }
                        drainLoop();
                        return;
                    } else {
                        Throwable thTerminate = this.errors.terminate();
                        if (thTerminate != null) {
                            this.downstream.onError(thTerminate);
                            return;
                        } else {
                            this.downstream.onComplete();
                            return;
                        }
                    }
                }
            }
            this.active.decrementAndGet();
            drain();
        }

        public void innerError(FlatMapMaybeObserver<T, R>.InnerObserver innerObserver, Throwable th) {
            this.set.a(innerObserver);
            if (!this.errors.addThrowable(th)) {
                yw8.s(th);
                return;
            }
            if (!this.delayErrors) {
                this.upstream.dispose();
                this.set.dispose();
            }
            this.active.decrementAndGet();
            drain();
        }

        /* JADX WARN: Code duplicated, block: B:22:0x004e  */
        /* JADX WARN: Code duplicated, block: B:28:0x0062 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:34:0x0053 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public void innerSuccess(FlatMapMaybeObserver<T, R>.InnerObserver innerObserver, R r) {
            mv9 orCreateQueue;
            this.set.a(innerObserver);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    this.downstream.onNext(r);
                    boolean z = this.active.decrementAndGet() == 0;
                    mv9 mv9Var = this.queue.get();
                    if (z && (mv9Var == null || mv9Var.isEmpty())) {
                        Throwable thTerminate = this.errors.terminate();
                        if (thTerminate != null) {
                            this.downstream.onError(thTerminate);
                            return;
                        } else {
                            this.downstream.onComplete();
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                } else {
                    orCreateQueue = getOrCreateQueue();
                    synchronized (orCreateQueue) {
                        orCreateQueue.offer(r);
                    }
                    this.active.decrementAndGet();
                    if (getAndIncrement() != 0) {
                        return;
                    }
                }
            } else {
                orCreateQueue = getOrCreateQueue();
                synchronized (orCreateQueue) {
                    orCreateQueue.offer(r);
                    this.active.decrementAndGet();
                    if (getAndIncrement() != 0) {
                        return;
                    }
                }
            }
            drainLoop();
        }

        @Override
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override
        public void onComplete() {
            this.active.decrementAndGet();
            drain();
        }

        @Override
        public void onError(Throwable th) {
            this.active.decrementAndGet();
            if (!this.errors.addThrowable(th)) {
                yw8.s(th);
                return;
            }
            if (!this.delayErrors) {
                this.set.dispose();
            }
            drain();
        }

        @Override
        public void onNext(T t) {
            try {
                l96 l96Var = (l96) ac7.d(this.mapper.apply(t), "The mapper returned a null MaybeSource");
                this.active.getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (this.cancelled || !this.set.b(innerObserver)) {
                    return;
                }
                l96Var.a(innerObserver);
            } catch (Throwable th) {
                re3.b(th);
                this.upstream.dispose();
                onError(th);
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.upstream, rc2Var)) {
                this.upstream = rc2Var;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMapMaybe(ld7 ld7Var, t74 t74Var, boolean z) {
        super(ld7Var);
        this.c = t74Var;
        this.d = z;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new FlatMapMaybeObserver(pd7Var, this.c, this.d));
    }
}
