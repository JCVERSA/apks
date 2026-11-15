package com.google.common.collect;

import defpackage.dgb;
import defpackage.xd8;

final class SingletonImmutableSet<E> extends ImmutableSet<E> {
    final transient E element;

    public SingletonImmutableSet(E e) {
        this.element = (E) xd8.o(e);
    }

    @Override
    public ImmutableList<E> asList() {
        return ImmutableList.of((Object) this.element);
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
        return this.element.hashCode();
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
        return '[' + this.element.toString() + ']';
    }

    @Override
    public Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public dgb iterator() {
        return Iterators.x(this.element);
    }
}
