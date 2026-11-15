package com.google.common.collect;

import com.google.common.primitives.Ints;
import defpackage.xd8;
import java.util.Comparator;

final class RegularImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {
    public final transient long[] b;
    public final transient int c;
    public final transient int d;
    final transient RegularImmutableSortedSet<E> elementSet;
    public static final long[] e = {0};
    static final ImmutableSortedMultiset<?> NATURAL_EMPTY_MULTISET = new RegularImmutableSortedMultiset(Ordering.natural());

    public RegularImmutableSortedMultiset(Comparator<? super E> comparator) {
        this.elementSet = ImmutableSortedSet.emptySet(comparator);
        this.b = e;
        this.c = 0;
        this.d = 0;
    }

    @Override
    public int count(Object obj) {
        int iIndexOf = this.elementSet.indexOf(obj);
        if (iIndexOf >= 0) {
            return l(iIndexOf);
        }
        return 0;
    }

    @Override
    public j.a firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return getEntry(0);
    }

    @Override
    public j.a getEntry(int i) {
        return Multisets.g(this.elementSet.asList().get(i), l(i));
    }

    public ImmutableSortedMultiset<E> getSubMultiset(int i, int i2) {
        xd8.t(i, i2, this.d);
        if (i == i2) {
            return ImmutableSortedMultiset.emptyMultiset(comparator());
        }
        return (i == 0 && i2 == this.d) ? this : new RegularImmutableSortedMultiset(this.elementSet.getSubSet(i, i2), this.b, this.c + i, i2 - i);
    }

    @Override
    public boolean isPartialView() {
        return this.c > 0 || this.d < this.b.length - 1;
    }

    public final int l(int i) {
        long[] jArr = this.b;
        int i2 = this.c;
        return (int) (jArr[(i2 + i) + 1] - jArr[i2 + i]);
    }

    @Override
    public j.a lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return getEntry(this.d - 1);
    }

    @Override
    public int size() {
        long[] jArr = this.b;
        int i = this.c;
        return Ints.n(jArr[this.d + i] - jArr[i]);
    }

    @Override
    public Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public ImmutableSortedMultiset<E> headMultiset(E e2, BoundType boundType) {
        return getSubMultiset(0, this.elementSet.headIndex(e2, xd8.o(boundType) == BoundType.CLOSED));
    }

    @Override
    public ImmutableSortedMultiset<E> tailMultiset(E e2, BoundType boundType) {
        return getSubMultiset(this.elementSet.tailIndex(e2, xd8.o(boundType) == BoundType.CLOSED), this.d);
    }

    @Override
    public ImmutableSortedSet<E> elementSet() {
        return this.elementSet;
    }

    public RegularImmutableSortedMultiset(RegularImmutableSortedSet<E> regularImmutableSortedSet, long[] jArr, int i, int i2) {
        this.elementSet = regularImmutableSortedSet;
        this.b = jArr;
        this.c = i;
        this.d = i2;
    }
}
