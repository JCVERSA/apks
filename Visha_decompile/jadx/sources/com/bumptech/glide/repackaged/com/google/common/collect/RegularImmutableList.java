package com.bumptech.glide.repackaged.com.google.common.collect;

import com.bumptech.glide.repackaged.com.google.common.base.Preconditions;

class RegularImmutableList<E> extends ImmutableList<E> {
    static final ImmutableList<Object> EMPTY = new RegularImmutableList(ObjectArrays.EMPTY_ARRAY);
    private final transient Object[] array;
    private final transient int offset;
    private final transient int size;

    public RegularImmutableList(Object[] objArr, int i, int i2) {
        this.offset = i;
        this.size = i2;
        this.array = objArr;
    }

    @Override
    public int copyIntoArray(Object[] objArr, int i) {
        System.arraycopy(this.array, this.offset, objArr, i, this.size);
        return i + this.size;
    }

    @Override
    public E get(int i) {
        Preconditions.checkElementIndex(i, this.size);
        return (E) this.array[i + this.offset];
    }

    @Override
    public boolean isPartialView() {
        return this.size != this.array.length;
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public ImmutableList<E> subListUnchecked(int i, int i2) {
        return new RegularImmutableList(this.array, this.offset + i, i2 - i);
    }

    @Override
    public UnmodifiableListIterator<E> listIterator(int i) {
        return Iterators.forArray(this.array, this.offset, this.size, i);
    }

    public RegularImmutableList(Object[] objArr) {
        this(objArr, 0, objArr.length);
    }
}
