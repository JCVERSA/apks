package com.google.common.collect;

import java.io.Serializable;
import java.util.Iterator;

final class ReverseOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final Ordering<? super T> forwardOrder;

    ReverseOrdering(Ordering<? super T> ordering) {
        this.forwardOrder = (Ordering) com.google.common.base.m.o(ordering);
    }

    @Override
    public int compare(T t10, T t11) {
        return this.forwardOrder.compare(t11, t10);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReverseOrdering) {
            return this.forwardOrder.equals(((ReverseOrdering) obj).forwardOrder);
        }
        return false;
    }

    public int hashCode() {
        return -this.forwardOrder.hashCode();
    }

    @Override
    public <E extends T> E max(E e10, E e11) {
        return (E) this.forwardOrder.min(e10, e11);
    }

    @Override
    public <E extends T> E min(E e10, E e11) {
        return (E) this.forwardOrder.max(e10, e11);
    }

    @Override
    public <S extends T> Ordering<S> reverse() {
        return this.forwardOrder;
    }

    public String toString() {
        return this.forwardOrder + ".reverse()";
    }

    @Override
    public <E extends T> E max(E e10, E e11, E e12, E... eArr) {
        return (E) this.forwardOrder.min(e10, e11, e12, eArr);
    }

    @Override
    public <E extends T> E min(E e10, E e11, E e12, E... eArr) {
        return (E) this.forwardOrder.max(e10, e11, e12, eArr);
    }

    @Override
    public <E extends T> E max(Iterator<E> it) {
        return (E) this.forwardOrder.min(it);
    }

    @Override
    public <E extends T> E min(Iterator<E> it) {
        return (E) this.forwardOrder.max(it);
    }

    @Override
    public <E extends T> E max(Iterable<E> iterable) {
        return (E) this.forwardOrder.min(iterable);
    }

    @Override
    public <E extends T> E min(Iterable<E> iterable) {
        return (E) this.forwardOrder.max(iterable);
    }
}
