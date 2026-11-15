package com.google.common.collect;

import java.util.Objects;

class RegularImmutableList<E> extends ImmutableList<E> {
    static final ImmutableList<Object> EMPTY = new RegularImmutableList(new Object[0], 0);

    private final transient int f29808a;
    final transient Object[] array;

    RegularImmutableList(Object[] objArr, int i10) {
        this.array = objArr;
        this.f29808a = i10;
    }

    @Override
    int copyIntoArray(Object[] objArr, int i10) {
        System.arraycopy(this.array, 0, objArr, i10, this.f29808a);
        return i10 + this.f29808a;
    }

    @Override
    public E get(int i10) {
        com.google.common.base.m.m(i10, this.f29808a);
        E e10 = (E) this.array[i10];
        Objects.requireNonNull(e10);
        return e10;
    }

    @Override
    Object[] internalArray() {
        return this.array;
    }

    @Override
    int internalArrayEnd() {
        return this.f29808a;
    }

    @Override
    int internalArrayStart() {
        return 0;
    }

    @Override
    boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return this.f29808a;
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }
}
