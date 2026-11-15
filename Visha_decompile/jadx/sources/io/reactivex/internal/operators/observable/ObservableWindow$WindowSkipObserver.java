package io.reactivex.internal.operators.observable;

import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.subjects.UnicastSubject;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

final class ObservableWindow$WindowSkipObserver<T> extends AtomicBoolean implements pd7, rc2, Runnable {
    private static final long serialVersionUID = 3366976432059579510L;
    volatile boolean cancelled;
    final int capacityHint;
    final long count;
    final pd7 downstream;
    long firstEmission;
    long index;
    final long skip;
    rc2 upstream;
    final AtomicInteger wip = new AtomicInteger();
    final ArrayDeque<UnicastSubject> windows = new ArrayDeque<>();

    public ObservableWindow$WindowSkipObserver(pd7 pd7Var, long j, long j2, int i) {
        this.downstream = pd7Var;
        this.count = j;
        this.skip = j2;
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
        ArrayDeque<UnicastSubject> arrayDeque = this.windows;
        while (!arrayDeque.isEmpty()) {
            arrayDeque.poll().onComplete();
        }
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th) {
        ArrayDeque<UnicastSubject> arrayDeque = this.windows;
        while (!arrayDeque.isEmpty()) {
            arrayDeque.poll().onError(th);
        }
        this.downstream.onError(th);
    }

    @Override
    public void onNext(T t) {
        ArrayDeque<UnicastSubject> arrayDeque = this.windows;
        long j = this.index;
        long j2 = this.skip;
        if (j % j2 == 0 && !this.cancelled) {
            this.wip.getAndIncrement();
            UnicastSubject unicastSubjectO0 = UnicastSubject.o0(this.capacityHint, this);
            arrayDeque.offer(unicastSubjectO0);
            this.downstream.onNext(unicastSubjectO0);
        }
        long j3 = this.firstEmission + 1;
        Iterator<UnicastSubject> it = arrayDeque.iterator();
        while (it.hasNext()) {
            it.next().onNext(t);
        }
        if (j3 >= this.count) {
            arrayDeque.poll().onComplete();
            if (arrayDeque.isEmpty() && this.cancelled) {
                this.upstream.dispose();
                return;
            }
            this.firstEmission = j3 - j2;
        } else {
            this.firstEmission = j3;
        }
        this.index = j + 1;
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
        if (this.wip.decrementAndGet() == 0 && this.cancelled) {
            this.upstream.dispose();
        }
    }
}
