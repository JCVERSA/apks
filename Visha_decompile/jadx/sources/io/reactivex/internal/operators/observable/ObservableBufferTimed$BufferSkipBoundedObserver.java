package io.reactivex.internal.operators.observable;

import defpackage.ac7;
import defpackage.hm8;
import defpackage.im8;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.queue.MpscLinkedQueue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

final class ObservableBufferTimed$BufferSkipBoundedObserver<T, U extends Collection<? super T>> extends im8 implements Runnable, rc2 {
    final Callable<U> bufferSupplier;
    final List<U> buffers;
    final long timeskip;
    final long timespan;
    final TimeUnit unit;
    rc2 upstream;
    final Scheduler.Worker w;

    public final class RemoveFromBuffer implements Runnable {
        private final U b;

        public RemoveFromBuffer(U u) {
            this.b = u;
        }

        @Override
        public void run() {
            synchronized (ObservableBufferTimed$BufferSkipBoundedObserver.this) {
                ObservableBufferTimed$BufferSkipBoundedObserver.this.buffers.remove(this.b);
            }
            ObservableBufferTimed$BufferSkipBoundedObserver observableBufferTimed$BufferSkipBoundedObserver = ObservableBufferTimed$BufferSkipBoundedObserver.this;
            observableBufferTimed$BufferSkipBoundedObserver.fastPathOrderedEmit(this.b, false, observableBufferTimed$BufferSkipBoundedObserver.w);
        }
    }

    public final class RemoveFromBufferEmit implements Runnable {
        private final U buffer;

        public RemoveFromBufferEmit(U u) {
            this.buffer = u;
        }

        @Override
        public void run() {
            synchronized (ObservableBufferTimed$BufferSkipBoundedObserver.this) {
                ObservableBufferTimed$BufferSkipBoundedObserver.this.buffers.remove(this.buffer);
            }
            ObservableBufferTimed$BufferSkipBoundedObserver observableBufferTimed$BufferSkipBoundedObserver = ObservableBufferTimed$BufferSkipBoundedObserver.this;
            observableBufferTimed$BufferSkipBoundedObserver.fastPathOrderedEmit(this.buffer, false, observableBufferTimed$BufferSkipBoundedObserver.w);
        }
    }

    public ObservableBufferTimed$BufferSkipBoundedObserver(pd7 pd7Var, Callable<U> callable, long j, long j2, TimeUnit timeUnit, Scheduler.Worker worker) {
        super(pd7Var, new MpscLinkedQueue());
        this.bufferSupplier = callable;
        this.timespan = j;
        this.timeskip = j2;
        this.unit = timeUnit;
        this.w = worker;
        this.buffers = new LinkedList();
    }

    public void clear() {
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
        this.w.dispose();
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
            hm8.d(this.queue, this.downstream, false, this.w, this);
        }
    }

    @Override
    public void onError(Throwable th) {
        this.done = true;
        clear();
        this.downstream.onError(th);
        this.w.dispose();
    }

    @Override
    public void onNext(T t) {
        synchronized (this) {
            try {
                Iterator<U> it = this.buffers.iterator();
                while (it.hasNext()) {
                    it.next().add(t);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.validate(this.upstream, rc2Var)) {
            this.upstream = rc2Var;
            try {
                Collection collection = (Collection) ac7.d(this.bufferSupplier.call(), "The buffer supplied is null");
                this.buffers.add((U) collection);
                this.downstream.onSubscribe(this);
                Scheduler.Worker worker = this.w;
                long j = this.timeskip;
                worker.schedulePeriodically(this, j, j, this.unit);
                this.w.schedule(new RemoveFromBufferEmit(collection), this.timespan, this.unit);
            } catch (Throwable th) {
                re3.b(th);
                rc2Var.dispose();
                EmptyDisposable.error(th, this.downstream);
                this.w.dispose();
            }
        }
    }

    @Override
    public void run() {
        if (this.cancelled) {
            return;
        }
        try {
            Collection collection = (Collection) ac7.d(this.bufferSupplier.call(), "The bufferSupplier returned a null buffer");
            synchronized (this) {
                try {
                    if (this.cancelled) {
                        return;
                    }
                    this.buffers.add((U) collection);
                    this.w.schedule(new RemoveFromBuffer(collection), this.timespan, this.unit);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            re3.b(th2);
            this.downstream.onError(th2);
            dispose();
        }
    }

    @Override
    public void accept(pd7 pd7Var, U u) {
        pd7Var.onNext(u);
    }
}
