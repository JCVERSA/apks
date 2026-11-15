package com.google.common.collect;

final class RegularImmutableSet<E> extends ImmutableSet<E> {
    static final RegularImmutableSet<Object> EMPTY;

    private static final Object[] f29822d;

    private final transient int f29823a;

    private final transient int f29824b;

    private final transient int f29825c;
    final transient Object[] elements;
    final transient Object[] table;

    static {
        Object[] objArr = new Object[0];
        f29822d = objArr;
        EMPTY = new RegularImmutableSet<>(objArr, 0, objArr, 0, 0);
    }

    RegularImmutableSet(Object[] objArr, int i10, Object[] objArr2, int i11, int i12) {
        this.elements = objArr;
        this.f29823a = i10;
        this.table = objArr2;
        this.f29824b = i11;
        this.f29825c = i12;
    }

    @Override
    public boolean contains(Object obj) {
        Object[] objArr = this.table;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int iD = v2.d(obj);
        while (true) {
            int i10 = iD & this.f29824b;
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iD = i10 + 1;
        }
    }

    @Override
    int copyIntoArray(Object[] objArr, int i10) {
        System.arraycopy(this.elements, 0, objArr, i10, this.f29825c);
        return i10 + this.f29825c;
    }

    @Override
    ImmutableList<E> createAsList() {
        return ImmutableList.asImmutableList(this.elements, this.f29825c);
    }

    @Override
    public int hashCode() {
        return this.f29823a;
    }

    @Override
    Object[] internalArray() {
        return this.elements;
    }

    @Override
    int internalArrayEnd() {
        return this.f29825c;
    }

    @Override
    int internalArrayStart() {
        return 0;
    }

    @Override
    boolean isHashCodeFast() {
        return true;
    }

    @Override
    boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return this.f29825c;
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public r4 iterator() {
        return asList().iterator();
    }
}
