package io.reactivex.internal.operators.observable;

import defpackage.ac7;
import defpackage.ld7;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import defpackage.wk5;
import defpackage.yw8;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.subjects.UnicastSubject;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableWindowBoundarySupplier$WindowBoundaryMainObserver<T, B> extends AtomicInteger implements pd7, rc2, Runnable {
    static final d BOUNDARY_DISPOSED = new d(null);
    static final Object NEXT_WINDOW = new Object();
    private static final long serialVersionUID = 2233020065421370272L;
    final int capacityHint;
    volatile boolean done;
    final pd7 downstream;
    final Callable<? extends ld7> other;
    rc2 upstream;
    UnicastSubject window;
    final AtomicReference<d> boundaryObserver = new AtomicReference<>();
    final AtomicInteger windows = new AtomicInteger(1);
    final MpscLinkedQueue queue = new MpscLinkedQueue();
    final AtomicThrowable errors = new AtomicThrowable();
    final AtomicBoolean stopWindows = new AtomicBoolean();

    public ObservableWindowBoundarySupplier$WindowBoundaryMainObserver(pd7 pd7Var, int i, Callable<? extends ld7> callable) {
        this.downstream = pd7Var;
        this.capacityHint = i;
        this.other = callable;
    }

    @Override
    public void dispose() {
        if (this.stopWindows.compareAndSet(false, true)) {
            disposeBoundary();
            if (this.windows.decrementAndGet() == 0) {
                this.upstream.dispose();
            }
        }
    }

    public void disposeBoundary() {
        AtomicReference<d> atomicReference = this.boundaryObserver;
        d dVar = BOUNDARY_DISPOSED;
        d andSet = atomicReference.getAndSet(dVar);
        if (andSet == null || andSet == dVar) {
            return;
        }
        andSet.dispose();
    }

    public void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        pd7 pd7Var = this.downstream;
        MpscLinkedQueue mpscLinkedQueue = this.queue;
        AtomicThrowable atomicThrowable = this.errors;
        int iAddAndGet = 1;
        while (this.windows.get() != 0) {
            UnicastSubject unicastSubject = this.window;
            boolean z = this.done;
            if (z && atomicThrowable.get() != null) {
                mpscLinkedQueue.clear();
                Throwable thTerminate = atomicThrowable.terminate();
                if (unicastSubject != null) {
                    this.window = null;
                    unicastSubject.onError(thTerminate);
                }
                pd7Var.onError(thTerminate);
                return;
            }
            Object objPoll = mpscLinkedQueue.poll();
            boolean z2 = objPoll == null;
            if (z && z2) {
                Throwable thTerminate2 = atomicThrowable.terminate();
                if (thTerminate2 == null) {
                    if (unicastSubject != null) {
                        this.window = null;
                        unicastSubject.onComplete();
                    }
                    pd7Var.onComplete();
                    return;
                }
                if (unicastSubject != null) {
                    this.window = null;
                    unicastSubject.onError(thTerminate2);
                }
                pd7Var.onError(thTerminate2);
                return;
            }
            if (z2) {
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else if (objPoll != NEXT_WINDOW) {
                unicastSubject.onNext(objPoll);
            } else {
                if (unicastSubject != null) {
                    this.window = null;
                    unicastSubject.onComplete();
                }
                if (!this.stopWindows.get()) {
                    UnicastSubject unicastSubjectO0 = UnicastSubject.o0(this.capacityHint, this);
                    this.window = unicastSubjectO0;
                    this.windows.getAndIncrement();
                    try {
                        ld7 ld7Var = (ld7) ac7.d(this.other.call(), "The other Callable returned a null ObservableSource");
                        d dVar = new d(this);
                        if (wk5.a(this.boundaryObserver, null, dVar)) {
                            ld7Var.subscribe(dVar);
                            pd7Var.onNext(unicastSubjectO0);
                        }
                    } catch (Throwable th) {
                        re3.b(th);
                        atomicThrowable.addThrowable(th);
                        this.done = true;
                    }
                }
            }
        }
        mpscLinkedQueue.clear();
        this.window = null;
    }

    public void innerComplete() {
        this.upstream.dispose();
        this.done = true;
        drain();
    }

    public void innerError(Throwable th) {
        this.upstream.dispose();
        if (!this.errors.addThrowable(th)) {
            yw8.s(th);
        } else {
            this.done = true;
            drain();
        }
    }

    public void innerNext(d dVar) {
        wk5.a(this.boundaryObserver, dVar, null);
        this.queue.offer(NEXT_WINDOW);
        drain();
    }

    @Override
    public boolean isDisposed() {
        return this.stopWindows.get();
    }

    @Override
    public void onComplete() {
        disposeBoundary();
        this.done = true;
        drain();
    }

    @Override
    public void onError(Throwable th) {
        disposeBoundary();
        if (!this.errors.addThrowable(th)) {
            yw8.s(th);
        } else {
            this.done = true;
            drain();
        }
    }

    @Override
    public void onNext(T t) {
        this.queue.offer(t);
        drain();
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.validate(this.upstream, rc2Var)) {
            this.upstream = rc2Var;
            this.downstream.onSubscribe(this);
            this.queue.offer(NEXT_WINDOW);
            drain();
        }
    }

    @Override
    public void run() {
        if (this.windows.decrementAndGet() == 0) {
            this.upstream.dispose();
        }
    }
}
