package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.util.Comparator;

final class RegularImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {

    private final transient long[] f29827a;

    private final transient int f29828b;

    private final transient int f29829c;
    final transient RegularImmutableSortedSet<E> elementSet;

    private static final long[] f29826d = {0};
    static final ImmutableSortedMultiset<?> NATURAL_EMPTY_MULTISET = new RegularImmutableSortedMultiset(Ordering.natural());

    RegularImmutableSortedMultiset(Comparator<? super E> comparator) {
        this.elementSet = ImmutableSortedSet.emptySet(comparator);
        this.f29827a = f29826d;
        this.f29828b = 0;
        this.f29829c = 0;
    }

    private int i(int i10) {
        long[] jArr = this.f29827a;
        int i11 = this.f29828b;
        return (int) (jArr[(i11 + i10) + 1] - jArr[i11 + i10]);
    }

    @Override
    public int count(Object obj) {
        int iIndexOf = this.elementSet.indexOf(obj);
        if (iIndexOf >= 0) {
            return i(iIndexOf);
        }
        return 0;
    }

    @Override
    public l3.a firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return getEntry(0);
    }

    @Override
    l3.a getEntry(int i10) {
        return Multisets.g(this.elementSet.asList().get(i10), i(i10));
    }

    ImmutableSortedMultiset<E> getSubMultiset(int i10, int i11) {
        com.google.common.base.m.t(i10, i11, this.f29829c);
        if (i10 == i11) {
            return ImmutableSortedMultiset.emptyMultiset(comparator());
        }
        return (i10 == 0 && i11 == this.f29829c) ? this : new RegularImmutableSortedMultiset(this.elementSet.getSubSet(i10, i11), this.f29827a, this.f29828b + i10, i11 - i10);
    }

    @Override
    boolean isPartialView() {
        return this.f29828b > 0 || this.f29829c < this.f29827a.length - 1;
    }

    @Override
    public l3.a lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return getEntry(this.f29829c - 1);
    }

    @Override
    public int size() {
        long[] jArr = this.f29827a;
        int i10 = this.f29828b;
        return Ints.n(jArr[this.f29829c + i10] - jArr[i10]);
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public ImmutableSortedMultiset<E> headMultiset(E e10, BoundType boundType) {
        return getSubMultiset(0, this.elementSet.headIndex(e10, com.google.common.base.m.o(boundType) == BoundType.CLOSED));
    }

    @Override
    public ImmutableSortedMultiset<E> tailMultiset(E e10, BoundType boundType) {
        return getSubMultiset(this.elementSet.tailIndex(e10, com.google.common.base.m.o(boundType) == BoundType.CLOSED), this.f29829c);
    }

    @Override
    public ImmutableSortedSet<E> elementSet() {
        return this.elementSet;
    }

    RegularImmutableSortedMultiset(RegularImmutableSortedSet<E> regularImmutableSortedSet, long[] jArr, int i10, int i11) {
        this.elementSet = regularImmutableSortedSet;
        this.f29827a = jArr;
        this.f29828b = i10;
        this.f29829c = i11;
    }
}
