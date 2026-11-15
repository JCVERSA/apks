package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Objects;

final class RegularContiguousSet<C extends Comparable> extends ContiguousSet<C> {
    private static final long serialVersionUID = 0;
    private final Range<C> range;

    private static final class SerializedForm<C extends Comparable> implements Serializable {
        final DiscreteDomain domain;
        final Range<C> range;

        SerializedForm(Range range, DiscreteDomain discreteDomain, a aVar) {
            this(range, discreteDomain);
        }

        private Object readResolve() {
            return new RegularContiguousSet(this.range, this.domain);
        }

        private SerializedForm(Range range, DiscreteDomain discreteDomain) {
            this.range = range;
            this.domain = discreteDomain;
        }
    }

    class a extends g {

        final Comparable f29800b;

        a(Comparable comparable) {
            super(comparable);
            this.f29800b = RegularContiguousSet.this.last();
        }

        @Override
        public Comparable a(Comparable comparable) {
            if (RegularContiguousSet.a(comparable, this.f29800b)) {
                return null;
            }
            return RegularContiguousSet.this.domain.next(comparable);
        }
    }

    class b extends g {

        final Comparable f29802b;

        b(Comparable comparable) {
            super(comparable);
            this.f29802b = RegularContiguousSet.this.first();
        }

        @Override
        public Comparable a(Comparable comparable) {
            if (RegularContiguousSet.a(comparable, this.f29802b)) {
                return null;
            }
            return RegularContiguousSet.this.domain.previous(comparable);
        }
    }

    RegularContiguousSet(Range<C> range, DiscreteDomain discreteDomain) {
        super(discreteDomain);
        this.range = range;
    }

    public static boolean a(Comparable comparable, Comparable comparable2) {
        return comparable2 != null && Range.compareOrThrow(comparable, comparable2) == 0;
    }

    private ContiguousSet b(Range range) {
        return this.range.isConnected(range) ? ContiguousSet.create(this.range.intersection(range), this.domain) : new EmptyContiguousSet(this.domain);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.range.contains((Comparable) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return f2.a(this, collection);
    }

    @Override
    ImmutableList<C> createAsList() {
        return this.domain.supportsFastOffset ? new ImmutableAsList<C>() {
            @Override
            Object writeReplace() {
                return super.writeReplace();
            }

            @Override
            public ImmutableSortedSet<C> delegateCollection() {
                return RegularContiguousSet.this;
            }

            @Override
            public C get(int i10) {
                com.google.common.base.m.m(i10, size());
                RegularContiguousSet regularContiguousSet = RegularContiguousSet.this;
                return (C) regularContiguousSet.domain.offset(regularContiguousSet.first(), i10);
            }
        } : super.createAsList();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RegularContiguousSet) {
            RegularContiguousSet regularContiguousSet = (RegularContiguousSet) obj;
            if (this.domain.equals(regularContiguousSet.domain)) {
                return first().equals(regularContiguousSet.first()) && last().equals(regularContiguousSet.last());
            }
        }
        return super.equals(obj);
    }

    @Override
    public int hashCode() {
        return Sets.d(this);
    }

    @Override
    int indexOf(Object obj) {
        if (!contains(obj)) {
            return -1;
        }
        Objects.requireNonNull(obj);
        return (int) this.domain.distance(first(), (Comparable) obj);
    }

    @Override
    public ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet) {
        com.google.common.base.m.o(contiguousSet);
        com.google.common.base.m.d(this.domain.equals(contiguousSet.domain));
        if (contiguousSet.isEmpty()) {
            return contiguousSet;
        }
        Comparable comparable = (Comparable) Ordering.natural().max(first(), contiguousSet.first());
        Comparable comparable2 = (Comparable) Ordering.natural().min(last(), contiguousSet.last());
        return comparable.compareTo(comparable2) <= 0 ? ContiguousSet.create(Range.closed(comparable, comparable2), this.domain) : new EmptyContiguousSet(this.domain);
    }

    @Override
    public boolean isEmpty() {
        return false;
    }

    @Override
    boolean isPartialView() {
        return false;
    }

    @Override
    public Range<C> range() {
        BoundType boundType = BoundType.CLOSED;
        return range(boundType, boundType);
    }

    @Override
    public int size() {
        long jDistance = this.domain.distance(first(), last());
        if (jDistance >= 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return ((int) jDistance) + 1;
    }

    @Override
    Object writeReplace() {
        return new SerializedForm(this.range, this.domain, null);
    }

    @Override
    public r4 descendingIterator() {
        return new b(last());
    }

    @Override
    public C first() {
        Comparable comparableLeastValueAbove = this.range.lowerBound.leastValueAbove(this.domain);
        Objects.requireNonNull(comparableLeastValueAbove);
        return (C) comparableLeastValueAbove;
    }

    @Override
    public ContiguousSet<C> headSetImpl(C c10, boolean z10) {
        return b(Range.upTo(c10, BoundType.forBoolean(z10)));
    }

    @Override
    public r4 iterator() {
        return new a(first());
    }

    @Override
    public C last() {
        Comparable comparableGreatestValueBelow = this.range.upperBound.greatestValueBelow(this.domain);
        Objects.requireNonNull(comparableGreatestValueBelow);
        return (C) comparableGreatestValueBelow;
    }

    @Override
    public Range<C> range(BoundType boundType, BoundType boundType2) {
        return Range.create(this.range.lowerBound.withLowerBoundType(boundType, this.domain), this.range.upperBound.withUpperBoundType(boundType2, this.domain));
    }

    @Override
    public ContiguousSet<C> subSetImpl(C c10, boolean z10, C c11, boolean z11) {
        return (c10.compareTo(c11) != 0 || z10 || z11) ? b(Range.range(c10, BoundType.forBoolean(z10), c11, BoundType.forBoolean(z11))) : new EmptyContiguousSet(this.domain);
    }

    @Override
    public ContiguousSet<C> tailSetImpl(C c10, boolean z10) {
        return b(Range.downTo(c10, BoundType.forBoolean(z10)));
    }
}
