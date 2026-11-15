package com.bumptech.glide.repackaged.com.google.common.collect;

import com.bumptech.glide.repackaged.com.google.common.base.Preconditions;

final class SingletonImmutableSet<E> extends ImmutableSet<E> {
    private transient int cachedHashCode;
    final transient E element;

    public SingletonImmutableSet(E e) {
        this.element = (E) Preconditions.checkNotNull(e);
    }

    @Override
    public boolean contains(Object obj) {
        return this.element.equals(obj);
    }

    @Override
    public int copyIntoArray(Object[] objArr, int i) {
        objArr[i] = this.element;
        return i + 1;
    }

    @Override
    public final int hashCode() {
        int i = this.cachedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.element.hashCode();
        this.cachedHashCode = iHashCode;
        return iHashCode;
    }

    @Override
    public boolean isHashCodeFast() {
        return this.cachedHashCode != 0;
    }

    @Override
    public boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return 1;
    }

    @Override
    public String toString() {
        String string = this.element.toString();
        StringBuilder sb = new StringBuilder(string.length() + 2);
        sb.append('[');
        sb.append(string);
        sb.append(']');
        return sb.toString();
    }

    @Override
    public UnmodifiableIterator<E> iterator() {
        return Iterators.singletonIterator(this.element);
    }

    public SingletonImmutableSet(E e, int i) {
        this.element = e;
        this.cachedHashCode = i;
    }
}
