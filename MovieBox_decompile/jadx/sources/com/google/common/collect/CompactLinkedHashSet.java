package com.google.common.collect;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;

class CompactLinkedHashSet<E> extends CompactHashSet<E> {

    private transient int[] f29533e;

    private transient int[] f29534f;

    private transient int f29535g;

    private transient int f29536h;

    CompactLinkedHashSet() {
    }

    public static <E> CompactLinkedHashSet<E> create() {
        return new CompactLinkedHashSet<>();
    }

    public static <E> CompactLinkedHashSet<E> createWithExpectedSize(int i10) {
        return new CompactLinkedHashSet<>(i10);
    }

    private int p(int i10) {
        return q()[i10] - 1;
    }

    private int[] q() {
        int[] iArr = this.f29533e;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    private int[] r() {
        int[] iArr = this.f29534f;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    private void s(int i10, int i11) {
        q()[i10] = i11 + 1;
    }

    private void t(int i10, int i11) {
        if (i10 == -2) {
            this.f29535g = i11;
        } else {
            u(i10, i11);
        }
        if (i11 == -2) {
            this.f29536h = i10;
        } else {
            s(i11, i10);
        }
    }

    private void u(int i10, int i11) {
        r()[i10] = i11 + 1;
    }

    @Override
    int adjustAfterRemove(int i10, int i11) {
        return i10 >= size() ? i11 : i10;
    }

    @Override
    int allocArrays() {
        int iAllocArrays = super.allocArrays();
        this.f29533e = new int[iAllocArrays];
        this.f29534f = new int[iAllocArrays];
        return iAllocArrays;
    }

    @Override
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        this.f29535g = -2;
        this.f29536h = -2;
        int[] iArr = this.f29533e;
        if (iArr != null && this.f29534f != null) {
            Arrays.fill(iArr, 0, size(), 0);
            Arrays.fill(this.f29534f, 0, size(), 0);
        }
        super.clear();
    }

    @Override
    Set<E> convertToHashFloodingResistantImplementation() {
        Set<E> setConvertToHashFloodingResistantImplementation = super.convertToHashFloodingResistantImplementation();
        this.f29533e = null;
        this.f29534f = null;
        return setConvertToHashFloodingResistantImplementation;
    }

    @Override
    int firstEntryIndex() {
        return this.f29535g;
    }

    @Override
    int getSuccessor(int i10) {
        return r()[i10] - 1;
    }

    @Override
    void init(int i10) {
        super.init(i10);
        this.f29535g = -2;
        this.f29536h = -2;
    }

    @Override
    void insertEntry(int i10, E e10, int i11, int i12) {
        super.insertEntry(i10, e10, i11, i12);
        t(this.f29536h, i10);
        t(i10, -2);
    }

    @Override
    void moveLastEntry(int i10, int i11) {
        int size = size() - 1;
        super.moveLastEntry(i10, i11);
        t(p(i10), getSuccessor(i10));
        if (i10 < size) {
            t(p(size), i10);
            t(i10, getSuccessor(size));
        }
        q()[size] = 0;
        r()[size] = 0;
    }

    @Override
    void resizeEntries(int i10) {
        super.resizeEntries(i10);
        this.f29533e = Arrays.copyOf(q(), i10);
        this.f29534f = Arrays.copyOf(r(), i10);
    }

    @Override
    public Object[] toArray() {
        return n3.f(this);
    }

    CompactLinkedHashSet(int i10) {
        super(i10);
    }

    public static <E> CompactLinkedHashSet<E> create(Collection<? extends E> collection) {
        CompactLinkedHashSet<E> compactLinkedHashSetCreateWithExpectedSize = createWithExpectedSize(collection.size());
        compactLinkedHashSetCreateWithExpectedSize.addAll(collection);
        return compactLinkedHashSetCreateWithExpectedSize;
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) n3.g(this, tArr);
    }

    @SafeVarargs
    public static <E> CompactLinkedHashSet<E> create(E... eArr) {
        CompactLinkedHashSet<E> compactLinkedHashSetCreateWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(compactLinkedHashSetCreateWithExpectedSize, eArr);
        return compactLinkedHashSetCreateWithExpectedSize;
    }
}
