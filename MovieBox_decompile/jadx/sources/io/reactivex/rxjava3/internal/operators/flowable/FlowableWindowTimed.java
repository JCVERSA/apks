package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.processors.UnicastProcessor;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public abstract class FlowableWindowTimed extends a {

    static abstract class AbstractWindowSubscriber<T> extends AtomicInteger implements io.reactivex.rxjava3.core.f, i00.d {
        private static final long serialVersionUID = 5724293814035355511L;
        final int bufferSize;
        volatile boolean done;
        final i00.c downstream;
        long emitted;
        Throwable error;
        final long timespan;
        final TimeUnit unit;
        i00.d upstream;
        volatile boolean upstreamCancelled;
        final io.reactivex.rxjava3.operators.f queue = new MpscLinkedQueue();
        final AtomicLong requested = new AtomicLong();
        final AtomicBoolean downstreamCancelled = new AtomicBoolean();
        final AtomicInteger windowCount = new AtomicInteger(1);

        AbstractWindowSubscriber(i00.c cVar, long j10, TimeUnit timeUnit, int i10) {
            this.downstream = cVar;
            this.timespan = j10;
            this.unit = timeUnit;
            this.bufferSize = i10;
        }

        @Override
        public final void cancel() {
            if (this.downstreamCancelled.compareAndSet(false, true)) {
                windowDone();
            }
        }

        abstract void cleanupResources();

        abstract void createFirstWindow();

        abstract void drain();

        @Override
        public final void onComplete() {
            this.done = true;
            drain();
        }

        @Override
        public final void onError(Throwable th2) {
            this.error = th2;
            this.done = true;
            drain();
        }

        @Override
        public final void onNext(T t10) {
            this.queue.offer(t10);
            drain();
        }

        @Override
        public final void onSubscribe(i00.d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.downstream.onSubscribe(this);
                createFirstWindow();
            }
        }

        @Override
        public final void request(long j10) {
            if (SubscriptionHelper.validate(j10)) {
                io.reactivex.rxjava3.internal.util.a.a(this.requested, j10);
            }
        }

        final void windowDone() {
            if (this.windowCount.decrementAndGet() == 0) {
                cleanupResources();
                this.upstream.cancel();
                this.upstreamCancelled = true;
                drain();
            }
        }
    }

    static final class WindowExactBoundedSubscriber<T> extends AbstractWindowSubscriber<T> implements Runnable {
        private static final long serialVersionUID = -6130475889925953722L;
        long count;
        final long maxSize;
        final boolean restartTimerOnMaxSize;
        final Scheduler scheduler;
        final SequentialDisposable timer;
        UnicastProcessor window;
        final Scheduler.Worker worker;

        static final class WindowBoundaryRunnable implements Runnable {
            final long index;
            final WindowExactBoundedSubscriber<?> parent;

            WindowBoundaryRunnable(WindowExactBoundedSubscriber<?> windowExactBoundedSubscriber, long j10) {
                this.parent = windowExactBoundedSubscriber;
                this.index = j10;
            }

            @Override
            public void run() {
                this.parent.boundary(this);
            }
        }

        WindowExactBoundedSubscriber(i00.c cVar, long j10, TimeUnit timeUnit, Scheduler scheduler, int i10, long j11, boolean z10) {
            super(cVar, j10, timeUnit, i10);
            this.scheduler = scheduler;
            this.maxSize = j11;
            this.restartTimerOnMaxSize = z10;
            if (z10) {
                this.worker = scheduler.c();
            } else {
                this.worker = null;
            }
            this.timer = new SequentialDisposable();
        }

        void boundary(WindowBoundaryRunnable windowBoundaryRunnable) {
            this.queue.offer(windowBoundaryRunnable);
            drain();
        }

        @Override
        void cleanupResources() {
            this.timer.dispose();
            Scheduler.Worker worker = this.worker;
            if (worker != null) {
                worker.dispose();
            }
        }

        @Override
        void createFirstWindow() {
            if (this.downstreamCancelled.get()) {
                return;
            }
            if (this.requested.get() == 0) {
                this.upstream.cancel();
                this.downstream.onError(FlowableWindowTimed.h(this.emitted));
                cleanupResources();
                this.upstreamCancelled = true;
                return;
            }
            this.emitted = 1L;
            this.windowCount.getAndIncrement();
            this.window = UnicastProcessor.i(this.bufferSize, this);
            g gVar = new g(this.window);
            this.downstream.onNext(gVar);
            WindowBoundaryRunnable windowBoundaryRunnable = new WindowBoundaryRunnable(this, 1L);
            if (this.restartTimerOnMaxSize) {
                SequentialDisposable sequentialDisposable = this.timer;
                Scheduler.Worker worker = this.worker;
                long j10 = this.timespan;
                sequentialDisposable.replace(worker.schedulePeriodically(windowBoundaryRunnable, j10, j10, this.unit));
            } else {
                SequentialDisposable sequentialDisposable2 = this.timer;
                Scheduler scheduler = this.scheduler;
                long j11 = this.timespan;
                sequentialDisposable2.replace(scheduler.f(windowBoundaryRunnable, j11, j11, this.unit));
            }
            if (gVar.h()) {
                this.window.onComplete();
            }
            this.upstream.request(Long.MAX_VALUE);
        }

        UnicastProcessor createNewWindow(UnicastProcessor unicastProcessor) {
            if (unicastProcessor != null) {
                unicastProcessor.onComplete();
                unicastProcessor = null;
            }
            if (this.downstreamCancelled.get()) {
                cleanupResources();
            } else {
                long j10 = this.emitted;
                if (this.requested.get() == j10) {
                    this.upstream.cancel();
                    cleanupResources();
                    this.upstreamCancelled = true;
                    this.downstream.onError(FlowableWindowTimed.h(j10));
                } else {
                    long j11 = j10 + 1;
                    this.emitted = j11;
                    this.windowCount.getAndIncrement();
                    unicastProcessor = UnicastProcessor.i(this.bufferSize, this);
                    this.window = unicastProcessor;
                    g gVar = new g(unicastProcessor);
                    this.downstream.onNext(gVar);
                    if (this.restartTimerOnMaxSize) {
                        SequentialDisposable sequentialDisposable = this.timer;
                        Scheduler.Worker worker = this.worker;
                        WindowBoundaryRunnable windowBoundaryRunnable = new WindowBoundaryRunnable(this, j11);
                        long j12 = this.timespan;
                        sequentialDisposable.update(worker.schedulePeriodically(windowBoundaryRunnable, j12, j12, this.unit));
                    }
                    if (gVar.h()) {
                        unicastProcessor.onComplete();
                    }
                }
            }
            return unicastProcessor;
        }

        @Override
        void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.operators.f fVar = this.queue;
            i00.c cVar = this.downstream;
            UnicastProcessor unicastProcessorCreateNewWindow = this.window;
            int iAddAndGet = 1;
            while (true) {
                if (this.upstreamCancelled) {
                    fVar.clear();
                    unicastProcessorCreateNewWindow = null;
                    this.window = null;
                } else {
                    boolean z10 = this.done;
                    Object objPoll = fVar.poll();
                    boolean z11 = objPoll == null;
                    if (z10 && z11) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            if (unicastProcessorCreateNewWindow != null) {
                                unicastProcessorCreateNewWindow.onError(th2);
                            }
                            cVar.onError(th2);
                        } else {
                            if (unicastProcessorCreateNewWindow != null) {
                                unicastProcessorCreateNewWindow.onComplete();
                            }
                            cVar.onComplete();
                        }
                        cleanupResources();
                        this.upstreamCancelled = true;
                    } else if (!z11) {
                        if (objPoll instanceof WindowBoundaryRunnable) {
                            if (((WindowBoundaryRunnable) objPoll).index == this.emitted || !this.restartTimerOnMaxSize) {
                                this.count = 0L;
                                unicastProcessorCreateNewWindow = createNewWindow(unicastProcessorCreateNewWindow);
                            }
                        } else if (unicastProcessorCreateNewWindow != null) {
                            unicastProcessorCreateNewWindow.onNext(objPoll);
                            long j10 = this.count + 1;
                            if (j10 == this.maxSize) {
                                this.count = 0L;
                                unicastProcessorCreateNewWindow = createNewWindow(unicastProcessorCreateNewWindow);
                            } else {
                                this.count = j10;
                            }
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
        public void run() {
            windowDone();
        }
    }

    static final class WindowExactUnboundedSubscriber<T> extends AbstractWindowSubscriber<T> implements Runnable {
        static final Object NEXT_WINDOW = new Object();
        private static final long serialVersionUID = 1155822639622580836L;
        final Scheduler scheduler;
        final SequentialDisposable timer;
        UnicastProcessor window;
        final Runnable windowRunnable;

        final class WindowRunnable implements Runnable {
            WindowRunnable() {
            }

            @Override
            public void run() {
                WindowExactUnboundedSubscriber.this.windowDone();
            }
        }

        WindowExactUnboundedSubscriber(i00.c cVar, long j10, TimeUnit timeUnit, Scheduler scheduler, int i10) {
            super(cVar, j10, timeUnit, i10);
            this.scheduler = scheduler;
            this.timer = new SequentialDisposable();
            this.windowRunnable = new WindowRunnable();
        }

        @Override
        void cleanupResources() {
            this.timer.dispose();
        }

        @Override
        void createFirstWindow() {
            if (this.downstreamCancelled.get()) {
                return;
            }
            if (this.requested.get() == 0) {
                this.upstream.cancel();
                this.downstream.onError(FlowableWindowTimed.h(this.emitted));
                cleanupResources();
                this.upstreamCancelled = true;
                return;
            }
            this.windowCount.getAndIncrement();
            this.window = UnicastProcessor.i(this.bufferSize, this.windowRunnable);
            this.emitted = 1L;
            g gVar = new g(this.window);
            this.downstream.onNext(gVar);
            SequentialDisposable sequentialDisposable = this.timer;
            Scheduler scheduler = this.scheduler;
            long j10 = this.timespan;
            sequentialDisposable.replace(scheduler.f(this, j10, j10, this.unit));
            if (gVar.h()) {
                this.window.onComplete();
            }
            this.upstream.request(Long.MAX_VALUE);
        }

        @Override
        void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.operators.f fVar = this.queue;
            i00.c cVar = this.downstream;
            UnicastProcessor unicastProcessorI = this.window;
            int iAddAndGet = 1;
            while (true) {
                if (this.upstreamCancelled) {
                    fVar.clear();
                    this.window = null;
                    unicastProcessorI = null;
                } else {
                    boolean z10 = this.done;
                    Object objPoll = fVar.poll();
                    boolean z11 = objPoll == null;
                    if (z10 && z11) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            if (unicastProcessorI != null) {
                                unicastProcessorI.onError(th2);
                            }
                            cVar.onError(th2);
                        } else {
                            if (unicastProcessorI != null) {
                                unicastProcessorI.onComplete();
                            }
                            cVar.onComplete();
                        }
                        cleanupResources();
                        this.upstreamCancelled = true;
                    } else if (!z11) {
                        if (objPoll == NEXT_WINDOW) {
                            if (unicastProcessorI != null) {
                                unicastProcessorI.onComplete();
                                this.window = null;
                                unicastProcessorI = null;
                            }
                            if (this.downstreamCancelled.get()) {
                                this.timer.dispose();
                            } else {
                                long j10 = this.requested.get();
                                long j11 = this.emitted;
                                if (j10 == j11) {
                                    this.upstream.cancel();
                                    cleanupResources();
                                    this.upstreamCancelled = true;
                                    cVar.onError(FlowableWindowTimed.h(this.emitted));
                                } else {
                                    this.emitted = j11 + 1;
                                    this.windowCount.getAndIncrement();
                                    unicastProcessorI = UnicastProcessor.i(this.bufferSize, this.windowRunnable);
                                    this.window = unicastProcessorI;
                                    g gVar = new g(unicastProcessorI);
                                    cVar.onNext(gVar);
                                    if (gVar.h()) {
                                        unicastProcessorI.onComplete();
                                    }
                                }
                            }
                        } else if (unicastProcessorI != null) {
                            unicastProcessorI.onNext(objPoll);
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
        public void run() {
            this.queue.offer(NEXT_WINDOW);
            drain();
        }
    }

    static final class WindowSkipSubscriber<T> extends AbstractWindowSubscriber<T> implements Runnable {
        private static final long serialVersionUID = -7852870764194095894L;
        final long timeskip;
        final List<UnicastProcessor> windows;
        final Scheduler.Worker worker;
        static final Object WINDOW_OPEN = new Object();
        static final Object WINDOW_CLOSE = new Object();

        static final class WindowBoundaryRunnable implements Runnable {
            final boolean isOpen;
            final WindowSkipSubscriber<?> parent;

            WindowBoundaryRunnable(WindowSkipSubscriber<?> windowSkipSubscriber, boolean z10) {
                this.parent = windowSkipSubscriber;
                this.isOpen = z10;
            }

            @Override
            public void run() {
                this.parent.boundary(this.isOpen);
            }
        }

        WindowSkipSubscriber(i00.c cVar, long j10, long j11, TimeUnit timeUnit, Scheduler.Worker worker, int i10) {
            super(cVar, j10, timeUnit, i10);
            this.timeskip = j11;
            this.worker = worker;
            this.windows = new LinkedList();
        }

        void boundary(boolean z10) {
            this.queue.offer(z10 ? WINDOW_OPEN : WINDOW_CLOSE);
            drain();
        }

        @Override
        void cleanupResources() {
            this.worker.dispose();
        }

        @Override
        void createFirstWindow() {
            if (this.downstreamCancelled.get()) {
                return;
            }
            if (this.requested.get() == 0) {
                this.upstream.cancel();
                this.downstream.onError(FlowableWindowTimed.h(this.emitted));
                cleanupResources();
                this.upstreamCancelled = true;
                return;
            }
            this.emitted = 1L;
            this.windowCount.getAndIncrement();
            UnicastProcessor unicastProcessorI = UnicastProcessor.i(this.bufferSize, this);
            this.windows.add(unicastProcessorI);
            g gVar = new g(unicastProcessorI);
            this.downstream.onNext(gVar);
            this.worker.schedule(new WindowBoundaryRunnable(this, false), this.timespan, this.unit);
            Scheduler.Worker worker = this.worker;
            WindowBoundaryRunnable windowBoundaryRunnable = new WindowBoundaryRunnable(this, true);
            long j10 = this.timeskip;
            worker.schedulePeriodically(windowBoundaryRunnable, j10, j10, this.unit);
            if (gVar.h()) {
                unicastProcessorI.onComplete();
                this.windows.remove(unicastProcessorI);
            }
            this.upstream.request(Long.MAX_VALUE);
        }

        @Override
        void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.operators.f fVar = this.queue;
            i00.c cVar = this.downstream;
            List<UnicastProcessor> list = this.windows;
            int iAddAndGet = 1;
            while (true) {
                if (this.upstreamCancelled) {
                    fVar.clear();
                    list.clear();
                } else {
                    boolean z10 = this.done;
                    Object objPoll = fVar.poll();
                    boolean z11 = objPoll == null;
                    if (z10 && z11) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            Iterator<UnicastProcessor> it = list.iterator();
                            while (it.hasNext()) {
                                it.next().onError(th2);
                            }
                            cVar.onError(th2);
                        } else {
                            Iterator<UnicastProcessor> it2 = list.iterator();
                            while (it2.hasNext()) {
                                it2.next().onComplete();
                            }
                            cVar.onComplete();
                        }
                        cleanupResources();
                        this.upstreamCancelled = true;
                    } else if (!z11) {
                        if (objPoll == WINDOW_OPEN) {
                            if (!this.downstreamCancelled.get()) {
                                long j10 = this.emitted;
                                if (this.requested.get() != j10) {
                                    this.emitted = j10 + 1;
                                    this.windowCount.getAndIncrement();
                                    UnicastProcessor unicastProcessorI = UnicastProcessor.i(this.bufferSize, this);
                                    list.add(unicastProcessorI);
                                    g gVar = new g(unicastProcessorI);
                                    cVar.onNext(gVar);
                                    this.worker.schedule(new WindowBoundaryRunnable(this, false), this.timespan, this.unit);
                                    if (gVar.h()) {
                                        unicastProcessorI.onComplete();
                                    }
                                } else {
                                    this.upstream.cancel();
                                    MissingBackpressureException missingBackpressureExceptionH = FlowableWindowTimed.h(j10);
                                    Iterator<UnicastProcessor> it3 = list.iterator();
                                    while (it3.hasNext()) {
                                        it3.next().onError(missingBackpressureExceptionH);
                                    }
                                    cVar.onError(missingBackpressureExceptionH);
                                    cleanupResources();
                                    this.upstreamCancelled = true;
                                }
                            }
                        } else if (objPoll != WINDOW_CLOSE) {
                            Iterator<UnicastProcessor> it4 = list.iterator();
                            while (it4.hasNext()) {
                                it4.next().onNext(objPoll);
                            }
                        } else if (!list.isEmpty()) {
                            list.remove(0).onComplete();
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
        public void run() {
            windowDone();
        }
    }

    static MissingBackpressureException h(long j10) {
        return new MissingBackpressureException("Unable to emit the next window (#" + j10 + ") due to lack of requests. Please make sure the downstream is ready to consume windows.");
    }
}
