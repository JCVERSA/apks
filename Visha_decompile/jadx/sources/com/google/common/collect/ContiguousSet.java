package com.google.common.collect;

import defpackage.xd8;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import java.util.Objects;

public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C> {
    final DiscreteDomain domain;

    public ContiguousSet(DiscreteDomain discreteDomain) {
        super(Ordering.natural());
        this.domain = discreteDomain;
    }

    @Deprecated
    public static <E> ImmutableSortedSet.a builder() {
        throw new UnsupportedOperationException();
    }

    public static ContiguousSet<Integer> closed(int i, int i2) {
        return create(Range.closed(Integer.valueOf(i), Integer.valueOf(i2)), DiscreteDomain.integers());
    }

    public static ContiguousSet<Integer> closedOpen(int i, int i2) {
        return create(Range.closedOpen(Integer.valueOf(i), Integer.valueOf(i2)), DiscreteDomain.integers());
    }

    public static <C extends Comparable> ContiguousSet<C> create(Range<C> range, DiscreteDomain discreteDomain) {
        xd8.o(range);
        xd8.o(discreteDomain);
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
        } catch (NoSuchElementException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override
    public ImmutableSortedSet<C> createDescendingSet() {
        return new DescendingImmutableSortedSet(this);
    }

    @Override
    public abstract ContiguousSet<C> headSetImpl(C c, boolean z);

    public abstract ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet);

    public abstract Range<C> range();

    public abstract Range<C> range(BoundType boundType, BoundType boundType2);

    @Override
    public abstract ContiguousSet<C> subSetImpl(C c, boolean z, C c2, boolean z2);

    @Override
    public abstract ContiguousSet<C> tailSetImpl(C c, boolean z);

    @Override
    public String toString() {
        return range().toString();
    }

    @Override
    public Object writeReplace() {
        return super.writeReplace();
    }

    public static ContiguousSet<Long> closed(long j, long j2) {
        return create(Range.closed(Long.valueOf(j), Long.valueOf(j2)), DiscreteDomain.longs());
    }

    public static ContiguousSet<Long> closedOpen(long j, long j2) {
        return create(Range.closedOpen(Long.valueOf(j), Long.valueOf(j2)), DiscreteDomain.longs());
    }

    @Override
    public ContiguousSet<C> headSet(C c) {
        return headSetImpl((Comparable) xd8.o(c), false);
    }

    @Override
    public ContiguousSet<C> subSet(C c, C c2) {
        xd8.o(c);
        xd8.o(c2);
        xd8.d(comparator().compare(c, c2) <= 0);
        return subSetImpl((Comparable) c, true, (Comparable) c2, false);
    }

    @Override
    public ContiguousSet<C> tailSet(C c) {
        return tailSetImpl((Comparable) xd8.o(c), true);
    }

    @Override
    public ContiguousSet<C> headSet(C c, boolean z) {
        return headSetImpl((Comparable) xd8.o(c), z);
    }

    @Override
    public ContiguousSet<C> tailSet(C c, boolean z) {
        return tailSetImpl((Comparable) xd8.o(c), z);
    }

    @Override
    public ContiguousSet<C> subSet(C c, boolean z, C c2, boolean z2) {
        xd8.o(c);
        xd8.o(c2);
        xd8.d(comparator().compare(c, c2) <= 0);
        return subSetImpl((Comparable) c, z, (Comparable) c2, z2);
    }
}
