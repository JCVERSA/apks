package io.reactivex.internal.operators.flowable;

import defpackage.f2a;
import defpackage.rc2;
import defpackage.vf0;
import defpackage.y14;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class BlockingFlowableIterable$BlockingFlowableIterator<T> extends AtomicReference<f2a> implements y14, Iterator<T>, Runnable, rc2 {
    private static final long serialVersionUID = 6695226475494099826L;
    final long batchSize;
    final Condition condition;
    volatile boolean done;
    volatile Throwable error;
    final long limit;
    final Lock lock;
    long produced;
    final SpscArrayQueue<T> queue;

    public BlockingFlowableIterable$BlockingFlowableIterator(int i) {
        this.queue = new SpscArrayQueue<>(i);
        this.batchSize = i;
        this.limit = i - (i >> 2);
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.condition = reentrantLock.newCondition();
    }

    @Override
    public void dispose() {
        SubscriptionHelper.cancel(this);
        signalConsumer();
    }

    @Override
    public boolean hasNext() {
        while (!isDisposed()) {
            boolean z = this.done;
            boolean zIsEmpty = this.queue.isEmpty();
            if (z) {
                Throwable th = this.error;
                if (th != null) {
                    throw ExceptionHelper.d(th);
                }
                if (zIsEmpty) {
                    return false;
                }
            }
            if (!zIsEmpty) {
                return true;
            }
            vf0.a();
            this.lock.lock();
            while (!this.done && this.queue.isEmpty() && !isDisposed()) {
                try {
                    try {
                        this.condition.await();
                    } catch (InterruptedException e) {
                        run();
                        throw ExceptionHelper.d(e);
                    }
                } catch (Throwable th2) {
                    this.lock.unlock();
                    throw th2;
                }
            }
            this.lock.unlock();
        }
        Throwable th3 = this.error;
        if (th3 == null) {
            return false;
        }
        throw ExceptionHelper.d(th3);
    }

    @Override
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        T tPoll = this.queue.poll();
        long j = this.produced + 1;
        if (j == this.limit) {
            this.produced = 0L;
            get().request(j);
        } else {
            this.produced = j;
        }
        return tPoll;
    }

    @Override
    public void onComplete() {
        this.done = true;
        signalConsumer();
    }

    @Override
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        signalConsumer();
    }

    @Override
    public void onNext(T t) {
        if (this.queue.offer(t)) {
            signalConsumer();
        } else {
            SubscriptionHelper.cancel(this);
            onError(new MissingBackpressureException("Queue full?!"));
        }
    }

    @Override
    public void onSubscribe(f2a f2aVar) {
        SubscriptionHelper.setOnce(this, f2aVar, this.batchSize);
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("remove");
    }

    @Override
    public void run() {
        SubscriptionHelper.cancel(this);
        signalConsumer();
    }

    public void signalConsumer() {
        this.lock.lock();
        try {
            this.condition.signalAll();
        } finally {
            this.lock.unlock();
        }
    }
}
