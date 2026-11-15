package com.google.common.collect;

import defpackage.xd8;
import java.util.Objects;

class RegularImmutableList<E> extends ImmutableList<E> {
    static final ImmutableList<Object> EMPTY = new RegularImmutableList(new Object[0], 0);
    final transient Object[] array;
    public final transient int b;

    public RegularImmutableList(Object[] objArr, int i) {
        this.array = objArr;
        this.b = i;
    }

    @Override
    public int copyIntoArray(Object[] objArr, int i) {
        System.arraycopy(this.array, 0, objArr, i, this.b);
        return i + this.b;
    }

    @Override
    public E get(int i) {
        xd8.m(i, this.b);
        E e = (E) this.array[i];
        Objects.requireNonNull(e);
        return e;
    }

    @Override
    public Object[] internalArray() {
        return this.array;
    }

    @Override
    public int internalArrayEnd() {
        return this.b;
    }

    @Override
    public int internalArrayStart() {
        return 0;
    }

    @Override
    public boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return this.b;
    }

    @Override
    public Object writeReplace() {
        return super.writeReplace();
    }
}
