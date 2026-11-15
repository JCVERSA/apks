package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

final class ObservableWindow$WindowSkipObserver<T> extends AtomicInteger implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = 3366976432059579510L;
    final int capacityHint;
    final long count;
    final io.reactivex.rxjava3.core.o downstream;
    long firstEmission;
    long index;
    final long skip;
    io.reactivex.rxjava3.disposables.c upstream;
    final ArrayDeque<UnicastSubject> windows = new ArrayDeque<>();
    final AtomicBoolean cancelled = new AtomicBoolean();

    ObservableWindow$WindowSkipObserver(io.reactivex.rxjava3.core.o oVar, long j10, long j11, int i10) {
        this.downstream = oVar;
        this.count = j10;
        this.skip = j11;
        this.capacityHint = i10;
        lazySet(1);
    }

    @Override
    public void dispose() {
        if (this.cancelled.compareAndSet(false, true)) {
            run();
        }
    }

    @Override
    public boolean isDisposed() {
        return this.cancelled.get();
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
    public void onError(Throwable th2) {
        ArrayDeque<UnicastSubject> arrayDeque = this.windows;
        while (!arrayDeque.isEmpty()) {
            arrayDeque.poll().onError(th2);
        }
        this.downstream.onError(th2);
    }

    @Override
    public void onNext(T t10) {
        r rVar;
        ArrayDeque<UnicastSubject> arrayDeque = this.windows;
        long j10 = this.index;
        long j11 = this.skip;
        if (j10 % j11 != 0 || this.cancelled.get()) {
            rVar = null;
        } else {
            getAndIncrement();
            UnicastSubject unicastSubjectJ = UnicastSubject.J(this.capacityHint, this);
            rVar = new r(unicastSubjectJ);
            arrayDeque.offer(unicastSubjectJ);
            this.downstream.onNext(rVar);
        }
        long j12 = this.firstEmission + 1;
        Iterator<UnicastSubject> it = arrayDeque.iterator();
        while (it.hasNext()) {
            it.next().onNext(t10);
        }
        if (j12 >= this.count) {
            arrayDeque.poll().onComplete();
            if (arrayDeque.isEmpty() && this.cancelled.get()) {
                return;
            } else {
                this.firstEmission = j12 - j11;
            }
        } else {
            this.firstEmission = j12;
        }
        this.index = j10 + 1;
        if (rVar == null || !rVar.J()) {
            return;
        }
        rVar.f62469a.onComplete();
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override
    public void run() {
        if (decrementAndGet() == 0) {
            this.upstream.dispose();
        }
    }
}
