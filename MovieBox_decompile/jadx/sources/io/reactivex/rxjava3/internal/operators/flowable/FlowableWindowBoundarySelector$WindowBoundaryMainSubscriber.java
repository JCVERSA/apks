package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.processors.UnicastProcessor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import yx.h;

final class FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber<T, B, V> extends AtomicInteger implements io.reactivex.rxjava3.core.f, i00.d, Runnable {
    private static final long serialVersionUID = 8646217640096099753L;
    final int bufferSize;
    final h closingIndicator;
    final i00.c downstream;
    long emitted;
    final i00.b open;
    volatile boolean openDone;
    i00.d upstream;
    volatile boolean upstreamCanceled;
    volatile boolean upstreamDone;
    final io.reactivex.rxjava3.operators.f queue = new MpscLinkedQueue();
    final io.reactivex.rxjava3.disposables.a resources = new io.reactivex.rxjava3.disposables.a();
    final List<UnicastProcessor> windows = new ArrayList();
    final AtomicLong windowCount = new AtomicLong(1);
    final AtomicBoolean downstreamCancelled = new AtomicBoolean();
    final AtomicThrowable error = new AtomicThrowable();
    final WindowStartSubscriber<B> startSubscriber = new WindowStartSubscriber<>(this);
    final AtomicLong requested = new AtomicLong();

    static final class WindowStartSubscriber<B> extends AtomicReference<i00.d> implements io.reactivex.rxjava3.core.f {
        private static final long serialVersionUID = -3326496781427702834L;
        final FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber<?, B, ?> parent;

        WindowStartSubscriber(FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber<?, B, ?> flowableWindowBoundarySelector$WindowBoundaryMainSubscriber) {
            this.parent = flowableWindowBoundarySelector$WindowBoundaryMainSubscriber;
        }

        void cancel() {
            SubscriptionHelper.cancel(this);
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
        public void onSubscribe(i00.d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    static final class a extends io.reactivex.rxjava3.core.e implements io.reactivex.rxjava3.core.f, io.reactivex.rxjava3.disposables.c {

        final FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber f62367b;

        final UnicastProcessor f62368c;

        final AtomicReference f62369d = new AtomicReference();

        final AtomicBoolean f62370e = new AtomicBoolean();

        a(FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber flowableWindowBoundarySelector$WindowBoundaryMainSubscriber, UnicastProcessor unicastProcessor) {
            this.f62367b = flowableWindowBoundarySelector$WindowBoundaryMainSubscriber;
            this.f62368c = unicastProcessor;
        }

        @Override
        public void dispose() {
            SubscriptionHelper.cancel(this.f62369d);
        }

        @Override
        protected void g(i00.c cVar) {
            this.f62368c.subscribe(cVar);
            this.f62370e.set(true);
        }

        boolean h() {
            return !this.f62370e.get() && this.f62370e.compareAndSet(false, true);
        }

        @Override
        public boolean isDisposed() {
            return this.f62369d.get() == SubscriptionHelper.CANCELLED;
        }

        @Override
        public void onComplete() {
            this.f62367b.close(this);
        }

        @Override
        public void onError(Throwable th2) {
            if (isDisposed()) {
                dy.a.r(th2);
            } else {
                this.f62367b.closeError(th2);
            }
        }

        @Override
        public void onNext(Object obj) {
            if (SubscriptionHelper.cancel(this.f62369d)) {
                this.f62367b.close(this);
            }
        }

        @Override
        public void onSubscribe(i00.d dVar) {
            if (SubscriptionHelper.setOnce(this.f62369d, dVar)) {
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    static final class b {

        final Object f62371a;

        b(Object obj) {
            this.f62371a = obj;
        }
    }

    FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber(i00.c cVar, i00.b bVar, h hVar, int i10) {
        this.downstream = cVar;
        this.open = bVar;
        this.closingIndicator = hVar;
        this.bufferSize = i10;
    }

    @Override
    public void cancel() {
        if (this.downstreamCancelled.compareAndSet(false, true)) {
            if (this.windowCount.decrementAndGet() != 0) {
                this.startSubscriber.cancel();
                return;
            }
            this.upstream.cancel();
            this.startSubscriber.cancel();
            this.resources.dispose();
            this.error.tryTerminateAndReport();
            this.upstreamCanceled = true;
            drain();
        }
    }

    void close(a aVar) {
        this.queue.offer(aVar);
        drain();
    }

    void closeError(Throwable th2) {
        this.upstream.cancel();
        this.startSubscriber.cancel();
        this.resources.dispose();
        if (this.error.tryAddThrowableOrReport(th2)) {
            this.upstreamDone = true;
            drain();
        }
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        i00.c cVar = this.downstream;
        io.reactivex.rxjava3.operators.f fVar = this.queue;
        List<UnicastProcessor> list = this.windows;
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
                    terminateDownstream(cVar);
                    this.upstreamCanceled = true;
                } else if (z11) {
                    if (this.openDone && list.size() == 0) {
                        this.upstream.cancel();
                        this.startSubscriber.cancel();
                        this.resources.dispose();
                        terminateDownstream(cVar);
                        this.upstreamCanceled = true;
                    }
                } else if (objPoll instanceof b) {
                    if (!this.downstreamCancelled.get()) {
                        long j10 = this.emitted;
                        if (this.requested.get() != j10) {
                            this.emitted = j10 + 1;
                            try {
                                Object objApply = this.closingIndicator.apply(((b) objPoll).f62371a);
                                Objects.requireNonNull(objApply, "The closingIndicator returned a null Publisher");
                                i00.b bVar = (i00.b) objApply;
                                this.windowCount.getAndIncrement();
                                UnicastProcessor unicastProcessorI = UnicastProcessor.i(this.bufferSize, this);
                                a aVar = new a(this, unicastProcessorI);
                                cVar.onNext(aVar);
                                if (aVar.h()) {
                                    unicastProcessorI.onComplete();
                                } else {
                                    list.add(unicastProcessorI);
                                    this.resources.b(aVar);
                                    bVar.subscribe(aVar);
                                }
                            } catch (Throwable th2) {
                                io.reactivex.rxjava3.exceptions.a.b(th2);
                                this.upstream.cancel();
                                this.startSubscriber.cancel();
                                this.resources.dispose();
                                io.reactivex.rxjava3.exceptions.a.b(th2);
                                this.error.tryAddThrowableOrReport(th2);
                                this.upstreamDone = true;
                            }
                        } else {
                            this.upstream.cancel();
                            this.startSubscriber.cancel();
                            this.resources.dispose();
                            this.error.tryAddThrowableOrReport(FlowableWindowTimed.h(j10));
                            this.upstreamDone = true;
                        }
                    }
                } else if (objPoll instanceof a) {
                    UnicastProcessor unicastProcessor = ((a) objPoll).f62368c;
                    list.remove(unicastProcessor);
                    this.resources.c((io.reactivex.rxjava3.disposables.c) objPoll);
                    unicastProcessor.onComplete();
                } else {
                    Iterator<UnicastProcessor> it = list.iterator();
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
    public void onComplete() {
        this.startSubscriber.cancel();
        this.resources.dispose();
        this.upstreamDone = true;
        drain();
    }

    @Override
    public void onError(Throwable th2) {
        this.startSubscriber.cancel();
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
    public void onSubscribe(i00.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            this.open.subscribe(this.startSubscriber);
            dVar.request(Long.MAX_VALUE);
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
        this.upstream.cancel();
        this.resources.dispose();
        if (this.error.tryAddThrowableOrReport(th2)) {
            this.upstreamDone = true;
            drain();
        }
    }

    @Override
    public void request(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j10);
        }
    }

    @Override
    public void run() {
        if (this.windowCount.decrementAndGet() == 0) {
            this.upstream.cancel();
            this.startSubscriber.cancel();
            this.resources.dispose();
            this.error.tryTerminateAndReport();
            this.upstreamCanceled = true;
            drain();
        }
    }

    void terminateDownstream(i00.c cVar) {
        Throwable thTerminate = this.error.terminate();
        if (thTerminate == null) {
            Iterator<UnicastProcessor> it = this.windows.iterator();
            while (it.hasNext()) {
                it.next().onComplete();
            }
            cVar.onComplete();
            return;
        }
        if (thTerminate != ExceptionHelper.f62550a) {
            Iterator<UnicastProcessor> it2 = this.windows.iterator();
            while (it2.hasNext()) {
                it2.next().onError(thTerminate);
            }
            cVar.onError(thTerminate);
        }
    }
}
