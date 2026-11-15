package com.google.common.collect;

final class SingletonImmutableSet<E> extends ImmutableSet<E> {
    final transient E element;

    SingletonImmutableSet(E e10) {
        this.element = (E) com.google.common.base.m.o(e10);
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
    int copyIntoArray(Object[] objArr, int i10) {
        objArr[i10] = this.element;
        return i10 + 1;
    }

    @Override
    public final int hashCode() {
        return this.element.hashCode();
    }

    @Override
    boolean isPartialView() {
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
    Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public r4 iterator() {
        return Iterators.x(this.element);
    }
}
