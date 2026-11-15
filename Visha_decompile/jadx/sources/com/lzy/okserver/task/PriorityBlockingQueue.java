package com.lzy.okserver.task;

import defpackage.nf8;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class PriorityBlockingQueue<E> extends AbstractQueue<E> implements BlockingQueue<E>, Serializable {
    private static final long serialVersionUID = -6903933977591709194L;
    private final int capacity;
    private final AtomicInteger count;
    transient PriorityBlockingQueue<E>.b head;
    private transient PriorityBlockingQueue<E>.b last;
    private final Condition notEmpty;
    private final Condition notFull;
    private final ReentrantLock putLock;
    private final ReentrantLock takeLock;

    public class a implements Iterator {
        public b b;
        public b c;
        public Object d;

        public a() {
            PriorityBlockingQueue.this.fullyLock();
            try {
                b bVar = PriorityBlockingQueue.this.head.c;
                this.b = bVar;
                if (bVar != null) {
                    this.d = bVar.b();
                }
            } finally {
                PriorityBlockingQueue.this.fullyUnlock();
            }
        }

        public final b a(b bVar) {
            while (true) {
                b bVar2 = bVar.c;
                if (bVar2 == bVar) {
                    return PriorityBlockingQueue.this.head.c;
                }
                if (bVar2 == null || bVar2.b() != null) {
                    return bVar2;
                }
                bVar = bVar2;
            }
        }

        @Override
        public boolean hasNext() {
            return this.b != null;
        }

        @Override
        public Object next() {
            PriorityBlockingQueue.this.fullyLock();
            try {
                b bVar = this.b;
                if (bVar == null) {
                    throw new NoSuchElementException();
                }
                Object obj = this.d;
                this.c = bVar;
                b bVarA = a(bVar);
                this.b = bVarA;
                this.d = bVarA == null ? null : bVarA.b();
                PriorityBlockingQueue.this.fullyUnlock();
                return obj;
            } catch (Throwable th) {
                PriorityBlockingQueue.this.fullyUnlock();
                throw th;
            }
        }

        @Override
        public void remove() {
            PriorityBlockingQueue<E>.b bVar;
            if (this.c == null) {
                throw new IllegalStateException();
            }
            PriorityBlockingQueue.this.fullyLock();
            try {
                PriorityBlockingQueue<E>.b bVar2 = this.c;
                this.c = null;
                PriorityBlockingQueue<E>.b bVar3 = PriorityBlockingQueue.this.head;
                do {
                    bVar = bVar3;
                    bVar3 = bVar3.c;
                    if (bVar3 != null) {
                    }
                } while (bVar3 != bVar2);
                PriorityBlockingQueue.this.unlink(bVar3, bVar);
            } finally {
                PriorityBlockingQueue.this.fullyUnlock();
            }
        }
    }

    public class b {
        public boolean a = false;
        public nf8 b;
        public b c;

        public b(Object obj) {
            c(obj);
        }

        public int a() {
            return this.b.priority;
        }

        public Object b() {
            nf8 nf8Var = this.b;
            if (nf8Var == null) {
                return null;
            }
            return this.a ? nf8Var : nf8Var.obj;
        }

        public void c(Object obj) {
            if (obj == null) {
                this.b = null;
            } else if (!(obj instanceof nf8)) {
                this.b = new nf8(0, obj);
            } else {
                this.b = (nf8) obj;
                this.a = true;
            }
        }
    }

    public PriorityBlockingQueue() {
        this(Integer.MAX_VALUE);
    }

    private E _dequeue() {
        PriorityBlockingQueue<E>.b bVar = this.head;
        PriorityBlockingQueue<E>.b bVar2 = bVar.c;
        bVar.c = bVar;
        this.head = bVar2;
        E e = (E) bVar2.b();
        bVar2.c(null);
        return e;
    }

    private void _enqueue(PriorityBlockingQueue<E>.b bVar) {
        PriorityBlockingQueue<E>.b bVar2 = this.head;
        while (true) {
            b bVar3 = bVar2.c;
            if (bVar3 == null) {
                this.last.c = bVar;
                this.last = bVar;
                return;
            } else {
                if (bVar3.a() < bVar.a()) {
                    bVar2.c = bVar;
                    bVar.c = bVar3;
                    return;
                }
                bVar2 = bVar2.c;
            }
        }
    }

    private synchronized E opQueue(PriorityBlockingQueue<E>.b bVar) {
        try {
            if (bVar == null) {
                return _dequeue();
            }
            _enqueue(bVar);
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.count.set(0);
        PriorityBlockingQueue<E>.b bVar = new b(null);
        this.head = bVar;
        this.last = bVar;
        while (true) {
            Object object = objectInputStream.readObject();
            if (object == null) {
                return;
            } else {
                add(object);
            }
        }
    }

    private void signalNotEmpty() {
        ReentrantLock reentrantLock = this.takeLock;
        reentrantLock.lock();
        try {
            this.notEmpty.signal();
        } finally {
            reentrantLock.unlock();
        }
    }

    private void signalNotFull() {
        ReentrantLock reentrantLock = this.putLock;
        reentrantLock.lock();
        try {
            this.notFull.signal();
        } finally {
            reentrantLock.unlock();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        fullyLock();
        try {
            objectOutputStream.defaultWriteObject();
            PriorityBlockingQueue<E>.b bVar = this.head;
            while (true) {
                bVar = bVar.c;
                if (bVar == null) {
                    objectOutputStream.writeObject(null);
                    return;
                }
                objectOutputStream.writeObject(bVar.b());
            }
        } finally {
            fullyUnlock();
        }
    }

    @Override
    public void clear() {
        fullyLock();
        try {
            PriorityBlockingQueue<E>.b bVar = this.head;
            while (true) {
                PriorityBlockingQueue<E>.b bVar2 = bVar.c;
                if (bVar2 == null) {
                    break;
                }
                bVar.c = bVar;
                bVar2.c(null);
                bVar = bVar2;
            }
            this.head = this.last;
            if (this.count.getAndSet(0) == this.capacity) {
                this.notFull.signal();
            }
        } finally {
            fullyUnlock();
        }
    }

    @Override
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        fullyLock();
        try {
            PriorityBlockingQueue<E>.b bVar = this.head;
            do {
                bVar = bVar.c;
                if (bVar == null) {
                    return false;
                }
            } while (!obj.equals(bVar.b()));
            return true;
        } finally {
            fullyUnlock();
        }
    }

    @Override
    public int drainTo(Collection<? super E> collection) {
        return drainTo(collection, Integer.MAX_VALUE);
    }

    public void fullyLock() {
        this.putLock.lock();
        this.takeLock.lock();
    }

    public void fullyUnlock() {
        this.takeLock.unlock();
        this.putLock.unlock();
    }

    @Override
    public Iterator<E> iterator() {
        return new a();
    }

    @Override
    public boolean offer(E e, long j, TimeUnit timeUnit) throws InterruptedException {
        e.getClass();
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.putLock;
        AtomicInteger atomicInteger = this.count;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == this.capacity) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return false;
                }
                nanos = this.notFull.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        opQueue(new b(e));
        int andIncrement = atomicInteger.getAndIncrement();
        if (andIncrement + 1 < this.capacity) {
            this.notFull.signal();
        }
        reentrantLock.unlock();
        if (andIncrement != 0) {
            return true;
        }
        signalNotEmpty();
        return true;
    }

    @Override
    public E peek() {
        if (this.count.get() == 0) {
            return null;
        }
        ReentrantLock reentrantLock = this.takeLock;
        reentrantLock.lock();
        try {
            b bVar = this.head.c;
            if (bVar == null) {
                return null;
            }
            return (E) bVar.b();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    public E poll(long j, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j);
        AtomicInteger atomicInteger = this.count;
        ReentrantLock reentrantLock = this.takeLock;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == 0) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return null;
                }
                nanos = this.notEmpty.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        E eOpQueue = opQueue(null);
        int andDecrement = atomicInteger.getAndDecrement();
        if (andDecrement > 1) {
            this.notEmpty.signal();
        }
        reentrantLock.unlock();
        if (andDecrement == this.capacity) {
            signalNotFull();
        }
        return eOpQueue;
    }

    @Override
    public void put(E e) throws InterruptedException {
        e.getClass();
        PriorityBlockingQueue<E>.b bVar = new b(e);
        ReentrantLock reentrantLock = this.putLock;
        AtomicInteger atomicInteger = this.count;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == this.capacity) {
            try {
                this.notFull.await();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        opQueue(bVar);
        int andIncrement = atomicInteger.getAndIncrement();
        if (andIncrement + 1 < this.capacity) {
            this.notFull.signal();
        }
        reentrantLock.unlock();
        if (andIncrement == 0) {
            signalNotEmpty();
        }
    }

    @Override
    public int remainingCapacity() {
        return this.capacity - this.count.get();
    }

    @Override
    public boolean remove(Object obj) {
        PriorityBlockingQueue<E>.b bVar;
        if (obj == null) {
            return false;
        }
        fullyLock();
        try {
            PriorityBlockingQueue<E>.b bVar2 = this.head;
            do {
                bVar = bVar2;
                bVar2 = bVar2.c;
                if (bVar2 == null) {
                    return false;
                }
            } while (!obj.equals(bVar2.b()));
            unlink(bVar2, bVar);
            return true;
        } finally {
            fullyUnlock();
        }
    }

    @Override
    public int size() {
        return this.count.get();
    }

    @Override
    public E take() throws InterruptedException {
        AtomicInteger atomicInteger = this.count;
        ReentrantLock reentrantLock = this.takeLock;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == 0) {
            try {
                this.notEmpty.await();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        E eOpQueue = opQueue(null);
        int andDecrement = atomicInteger.getAndDecrement();
        if (andDecrement > 1) {
            this.notEmpty.signal();
        }
        reentrantLock.unlock();
        if (andDecrement == this.capacity) {
            signalNotFull();
        }
        return eOpQueue;
    }

    @Override
    public Object[] toArray() {
        fullyLock();
        try {
            Object[] objArr = new Object[this.count.get()];
            b bVar = this.head.c;
            int i = 0;
            while (bVar != null) {
                int i2 = i + 1;
                objArr[i] = bVar.b();
                bVar = bVar.c;
                i = i2;
            }
            fullyUnlock();
            return objArr;
        } catch (Throwable th) {
            fullyUnlock();
            throw th;
        }
    }

    public void unlink(PriorityBlockingQueue<E>.b bVar, PriorityBlockingQueue<E>.b bVar2) {
        bVar.c(null);
        bVar2.c = bVar.c;
        if (this.last == bVar) {
            this.last = bVar2;
        }
        if (this.count.getAndDecrement() == this.capacity) {
            this.notFull.signal();
        }
    }

    public PriorityBlockingQueue(int i) {
        this.count = new AtomicInteger();
        ReentrantLock reentrantLock = new ReentrantLock();
        this.takeLock = reentrantLock;
        this.notEmpty = reentrantLock.newCondition();
        ReentrantLock reentrantLock2 = new ReentrantLock();
        this.putLock = reentrantLock2;
        this.notFull = reentrantLock2.newCondition();
        if (i <= 0) {
            throw new IllegalArgumentException();
        }
        this.capacity = i;
        PriorityBlockingQueue<E>.b bVar = new b(null);
        this.head = bVar;
        this.last = bVar;
    }

    @Override
    public int drainTo(Collection<? super E> collection, int i) {
        collection.getClass();
        if (collection == this) {
            throw new IllegalArgumentException();
        }
        boolean z = false;
        if (i <= 0) {
            return 0;
        }
        ReentrantLock reentrantLock = this.takeLock;
        reentrantLock.lock();
        try {
            int iMin = Math.min(i, this.count.get());
            PriorityBlockingQueue<E>.b bVar = this.head;
            int i2 = 0;
            while (i2 < iMin) {
                try {
                    PriorityBlockingQueue<E>.b bVar2 = bVar.c;
                    collection.add(bVar2.b());
                    bVar2.c(null);
                    bVar.c = bVar;
                    i2++;
                    bVar = bVar2;
                } catch (Throwable th) {
                    if (i2 > 0) {
                        this.head = bVar;
                        if (this.count.getAndAdd(-i2) == this.capacity) {
                        }
                    }
                    throw th;
                }
            }
            if (i2 > 0) {
                this.head = bVar;
                if (this.count.getAndAdd(-i2) == this.capacity) {
                    z = true;
                }
            }
            reentrantLock.unlock();
            if (z) {
                signalNotFull();
            }
            return iMin;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            if (0 != 0) {
                signalNotFull();
            }
            throw th2;
        }
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        fullyLock();
        try {
            int i = this.count.get();
            if (tArr.length < i) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
            }
            b bVar = this.head.c;
            int i2 = 0;
            while (bVar != null) {
                tArr[i2] = bVar.b();
                bVar = bVar.c;
                i2++;
            }
            if (tArr.length > i2) {
                tArr[i2] = null;
            }
            return tArr;
        } finally {
            fullyUnlock();
        }
    }

    public PriorityBlockingQueue(Collection<? extends E> collection) {
        this(Integer.MAX_VALUE);
        ReentrantLock reentrantLock = this.putLock;
        reentrantLock.lock();
        try {
            int i = 0;
            for (E e : collection) {
                if (e != null) {
                    if (i != this.capacity) {
                        opQueue(new b(e));
                        i++;
                    } else {
                        throw new IllegalStateException("Queue full");
                    }
                } else {
                    throw new NullPointerException();
                }
            }
            this.count.set(i);
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override
    public E poll() {
        int andDecrement;
        AtomicInteger atomicInteger = this.count;
        E eOpQueue = null;
        if (atomicInteger.get() == 0) {
            return null;
        }
        ReentrantLock reentrantLock = this.takeLock;
        reentrantLock.lock();
        try {
            if (atomicInteger.get() > 0) {
                eOpQueue = opQueue(null);
                andDecrement = atomicInteger.getAndDecrement();
                if (andDecrement > 1) {
                    this.notEmpty.signal();
                }
            } else {
                andDecrement = -1;
            }
            reentrantLock.unlock();
            if (andDecrement == this.capacity) {
                signalNotFull();
            }
            return eOpQueue;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override
    public boolean offer(E e) {
        int andIncrement;
        e.getClass();
        AtomicInteger atomicInteger = this.count;
        if (atomicInteger.get() == this.capacity) {
            return false;
        }
        PriorityBlockingQueue<E>.b bVar = new b(e);
        ReentrantLock reentrantLock = this.putLock;
        reentrantLock.lock();
        try {
            if (atomicInteger.get() < this.capacity) {
                opQueue(bVar);
                andIncrement = atomicInteger.getAndIncrement();
                if (andIncrement + 1 < this.capacity) {
                    this.notFull.signal();
                }
            } else {
                andIncrement = -1;
            }
            reentrantLock.unlock();
            if (andIncrement == 0) {
                signalNotEmpty();
            }
            return andIncrement >= 0;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
