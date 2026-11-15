package io.reactivex.internal.operators.observable;

import defpackage.ld7;
import defpackage.mv9;
import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableGroupBy$State<T, K> extends AtomicInteger implements rc2, ld7 {
    private static final long serialVersionUID = -3852313036005250360L;
    final boolean delayError;
    volatile boolean done;
    Throwable error;
    final K key;
    final ObservableGroupBy$GroupByObserver<?, K, T> parent;
    final mv9 queue;
    final AtomicBoolean cancelled = new AtomicBoolean();
    final AtomicBoolean once = new AtomicBoolean();
    final AtomicReference<pd7> actual = new AtomicReference<>();

    public ObservableGroupBy$State(int i, ObservableGroupBy$GroupByObserver<?, K, T> observableGroupBy$GroupByObserver, K k, boolean z) {
        this.queue = new mv9(i);
        this.parent = observableGroupBy$GroupByObserver;
        this.key = k;
        this.delayError = z;
    }

    public boolean checkTerminated(boolean z, boolean z2, pd7 pd7Var, boolean z3) {
        if (this.cancelled.get()) {
            this.queue.clear();
            this.parent.cancel(this.key);
            this.actual.lazySet(null);
            return true;
        }
        if (!z) {
            return false;
        }
        if (z3) {
            if (!z2) {
                return false;
            }
            Throwable th = this.error;
            this.actual.lazySet(null);
            if (th != null) {
                pd7Var.onError(th);
            } else {
                pd7Var.onComplete();
            }
            return true;
        }
        Throwable th2 = this.error;
        if (th2 != null) {
            this.queue.clear();
            this.actual.lazySet(null);
            pd7Var.onError(th2);
            return true;
        }
        if (!z2) {
            return false;
        }
        this.actual.lazySet(null);
        pd7Var.onComplete();
        return true;
    }

    @Override
    public void dispose() {
        if (this.cancelled.compareAndSet(false, true) && getAndIncrement() == 0) {
            this.actual.lazySet(null);
            this.parent.cancel(this.key);
        }
    }

    public void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        mv9 mv9Var = this.queue;
        boolean z = this.delayError;
        pd7 pd7Var = this.actual.get();
        int iAddAndGet = 1;
        while (true) {
            if (pd7Var != null) {
                while (true) {
                    boolean z2 = this.done;
                    Object objPoll = mv9Var.poll();
                    boolean z3 = objPoll == null;
                    if (checkTerminated(z2, z3, pd7Var, z)) {
                        return;
                    }
                    if (z3) {
                        break;
                    } else {
                        pd7Var.onNext(objPoll);
                    }
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
            if (pd7Var == null) {
                pd7Var = this.actual.get();
            }
        }
    }

    @Override
    public boolean isDisposed() {
        return this.cancelled.get();
    }

    public void onComplete() {
        this.done = true;
        drain();
    }

    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        drain();
    }

    public void onNext(T t) {
        this.queue.offer(t);
        drain();
    }

    @Override
    public void subscribe(pd7 pd7Var) {
        if (!this.once.compareAndSet(false, true)) {
            EmptyDisposable.error(new IllegalStateException("Only one Observer allowed!"), pd7Var);
            return;
        }
        pd7Var.onSubscribe(this);
        this.actual.lazySet(pd7Var);
        if (this.cancelled.get()) {
            this.actual.lazySet(null);
        } else {
            drain();
        }
    }
}
