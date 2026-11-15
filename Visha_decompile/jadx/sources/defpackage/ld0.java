package defpackage;

import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.Spliterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.KotlinNothingValueException;

public final class ld0 extends AbstractQueue implements BlockingQueue {
    public final Queue b;
    public final ReentrantLock c;
    public final Condition d;

    public ld0(Queue queue) {
        y45.j(queue, "backingQueue");
        this.b = queue;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.c = reentrantLock;
        this.d = reentrantLock.newCondition();
    }

    @Override
    public boolean add(Object obj) {
        return offer(obj);
    }

    @Override
    public int drainTo(Collection collection) {
        i();
        throw new KotlinNothingValueException();
    }

    public int f() {
        this.c.lock();
        try {
            return this.b.size();
        } finally {
            this.c.unlock();
        }
    }

    public final Void i() {
        throw new UnsupportedOperationException();
    }

    @Override
    public Iterator iterator() {
        i();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean offer(Object obj, long j, TimeUnit timeUnit) {
        y45.j(timeUnit, "unit");
        return offer(obj);
    }

    @Override
    public Object peek() {
        this.c.lock();
        try {
            return this.b.peek();
        } finally {
            this.c.unlock();
        }
    }

    @Override
    public Object poll() {
        this.c.lock();
        try {
            return this.b.poll();
        } finally {
            this.c.unlock();
        }
    }

    @Override
    public void put(Object obj) {
        offer(obj);
    }

    @Override
    public int remainingCapacity() {
        return Integer.MAX_VALUE;
    }

    @Override
    public boolean remove(Object obj) {
        this.c.lock();
        try {
            return this.b.remove(obj);
        } finally {
            this.c.unlock();
        }
    }

    @Override
    public final int size() {
        return f();
    }

    @Override
    public Spliterator spliterator() {
        i();
        throw new KotlinNothingValueException();
    }

    @Override
    public Object take() throws InterruptedException {
        this.c.lockInterruptibly();
        while (this.b.isEmpty()) {
            try {
                this.d.await();
            } catch (Throwable th) {
                this.c.unlock();
                throw th;
            }
        }
        Object objPoll = this.b.poll();
        this.c.unlock();
        return objPoll;
    }

    @Override
    public int drainTo(Collection collection, int i) {
        i();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean offer(Object obj) {
        this.c.lock();
        try {
            this.b.offer(obj);
            this.d.signal();
            zfb zfbVar = zfb.a;
            return true;
        } finally {
            this.c.unlock();
        }
    }

    @Override
    public Object poll(long j, TimeUnit timeUnit) throws InterruptedException {
        y45.j(timeUnit, "unit");
        this.c.lockInterruptibly();
        try {
            long nanos = timeUnit.toNanos(j);
            while (this.b.isEmpty() && nanos > 0) {
                nanos = this.d.awaitNanos(nanos);
            }
            return this.b.poll();
        } finally {
            this.c.unlock();
        }
    }
}
