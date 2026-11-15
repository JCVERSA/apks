package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

final class ObservableBufferTimed$BufferSkipBoundedObserver<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.observers.e implements Runnable, io.reactivex.rxjava3.disposables.c {
    final yx.k bufferSupplier;
    final List<U> buffers;
    final long timeskip;
    final long timespan;
    final TimeUnit unit;
    io.reactivex.rxjava3.disposables.c upstream;

    final Scheduler.Worker f62393w;

    final class RemoveFromBuffer implements Runnable {

        private final U f62394b;

        RemoveFromBuffer(U u10) {
            this.f62394b = u10;
        }

        @Override
        public void run() {
            synchronized (ObservableBufferTimed$BufferSkipBoundedObserver.this) {
                ObservableBufferTimed$BufferSkipBoundedObserver.this.buffers.remove(this.f62394b);
            }
            ObservableBufferTimed$BufferSkipBoundedObserver observableBufferTimed$BufferSkipBoundedObserver = ObservableBufferTimed$BufferSkipBoundedObserver.this;
            observableBufferTimed$BufferSkipBoundedObserver.fastPathOrderedEmit(this.f62394b, false, observableBufferTimed$BufferSkipBoundedObserver.f62393w);
        }
    }

    final class RemoveFromBufferEmit implements Runnable {
        private final U buffer;

        RemoveFromBufferEmit(U u10) {
            this.buffer = u10;
        }

        @Override
        public void run() {
            synchronized (ObservableBufferTimed$BufferSkipBoundedObserver.this) {
                ObservableBufferTimed$BufferSkipBoundedObserver.this.buffers.remove(this.buffer);
            }
            ObservableBufferTimed$BufferSkipBoundedObserver observableBufferTimed$BufferSkipBoundedObserver = ObservableBufferTimed$BufferSkipBoundedObserver.this;
            observableBufferTimed$BufferSkipBoundedObserver.fastPathOrderedEmit(this.buffer, false, observableBufferTimed$BufferSkipBoundedObserver.f62393w);
        }
    }

    ObservableBufferTimed$BufferSkipBoundedObserver(io.reactivex.rxjava3.core.o oVar, yx.k kVar, long j10, long j11, TimeUnit timeUnit, Scheduler.Worker worker) {
        super(oVar, new MpscLinkedQueue());
        this.bufferSupplier = kVar;
        this.timespan = j10;
        this.timeskip = j11;
        this.unit = timeUnit;
        this.f62393w = worker;
        this.buffers = new LinkedList();
    }

    void clear() {
        synchronized (this) {
            this.buffers.clear();
        }
    }

    @Override
    public void dispose() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        clear();
        this.upstream.dispose();
        this.f62393w.dispose();
    }

    @Override
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override
    public void onComplete() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.buffers);
            this.buffers.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.queue.offer((Collection) it.next());
        }
        this.done = true;
        if (enter()) {
            io.reactivex.rxjava3.internal.util.i.d(this.queue, this.downstream, false, this.f62393w, this);
        }
    }

    @Override
    public void onError(Throwable th2) {
        this.done = true;
        clear();
        this.downstream.onError(th2);
        this.f62393w.dispose();
    }

    @Override
    public void onNext(T t10) {
        synchronized (this) {
            try {
                Iterator<U> it = this.buffers.iterator();
                while (it.hasNext()) {
                    it.next().add(t10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            try {
                Object obj = this.bufferSupplier.get();
                Objects.requireNonNull(obj, "The buffer supplied is null");
                Collection collection = (Collection) obj;
                this.buffers.add((U) collection);
                this.downstream.onSubscribe(this);
                Scheduler.Worker worker = this.f62393w;
                long j10 = this.timeskip;
                worker.schedulePeriodically(this, j10, j10, this.unit);
                this.f62393w.schedule(new RemoveFromBufferEmit(collection), this.timespan, this.unit);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                cVar.dispose();
                EmptyDisposable.error(th2, this.downstream);
                this.f62393w.dispose();
            }
        }
    }

    @Override
    public void run() {
        if (this.cancelled) {
            return;
        }
        try {
            Object obj = this.bufferSupplier.get();
            Objects.requireNonNull(obj, "The bufferSupplier returned a null buffer");
            Collection collection = (Collection) obj;
            synchronized (this) {
                try {
                    if (this.cancelled) {
                        return;
                    }
                    this.buffers.add((U) collection);
                    this.f62393w.schedule(new RemoveFromBuffer(collection), this.timespan, this.unit);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            this.downstream.onError(th3);
            dispose();
        }
    }

    @Override
    public void accept(io.reactivex.rxjava3.core.o oVar, U u10) {
        oVar.onNext(u10);
    }
}
