package com.google.common.collect;

import defpackage.dgb;
import defpackage.mo4;

final class RegularImmutableSet<E> extends ImmutableSet<E> {
    static final RegularImmutableSet<Object> EMPTY;
    public static final Object[] e;
    public final transient int b;
    public final transient int c;
    public final transient int d;
    final transient Object[] elements;
    final transient Object[] table;

    static {
        Object[] objArr = new Object[0];
        e = objArr;
        EMPTY = new RegularImmutableSet<>(objArr, 0, objArr, 0, 0);
    }

    public RegularImmutableSet(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.elements = objArr;
        this.b = i;
        this.table = objArr2;
        this.c = i2;
        this.d = i3;
    }

    @Override
    public boolean contains(Object obj) {
        Object[] objArr = this.table;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int iD = mo4.d(obj);
        while (true) {
            int i = iD & this.c;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iD = i + 1;
        }
    }

    @Override
    public int copyIntoArray(Object[] objArr, int i) {
        System.arraycopy(this.elements, 0, objArr, i, this.d);
        return i + this.d;
    }

    @Override
    public ImmutableList<E> createAsList() {
        return ImmutableList.asImmutableList(this.elements, this.d);
    }

    @Override
    public int hashCode() {
        return this.b;
    }

    @Override
    public Object[] internalArray() {
        return this.elements;
    }

    @Override
    public int internalArrayEnd() {
        return this.d;
    }

    @Override
    public int internalArrayStart() {
        return 0;
    }

    @Override
    public boolean isHashCodeFast() {
        return true;
    }

    @Override
    public boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return this.d;
    }

    @Override
    public Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public dgb iterator() {
        return asList().iterator();
    }
}
