package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;

public final class EvictingQueue<E> extends r2 implements Serializable {
    private static final long serialVersionUID = 0;
    private final Queue<E> delegate;
    final int maxSize;

    private EvictingQueue(int i10) {
        com.google.common.base.m.f(i10 >= 0, "maxSize (%s) must >= 0", i10);
        this.delegate = new ArrayDeque(i10);
        this.maxSize = i10;
    }

    public static <E> EvictingQueue<E> create(int i10) {
        return new EvictingQueue<>(i10);
    }

    @Override
    public boolean add(E e10) {
        com.google.common.base.m.o(e10);
        if (this.maxSize == 0) {
            return true;
        }
        if (size() == this.maxSize) {
            this.delegate.remove();
        }
        this.delegate.add(e10);
        return true;
    }

    @Override
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size();
        if (size < this.maxSize) {
            return standardAddAll(collection);
        }
        clear();
        return g3.a(this, g3.n(collection, size - this.maxSize));
    }

    @Override
    public boolean offer(E e10) {
        return add(e10);
    }

    public int remainingCapacity() {
        return this.maxSize - size();
    }

    @Override
    public Object[] toArray() {
        return super.toArray();
    }

    @Override
    public Queue<E> l() {
        return this.delegate;
    }
}
