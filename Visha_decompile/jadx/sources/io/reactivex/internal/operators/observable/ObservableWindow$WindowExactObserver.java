package io.reactivex.internal.operators.observable;

import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.subjects.UnicastSubject;
import java.util.concurrent.atomic.AtomicInteger;

final class ObservableWindow$WindowExactObserver<T> extends AtomicInteger implements pd7, rc2, Runnable {
    private static final long serialVersionUID = -7481782523886138128L;
    volatile boolean cancelled;
    final int capacityHint;
    final long count;
    final pd7 downstream;
    long size;
    rc2 upstream;
    UnicastSubject window;

    public ObservableWindow$WindowExactObserver(pd7 pd7Var, long j, int i) {
        this.downstream = pd7Var;
        this.count = j;
        this.capacityHint = i;
    }

    @Override
    public void dispose() {
        this.cancelled = true;
    }

    @Override
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override
    public void onComplete() {
        UnicastSubject unicastSubject = this.window;
        if (unicastSubject != null) {
            this.window = null;
            unicastSubject.onComplete();
        }
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th) {
        UnicastSubject unicastSubject = this.window;
        if (unicastSubject != null) {
            this.window = null;
            unicastSubject.onError(th);
        }
        this.downstream.onError(th);
    }

    @Override
    public void onNext(T t) {
        UnicastSubject unicastSubjectO0 = this.window;
        if (unicastSubjectO0 == null && !this.cancelled) {
            unicastSubjectO0 = UnicastSubject.o0(this.capacityHint, this);
            this.window = unicastSubjectO0;
            this.downstream.onNext(unicastSubjectO0);
        }
        if (unicastSubjectO0 != null) {
            unicastSubjectO0.onNext(t);
            long j = this.size + 1;
            this.size = j;
            if (j >= this.count) {
                this.size = 0L;
                this.window = null;
                unicastSubjectO0.onComplete();
                if (this.cancelled) {
                    this.upstream.dispose();
                }
            }
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.validate(this.upstream, rc2Var)) {
            this.upstream = rc2Var;
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void run() {
        if (this.cancelled) {
            this.upstream.dispose();
        }
    }
}
