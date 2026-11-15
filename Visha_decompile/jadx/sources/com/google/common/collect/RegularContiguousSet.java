package com.google.common.collect;

import defpackage.dgb;
import defpackage.w3;
import defpackage.xd8;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Objects;

final class RegularContiguousSet<C extends Comparable> extends ContiguousSet<C> {
    private static final long serialVersionUID = 0;
    private final Range<C> range;

    public static final class SerializedForm<C extends Comparable> implements Serializable {
        final DiscreteDomain domain;
        final Range<C> range;

        public SerializedForm(Range range, DiscreteDomain discreteDomain, a aVar) {
            this(range, discreteDomain);
        }

        private Object readResolve() {
            return new RegularContiguousSet(this.range, this.domain);
        }

        public SerializedForm(Range range, DiscreteDomain discreteDomain) {
            this.range = range;
            this.domain = discreteDomain;
        }
    }

    public class a extends w3 {
        public final Comparable c;

        public a(Comparable comparable) {
            super(comparable);
            this.c = RegularContiguousSet.this.last();
        }

        @Override
        public Comparable a(Comparable comparable) {
            if (RegularContiguousSet.b(comparable, this.c)) {
                return null;
            }
            return RegularContiguousSet.this.domain.next(comparable);
        }
    }

    public class b extends w3 {
        public final Comparable c;

        public b(Comparable comparable) {
            super(comparable);
            this.c = RegularContiguousSet.this.first();
        }

        @Override
        public Comparable a(Comparable comparable) {
            if (RegularContiguousSet.b(comparable, this.c)) {
                return null;
            }
            return RegularContiguousSet.this.domain.previous(comparable);
        }
    }

    public RegularContiguousSet(Range<C> range, DiscreteDomain discreteDomain) {
        super(discreteDomain);
        this.range = range;
    }

    public static boolean b(Comparable comparable, Comparable comparable2) {
        return comparable2 != null && Range.compareOrThrow(comparable, comparable2) == 0;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public final ContiguousSet c(Range range) {
        return this.range.isConnected(range) ? ContiguousSet.create(this.range.intersection(range), this.domain) : new EmptyContiguousSet(this.domain);
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
        return g.a(this, collection);
    }

    @Override
    public ImmutableList<C> createAsList() {
        return this.domain.supportsFastOffset ? new ImmutableAsList<C>() {
            @Override
            public Object writeReplace() {
                return super.writeReplace();
            }

            @Override
            public ImmutableSortedSet<C> delegateCollection() {
                return RegularContiguousSet.this;
            }

            @Override
            public C get(int i) {
                xd8.m(i, size());
                RegularContiguousSet regularContiguousSet = RegularContiguousSet.this;
                return (C) regularContiguousSet.domain.offset(regularContiguousSet.first(), i);
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
    public int indexOf(Object obj) {
        if (!contains(obj)) {
            return -1;
        }
        Objects.requireNonNull(obj);
        return (int) this.domain.distance(first(), (Comparable) obj);
    }

    @Override
    public ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet) {
        xd8.o(contiguousSet);
        xd8.d(this.domain.equals(contiguousSet.domain));
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
    public boolean isPartialView() {
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
    public Object writeReplace() {
        return new SerializedForm(this.range, this.domain, null);
    }

    @Override
    public dgb descendingIterator() {
        return new b(last());
    }

    @Override
    public C first() {
        Comparable comparableLeastValueAbove = this.range.lowerBound.leastValueAbove(this.domain);
        Objects.requireNonNull(comparableLeastValueAbove);
        return (C) comparableLeastValueAbove;
    }

    @Override
    public ContiguousSet<C> headSetImpl(C c, boolean z) {
        return c(Range.upTo(c, BoundType.forBoolean(z)));
    }

    @Override
    public dgb iterator() {
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
    public ContiguousSet<C> subSetImpl(C c, boolean z, C c2, boolean z2) {
        return (c.compareTo(c2) != 0 || z || z2) ? c(Range.range(c, BoundType.forBoolean(z), c2, BoundType.forBoolean(z2))) : new EmptyContiguousSet(this.domain);
    }

    @Override
    public ContiguousSet<C> tailSetImpl(C c, boolean z) {
        return c(Range.downTo(c, BoundType.forBoolean(z)));
    }
}
