package com.google.common.collect;

import defpackage.vb7;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;

class CompactLinkedHashSet<E> extends CompactHashSet<E> {
    public transient int[] f;
    public transient int[] g;
    public transient int h;
    public transient int i;

    public CompactLinkedHashSet() {
    }

    public static <E> CompactLinkedHashSet<E> create() {
        return new CompactLinkedHashSet<>();
    }

    public static <E> CompactLinkedHashSet<E> createWithExpectedSize(int i) {
        return new CompactLinkedHashSet<>(i);
    }

    @Override
    public int adjustAfterRemove(int i, int i2) {
        return i >= size() ? i2 : i;
    }

    @Override
    public int allocArrays() {
        int iAllocArrays = super.allocArrays();
        this.f = new int[iAllocArrays];
        this.g = new int[iAllocArrays];
        return iAllocArrays;
    }

    @Override
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        this.h = -2;
        this.i = -2;
        int[] iArr = this.f;
        if (iArr != null && this.g != null) {
            Arrays.fill(iArr, 0, size(), 0);
            Arrays.fill(this.g, 0, size(), 0);
        }
        super.clear();
    }

    @Override
    public Set<E> convertToHashFloodingResistantImplementation() {
        Set<E> setConvertToHashFloodingResistantImplementation = super.convertToHashFloodingResistantImplementation();
        this.f = null;
        this.g = null;
        return setConvertToHashFloodingResistantImplementation;
    }

    @Override
    public int firstEntryIndex() {
        return this.h;
    }

    @Override
    public int getSuccessor(int i) {
        return t()[i] - 1;
    }

    @Override
    public void init(int i) {
        super.init(i);
        this.h = -2;
        this.i = -2;
    }

    @Override
    public void insertEntry(int i, E e, int i2, int i3) {
        super.insertEntry(i, e, i2, i3);
        v(this.i, i);
        v(i, -2);
    }

    @Override
    public void moveLastEntry(int i, int i2) {
        int size = size() - 1;
        super.moveLastEntry(i, i2);
        v(r(i), getSuccessor(i));
        if (i < size) {
            v(r(size), i);
            v(i, getSuccessor(size));
        }
        s()[size] = 0;
        t()[size] = 0;
    }

    public final int r(int i) {
        return s()[i] - 1;
    }

    @Override
    public void resizeEntries(int i) {
        super.resizeEntries(i);
        this.f = Arrays.copyOf(s(), i);
        this.g = Arrays.copyOf(t(), i);
    }

    public final int[] s() {
        int[] iArr = this.f;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final int[] t() {
        int[] iArr = this.g;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    @Override
    public Object[] toArray() {
        return vb7.f(this);
    }

    public final void u(int i, int i2) {
        s()[i] = i2 + 1;
    }

    public final void v(int i, int i2) {
        if (i == -2) {
            this.h = i2;
        } else {
            w(i, i2);
        }
        if (i2 == -2) {
            this.i = i;
        } else {
            u(i2, i);
        }
    }

    public final void w(int i, int i2) {
        t()[i] = i2 + 1;
    }

    public CompactLinkedHashSet(int i) {
        super(i);
    }

    public static <E> CompactLinkedHashSet<E> create(Collection<? extends E> collection) {
        CompactLinkedHashSet<E> compactLinkedHashSetCreateWithExpectedSize = createWithExpectedSize(collection.size());
        compactLinkedHashSetCreateWithExpectedSize.addAll(collection);
        return compactLinkedHashSetCreateWithExpectedSize;
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) vb7.g(this, tArr);
    }

    @SafeVarargs
    public static <E> CompactLinkedHashSet<E> create(E... eArr) {
        CompactLinkedHashSet<E> compactLinkedHashSetCreateWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(compactLinkedHashSetCreateWithExpectedSize, eArr);
        return compactLinkedHashSetCreateWithExpectedSize;
    }
}
