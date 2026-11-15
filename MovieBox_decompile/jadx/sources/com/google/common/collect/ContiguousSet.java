package com.google.common.collect;

import java.lang.Comparable;
import java.util.NoSuchElementException;
import java.util.Objects;

public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C> {
    final DiscreteDomain domain;

    ContiguousSet(DiscreteDomain discreteDomain) {
        super(Ordering.natural());
        this.domain = discreteDomain;
    }

    @Deprecated
    public static <E> ImmutableSortedSet.a builder() {
        throw new UnsupportedOperationException();
    }

    public static ContiguousSet<Integer> closed(int i10, int i11) {
        return create(Range.closed(Integer.valueOf(i10), Integer.valueOf(i11)), DiscreteDomain.integers());
    }

    public static ContiguousSet<Integer> closedOpen(int i10, int i11) {
        return create(Range.closedOpen(Integer.valueOf(i10), Integer.valueOf(i11)), DiscreteDomain.integers());
    }

    public static <C extends Comparable> ContiguousSet<C> create(Range<C> range, DiscreteDomain discreteDomain) {
        com.google.common.base.m.o(range);
        com.google.common.base.m.o(discreteDomain);
        try {
            Range<C> rangeIntersection = !range.hasLowerBound() ? range.intersection(Range.atLeast(discreteDomain.minValue())) : range;
            if (!range.hasUpperBound()) {
                rangeIntersection = rangeIntersection.intersection(Range.atMost(discreteDomain.maxValue()));
            }
            if (!rangeIntersection.isEmpty()) {
                Comparable comparableLeastValueAbove = range.lowerBound.leastValueAbove(discreteDomain);
                Objects.requireNonNull(comparableLeastValueAbove);
                Comparable comparableGreatestValueBelow = range.upperBound.greatestValueBelow(discreteDomain);
                Objects.requireNonNull(comparableGreatestValueBelow);
                if (Range.compareOrThrow(comparableLeastValueAbove, comparableGreatestValueBelow) <= 0) {
                    return new RegularContiguousSet(rangeIntersection, discreteDomain);
                }
            }
            return new EmptyContiguousSet(discreteDomain);
        } catch (NoSuchElementException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @Override
    ImmutableSortedSet<C> createDescendingSet() {
        return new DescendingImmutableSortedSet(this);
    }

    @Override
    public abstract ContiguousSet<C> headSetImpl(C c10, boolean z10);

    public abstract ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet);

    public abstract Range<C> range();

    public abstract Range<C> range(BoundType boundType, BoundType boundType2);

    @Override
    public abstract ContiguousSet<C> subSetImpl(C c10, boolean z10, C c11, boolean z11);

    @Override
    public abstract ContiguousSet<C> tailSetImpl(C c10, boolean z10);

    @Override
    public String toString() {
        return range().toString();
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }

    public static ContiguousSet<Long> closed(long j10, long j11) {
        return create(Range.closed(Long.valueOf(j10), Long.valueOf(j11)), DiscreteDomain.longs());
    }

    public static ContiguousSet<Long> closedOpen(long j10, long j11) {
        return create(Range.closedOpen(Long.valueOf(j10), Long.valueOf(j11)), DiscreteDomain.longs());
    }

    @Override
    public ContiguousSet<C> headSet(C c10) {
        return headSetImpl((Comparable) com.google.common.base.m.o(c10), false);
    }

    @Override
    public ContiguousSet<C> subSet(C c10, C c11) {
        com.google.common.base.m.o(c10);
        com.google.common.base.m.o(c11);
        com.google.common.base.m.d(comparator().compare(c10, c11) <= 0);
        return subSetImpl((Comparable) c10, true, (Comparable) c11, false);
    }

    @Override
    public ContiguousSet<C> tailSet(C c10) {
        return tailSetImpl((Comparable) com.google.common.base.m.o(c10), true);
    }

    @Override
    public ContiguousSet<C> headSet(C c10, boolean z10) {
        return headSetImpl((Comparable) com.google.common.base.m.o(c10), z10);
    }

    @Override
    public ContiguousSet<C> tailSet(C c10, boolean z10) {
        return tailSetImpl((Comparable) com.google.common.base.m.o(c10), z10);
    }

    @Override
    public ContiguousSet<C> subSet(C c10, boolean z10, C c11, boolean z11) {
        com.google.common.base.m.o(c10);
        com.google.common.base.m.o(c11);
        com.google.common.base.m.d(comparator().compare(c10, c11) <= 0);
        return subSetImpl((Comparable) c10, z10, (Comparable) c11, z11);
    }
}
