package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

final class ObservableWindowBoundarySelector$WindowBoundaryMainObserver<T, B, V> extends AtomicInteger implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = 8646217640096099753L;
    final int bufferSize;
    final yx.h closingIndicator;
    final io.reactivex.rxjava3.core.o downstream;
    long emitted;
    final io.reactivex.rxjava3.core.m open;
    volatile boolean openDone;
    io.reactivex.rxjava3.disposables.c upstream;
    volatile boolean upstreamCanceled;
    volatile boolean upstreamDone;
    final io.reactivex.rxjava3.operators.f queue = new MpscLinkedQueue();
    final io.reactivex.rxjava3.disposables.a resources = new io.reactivex.rxjava3.disposables.a();
    final List<UnicastSubject> windows = new ArrayList();
    final AtomicLong windowCount = new AtomicLong(1);
    final AtomicBoolean downstreamDisposed = new AtomicBoolean();
    final AtomicThrowable error = new AtomicThrowable();
    final WindowStartObserver<B> startObserver = new WindowStartObserver<>(this);
    final AtomicLong requested = new AtomicLong();

    static final class WindowStartObserver<B> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.o {
        private static final long serialVersionUID = -3326496781427702834L;
        final ObservableWindowBoundarySelector$WindowBoundaryMainObserver<?, B, ?> parent;

        WindowStartObserver(ObservableWindowBoundarySelector$WindowBoundaryMainObserver<?, B, ?> observableWindowBoundarySelector$WindowBoundaryMainObserver) {
            this.parent = observableWindowBoundarySelector$WindowBoundaryMainObserver;
        }

        void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override
        public void onComplete() {
            this.parent.openComplete();
        }

        @Override
        public void onError(Throwable th2) {
            this.parent.openError(th2);
        }

        @Override
        public void onNext(B b10) {
            this.parent.open(b10);
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    static final class a extends io.reactivex.rxjava3.core.j implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

        final ObservableWindowBoundarySelector$WindowBoundaryMainObserver f62409a;

        final UnicastSubject f62410b;

        final AtomicReference f62411c = new AtomicReference();

        final AtomicBoolean f62412d = new AtomicBoolean();

        a(ObservableWindowBoundarySelector$WindowBoundaryMainObserver observableWindowBoundarySelector$WindowBoundaryMainObserver, UnicastSubject unicastSubject) {
            this.f62409a = observableWindowBoundarySelector$WindowBoundaryMainObserver;
            this.f62410b = unicastSubject;
        }

        @Override
        protected void D(io.reactivex.rxjava3.core.o oVar) {
            this.f62410b.subscribe(oVar);
            this.f62412d.set(true);
        }

        boolean J() {
            return !this.f62412d.get() && this.f62412d.compareAndSet(false, true);
        }

        @Override
        public void dispose() {
            DisposableHelper.dispose(this.f62411c);
        }

        @Override
        public boolean isDisposed() {
            return this.f62411c.get() == DisposableHelper.DISPOSED;
        }

        @Override
        public void onComplete() {
            this.f62409a.close(this);
        }

        @Override
        public void onError(Throwable th2) {
            if (isDisposed()) {
                dy.a.r(th2);
            } else {
                this.f62409a.closeError(th2);
            }
        }

        @Override
        public void onNext(Object obj) {
            if (DisposableHelper.dispose(this.f62411c)) {
                this.f62409a.close(this);
            }
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            DisposableHelper.setOnce(this.f62411c, cVar);
        }
    }

    static final class b {

        final Object f62413a;

        b(Object obj) {
            this.f62413a = obj;
        }
    }

    ObservableWindowBoundarySelector$WindowBoundaryMainObserver(io.reactivex.rxjava3.core.o oVar, io.reactivex.rxjava3.core.m mVar, yx.h hVar, int i10) {
        this.downstream = oVar;
        this.open = mVar;
        this.closingIndicator = hVar;
        this.bufferSize = i10;
    }

    void close(a aVar) {
        this.queue.offer(aVar);
        drain();
    }

    void closeError(Throwable th2) {
        this.upstream.dispose();
        this.startObserver.dispose();
        this.resources.dispose();
        if (this.error.tryAddThrowableOrReport(th2)) {
            this.upstreamDone = true;
            drain();
        }
    }

    @Override
    public void dispose() {
        if (this.downstreamDisposed.compareAndSet(false, true)) {
            if (this.windowCount.decrementAndGet() != 0) {
                this.startObserver.dispose();
                return;
            }
            this.upstream.dispose();
            this.startObserver.dispose();
            this.resources.dispose();
            this.error.tryTerminateAndReport();
            this.upstreamCanceled = true;
            drain();
        }
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        io.reactivex.rxjava3.core.o oVar = this.downstream;
        io.reactivex.rxjava3.operators.f fVar = this.queue;
        List<UnicastSubject> list = this.windows;
        int iAddAndGet = 1;
        while (true) {
            if (this.upstreamCanceled) {
                fVar.clear();
                list.clear();
            } else {
                boolean z10 = this.upstreamDone;
                Object objPoll = fVar.poll();
                boolean z11 = objPoll == null;
                if (z10 && (z11 || this.error.get() != null)) {
                    terminateDownstream(oVar);
                    this.upstreamCanceled = true;
                } else if (z11) {
                    if (this.openDone && list.size() == 0) {
                        this.upstream.dispose();
                        this.startObserver.dispose();
                        this.resources.dispose();
                        terminateDownstream(oVar);
                        this.upstreamCanceled = true;
                    }
                } else if (objPoll instanceof b) {
                    if (!this.downstreamDisposed.get()) {
                        try {
                            Object objApply = this.closingIndicator.apply(((b) objPoll).f62413a);
                            Objects.requireNonNull(objApply, "The closingIndicator returned a null ObservableSource");
                            io.reactivex.rxjava3.core.m mVar = (io.reactivex.rxjava3.core.m) objApply;
                            this.windowCount.getAndIncrement();
                            UnicastSubject unicastSubjectJ = UnicastSubject.J(this.bufferSize, this);
                            a aVar = new a(this, unicastSubjectJ);
                            oVar.onNext(aVar);
                            if (aVar.J()) {
                                unicastSubjectJ.onComplete();
                            } else {
                                list.add(unicastSubjectJ);
                                this.resources.b(aVar);
                                mVar.subscribe(aVar);
                            }
                        } catch (Throwable th2) {
                            io.reactivex.rxjava3.exceptions.a.b(th2);
                            this.upstream.dispose();
                            this.startObserver.dispose();
                            this.resources.dispose();
                            io.reactivex.rxjava3.exceptions.a.b(th2);
                            this.error.tryAddThrowableOrReport(th2);
                            this.upstreamDone = true;
                        }
                    }
                } else if (objPoll instanceof a) {
                    UnicastSubject unicastSubject = ((a) objPoll).f62410b;
                    list.remove(unicastSubject);
                    this.resources.c((io.reactivex.rxjava3.disposables.c) objPoll);
                    unicastSubject.onComplete();
                } else {
                    Iterator<UnicastSubject> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().onNext(objPoll);
                    }
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
    }

    @Override
    public boolean isDisposed() {
        return this.downstreamDisposed.get();
    }

    @Override
    public void onComplete() {
        this.startObserver.dispose();
        this.resources.dispose();
        this.upstreamDone = true;
        drain();
    }

    @Override
    public void onError(Throwable th2) {
        this.startObserver.dispose();
        this.resources.dispose();
        if (this.error.tryAddThrowableOrReport(th2)) {
            this.upstreamDone = true;
            drain();
        }
    }

    @Override
    public void onNext(T t10) {
        this.queue.offer(t10);
        drain();
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
            this.open.subscribe(this.startObserver);
        }
    }

    void open(B b10) {
        this.queue.offer(new b(b10));
        drain();
    }

    void openComplete() {
        this.openDone = true;
        drain();
    }

    void openError(Throwable th2) {
        this.upstream.dispose();
        this.resources.dispose();
        if (this.error.tryAddThrowableOrReport(th2)) {
            this.upstreamDone = true;
            drain();
        }
    }

    @Override
    public void run() {
        if (this.windowCount.decrementAndGet() == 0) {
            this.upstream.dispose();
            this.startObserver.dispose();
            this.resources.dispose();
            this.error.tryTerminateAndReport();
            this.upstreamCanceled = true;
            drain();
        }
    }

    void terminateDownstream(io.reactivex.rxjava3.core.o oVar) {
        Throwable thTerminate = this.error.terminate();
        if (thTerminate == null) {
            Iterator<UnicastSubject> it = this.windows.iterator();
            while (it.hasNext()) {
                it.next().onComplete();
            }
            oVar.onComplete();
            return;
        }
        if (thTerminate != ExceptionHelper.f62550a) {
            Iterator<UnicastSubject> it2 = this.windows.iterator();
            while (it2.hasNext()) {
                it2.next().onError(thTerminate);
            }
            oVar.onError(thTerminate);
        }
    }
}
