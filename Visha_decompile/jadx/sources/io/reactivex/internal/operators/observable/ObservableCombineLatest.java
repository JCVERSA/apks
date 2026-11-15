package io.reactivex.internal.operators.observable;

import defpackage.ac7;
import defpackage.ld7;
import defpackage.mc7;
import defpackage.mv9;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import defpackage.t74;
import defpackage.yw8;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableCombineLatest extends mc7 {
    public final ld7[] b;
    public final Iterable c;
    public final t74 d;
    public final int e;
    public final boolean f;

    public static final class CombinerObserver<T, R> extends AtomicReference<rc2> implements pd7 {
        private static final long serialVersionUID = -4823716997131257941L;
        final int index;
        final LatestCoordinator<T, R> parent;

        public CombinerObserver(LatestCoordinator<T, R> latestCoordinator, int i) {
            this.parent = latestCoordinator;
            this.index = i;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override
        public void onComplete() {
            this.parent.innerComplete(this.index);
        }

        @Override
        public void onError(Throwable th) {
            this.parent.innerError(this.index, th);
        }

        @Override
        public void onNext(T t) {
            this.parent.innerNext(this.index, t);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.setOnce(this, rc2Var);
        }
    }

    public static final class LatestCoordinator<T, R> extends AtomicInteger implements rc2 {
        private static final long serialVersionUID = 8567835998786448817L;
        int active;
        volatile boolean cancelled;
        final t74 combiner;
        int complete;
        final boolean delayError;
        volatile boolean done;
        final pd7 downstream;
        final AtomicThrowable errors = new AtomicThrowable();
        Object[] latest;
        final CombinerObserver<T, R>[] observers;
        final mv9 queue;

        public LatestCoordinator(pd7 pd7Var, t74 t74Var, int i, int i2, boolean z) {
            this.downstream = pd7Var;
            this.combiner = t74Var;
            this.delayError = z;
            this.latest = new Object[i];
            CombinerObserver<T, R>[] combinerObserverArr = new CombinerObserver[i];
            for (int i3 = 0; i3 < i; i3++) {
                combinerObserverArr[i3] = new CombinerObserver<>(this, i3);
            }
            this.observers = combinerObserverArr;
            this.queue = new mv9(i2);
        }

        public void cancelSources() {
            for (CombinerObserver<T, R> combinerObserver : this.observers) {
                combinerObserver.dispose();
            }
        }

        public void clear(mv9 mv9Var) {
            synchronized (this) {
                this.latest = null;
            }
            mv9Var.clear();
        }

        @Override
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelSources();
            if (getAndIncrement() == 0) {
                clear(this.queue);
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            mv9 mv9Var = this.queue;
            pd7 pd7Var = this.downstream;
            boolean z = this.delayError;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (!z && this.errors.get() != null) {
                    cancelSources();
                    clear(mv9Var);
                    pd7Var.onError(this.errors.terminate());
                    return;
                }
                boolean z2 = this.done;
                Object[] objArr = (Object[]) mv9Var.poll();
                boolean z3 = objArr == null;
                if (z2 && z3) {
                    clear(mv9Var);
                    Throwable thTerminate = this.errors.terminate();
                    if (thTerminate == null) {
                        pd7Var.onComplete();
                        return;
                    } else {
                        pd7Var.onError(thTerminate);
                        return;
                    }
                }
                if (z3) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    try {
                        pd7Var.onNext(ac7.d(this.combiner.apply(objArr), "The combiner returned a null value"));
                    } catch (Throwable th) {
                        re3.b(th);
                        this.errors.addThrowable(th);
                        cancelSources();
                        clear(mv9Var);
                        pd7Var.onError(this.errors.terminate());
                        return;
                    }
                }
            }
            clear(mv9Var);
        }

        /* JADX WARN: Code duplicated, block: B:16:0x001b A[Catch: all -> 0x0007, TryCatch #0 {all -> 0x0007, blocks: (B:3:0x0001, B:5:0x0005, B:9:0x0009, B:14:0x0013, B:17:0x001d, B:16:0x001b), top: B:24:0x0001 }] */
        public void innerComplete(int i) {
            synchronized (this) {
                try {
                    Object[] objArr = this.latest;
                    if (objArr == null) {
                        return;
                    }
                    boolean z = objArr[i] == null;
                    if (z) {
                        this.done = true;
                    } else {
                        int i2 = this.complete + 1;
                        this.complete = i2;
                        if (i2 == objArr.length) {
                            this.done = true;
                        }
                    }
                    if (z) {
                        cancelSources();
                    }
                    drain();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0027 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:7:0x000e, B:9:0x0012, B:13:0x0016, B:18:0x001f, B:21:0x0029, B:20:0x0027), top: B:30:0x000e }] */
        public void innerError(int i, Throwable th) {
            if (!this.errors.addThrowable(th)) {
                yw8.s(th);
                return;
            }
            boolean z = true;
            if (this.delayError) {
                synchronized (this) {
                    try {
                        Object[] objArr = this.latest;
                        if (objArr == null) {
                            return;
                        }
                        boolean z2 = objArr[i] == null;
                        if (z2) {
                            this.done = true;
                        } else {
                            int i2 = this.complete + 1;
                            this.complete = i2;
                            if (i2 == objArr.length) {
                                this.done = true;
                            }
                        }
                        z = z2;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            if (z) {
                cancelSources();
            }
            drain();
        }

        public void innerNext(int i, T t) {
            boolean z;
            synchronized (this) {
                try {
                    Object[] objArr = this.latest;
                    if (objArr == null) {
                        return;
                    }
                    Object obj = objArr[i];
                    int i2 = this.active;
                    if (obj == null) {
                        i2++;
                        this.active = i2;
                    }
                    objArr[i] = t;
                    if (i2 == objArr.length) {
                        this.queue.offer(objArr.clone());
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        drain();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public boolean isDisposed() {
            return this.cancelled;
        }

        public void subscribe(ld7[] ld7VarArr) {
            CombinerObserver<T, R>[] combinerObserverArr = this.observers;
            int length = combinerObserverArr.length;
            this.downstream.onSubscribe(this);
            for (int i = 0; i < length && !this.done && !this.cancelled; i++) {
                ld7VarArr[i].subscribe(combinerObserverArr[i]);
            }
        }
    }

    public ObservableCombineLatest(ld7[] ld7VarArr, Iterable iterable, t74 t74Var, int i, boolean z) {
        this.b = ld7VarArr;
        this.c = iterable;
        this.d = t74Var;
        this.e = i;
        this.f = z;
    }

    @Override
    public void c0(pd7 pd7Var) {
        int length;
        ld7[] ld7VarArr = this.b;
        if (ld7VarArr == null) {
            ld7VarArr = new ld7[8];
            length = 0;
            for (ld7 ld7Var : this.c) {
                if (length == ld7VarArr.length) {
                    ld7[] ld7VarArr2 = new ld7[(length >> 2) + length];
                    System.arraycopy(ld7VarArr, 0, ld7VarArr2, 0, length);
                    ld7VarArr = ld7VarArr2;
                }
                ld7VarArr[length] = ld7Var;
                length++;
            }
        } else {
            length = ld7VarArr.length;
        }
        int i = length;
        if (i == 0) {
            EmptyDisposable.complete(pd7Var);
        } else {
            new LatestCoordinator(pd7Var, this.d, i, this.e, this.f).subscribe(ld7VarArr);
        }
    }
}
