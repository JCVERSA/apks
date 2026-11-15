package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.stream.Collector;

public final class ImmutableRangeSet<C extends Comparable> extends f implements Serializable {
    private transient ImmutableRangeSet<C> complement;
    private final transient ImmutableList<Range<C>> ranges;
    private static final ImmutableRangeSet<Comparable<?>> EMPTY = new ImmutableRangeSet<>(ImmutableList.of());
    private static final ImmutableRangeSet<Comparable<?>> ALL = new ImmutableRangeSet<>(ImmutableList.of(Range.all()));

    private final class AsSet extends ImmutableSortedSet<C> {

        private transient Integer f29626a;
        private final DiscreteDomain domain;

        class a extends AbstractIterator {

            final Iterator f29627c;

            Iterator f29628d = Iterators.h();

            a() {
                this.f29627c = ImmutableRangeSet.this.ranges.iterator();
            }

            @Override
            public Comparable a() {
                while (!this.f29628d.hasNext()) {
                    if (!this.f29627c.hasNext()) {
                        return (Comparable) b();
                    }
                    this.f29628d = ContiguousSet.create((Range) this.f29627c.next(), AsSet.this.domain).iterator();
                }
                return (Comparable) this.f29628d.next();
            }
        }

        class b extends AbstractIterator {

            final Iterator f29630c;

            Iterator f29631d = Iterators.h();

            b() {
                this.f29630c = ImmutableRangeSet.this.ranges.reverse().iterator();
            }

            @Override
            public Comparable a() {
                while (!this.f29631d.hasNext()) {
                    if (!this.f29630c.hasNext()) {
                        return (Comparable) b();
                    }
                    this.f29631d = ContiguousSet.create((Range) this.f29630c.next(), AsSet.this.domain).descendingIterator();
                }
                return (Comparable) this.f29631d.next();
            }
        }

        AsSet(DiscreteDomain discreteDomain) {
            super(Ordering.natural());
            this.domain = discreteDomain;
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
                return ImmutableRangeSet.this.contains((Comparable) obj);
            } catch (ClassCastException unused) {
                return false;
            }
        }

        @Override
        ImmutableSortedSet<C> createDescendingSet() {
            return new DescendingImmutableSortedSet(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        int indexOf(Object obj) {
            if (!contains(obj)) {
                return -1;
            }
            Objects.requireNonNull(obj);
            Comparable comparable = (Comparable) obj;
            r4 it = ImmutableRangeSet.this.ranges.iterator();
            long size = 0;
            while (it.hasNext()) {
                Range range = (Range) it.next();
                if (range.contains(comparable)) {
                    return Ints.n(size + ((long) ContiguousSet.create(range, this.domain).indexOf(comparable)));
                }
                size += (long) ContiguousSet.create(range, this.domain).size();
            }
            throw new AssertionError("impossible");
        }

        @Override
        boolean isPartialView() {
            return ImmutableRangeSet.this.ranges.isPartialView();
        }

        @Override
        public int size() {
            Integer numValueOf = this.f29626a;
            if (numValueOf == null) {
                r4 it = ImmutableRangeSet.this.ranges.iterator();
                long size = 0;
                while (it.hasNext()) {
                    size += (long) ContiguousSet.create((Range) it.next(), this.domain).size();
                    if (size >= 2147483647L) {
                        break;
                    }
                }
                numValueOf = Integer.valueOf(Ints.n(size));
                this.f29626a = numValueOf;
            }
            return numValueOf.intValue();
        }

        ImmutableSortedSet<C> subSet(Range<C> range) {
            return ImmutableRangeSet.this.m287subRangeSet((Range) range).asSet(this.domain);
        }

        @Override
        public String toString() {
            return ImmutableRangeSet.this.ranges.toString();
        }

        @Override
        Object writeReplace() {
            return new AsSetSerializedForm(ImmutableRangeSet.this.ranges, this.domain);
        }

        @Override
        public r4 descendingIterator() {
            return new b();
        }

        @Override
        public ImmutableSortedSet<C> headSetImpl(C c10, boolean z10) {
            return subSet(Range.upTo(c10, BoundType.forBoolean(z10)));
        }

        @Override
        public r4 iterator() {
            return new a();
        }

        @Override
        public ImmutableSortedSet<C> subSetImpl(C c10, boolean z10, C c11, boolean z11) {
            return (z10 || z11 || Range.compareOrThrow(c10, c11) != 0) ? subSet(Range.range(c10, BoundType.forBoolean(z10), c11, BoundType.forBoolean(z11))) : ImmutableSortedSet.of();
        }

        @Override
        public ImmutableSortedSet<C> tailSetImpl(C c10, boolean z10) {
            return subSet(Range.downTo(c10, BoundType.forBoolean(z10)));
        }
    }

    private static class AsSetSerializedForm<C extends Comparable> implements Serializable {
        private final DiscreteDomain domain;
        private final ImmutableList<Range<C>> ranges;

        AsSetSerializedForm(ImmutableList<Range<C>> immutableList, DiscreteDomain discreteDomain) {
            this.ranges = immutableList;
            this.domain = discreteDomain;
        }

        Object readResolve() {
            return new ImmutableRangeSet(this.ranges).asSet(this.domain);
        }
    }

    private final class ComplementRanges extends ImmutableList<Range<C>> {
        private final boolean positiveBoundedAbove;
        private final boolean positiveBoundedBelow;
        private final int size;

        /* JADX WARN: Multi-variable type inference failed */
        ComplementRanges() {
            boolean zHasLowerBound = ((Range) ImmutableRangeSet.this.ranges.get(0)).hasLowerBound();
            this.positiveBoundedBelow = zHasLowerBound;
            boolean zHasUpperBound = ((Range) g3.g(ImmutableRangeSet.this.ranges)).hasUpperBound();
            this.positiveBoundedAbove = zHasUpperBound;
            int size = ImmutableRangeSet.this.ranges.size();
            size = zHasLowerBound ? size : size - 1;
            this.size = zHasUpperBound ? size + 1 : size;
        }

        @Override
        boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return this.size;
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Range<C> get(int i10) {
            Cut<C> cutBelowAll;
            com.google.common.base.m.m(i10, this.size);
            if (this.positiveBoundedBelow) {
                cutBelowAll = i10 == 0 ? Cut.belowAll() : ((Range) ImmutableRangeSet.this.ranges.get(i10 - 1)).upperBound;
            } else {
                cutBelowAll = ((Range) ImmutableRangeSet.this.ranges.get(i10)).upperBound;
            }
            return Range.create(cutBelowAll, (this.positiveBoundedAbove && i10 == this.size + (-1)) ? Cut.aboveAll() : ((Range) ImmutableRangeSet.this.ranges.get(i10 + (!this.positiveBoundedBelow ? 1 : 0))).lowerBound);
        }
    }

    private static final class SerializedForm<C extends Comparable> implements Serializable {
        private final ImmutableList<Range<C>> ranges;

        SerializedForm(ImmutableList<Range<C>> immutableList) {
            this.ranges = immutableList;
        }

        Object readResolve() {
            if (this.ranges.isEmpty()) {
                return ImmutableRangeSet.of();
            }
            return this.ranges.equals(ImmutableList.of(Range.all())) ? ImmutableRangeSet.all() : new ImmutableRangeSet(this.ranges);
        }
    }

    public static class a {

        private final List f29633a = Lists.i();

        public a a(Range range) {
            com.google.common.base.m.j(!range.isEmpty(), "range must not be empty, but was %s", range);
            this.f29633a.add(range);
            return this;
        }

        public a b(Iterable iterable) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a((Range) it.next());
            }
            return this;
        }

        public ImmutableRangeSet c() {
            ImmutableList.a aVar = new ImmutableList.a(this.f29633a.size());
            Collections.sort(this.f29633a, Range.rangeLexOrdering());
            q3 q3VarS = Iterators.s(this.f29633a.iterator());
            while (q3VarS.hasNext()) {
                Range rangeSpan = (Range) q3VarS.next();
                while (q3VarS.hasNext()) {
                    Range<C> range = (Range) q3VarS.peek();
                    if (!rangeSpan.isConnected(range)) {
                        break;
                    }
                    com.google.common.base.m.k(rangeSpan.intersection(range).isEmpty(), "Overlapping ranges not permitted but found %s overlapping %s", rangeSpan, range);
                    rangeSpan = rangeSpan.span((Range) q3VarS.next());
                }
                aVar.a(rangeSpan);
            }
            ImmutableList immutableListE = aVar.e();
            if (immutableListE.isEmpty()) {
                return ImmutableRangeSet.of();
            }
            return (immutableListE.size() == 1 && ((Range) g3.j(immutableListE)).equals(Range.all())) ? ImmutableRangeSet.all() : new ImmutableRangeSet(immutableListE);
        }

        a d(a aVar) {
            b(aVar.f29633a);
            return this;
        }
    }

    ImmutableRangeSet(ImmutableList<Range<C>> immutableList) {
        this.ranges = immutableList;
    }

    static <C extends Comparable> ImmutableRangeSet<C> all() {
        return ALL;
    }

    public static <C extends Comparable<?>> a builder() {
        return new a();
    }

    public static <C extends Comparable> ImmutableRangeSet<C> copyOf(u3 u3Var) {
        com.google.common.base.m.o(u3Var);
        if (u3Var.isEmpty()) {
            return of();
        }
        if (u3Var.encloses(Range.all())) {
            return all();
        }
        if (u3Var instanceof ImmutableRangeSet) {
            ImmutableRangeSet<C> immutableRangeSet = (ImmutableRangeSet) u3Var;
            if (!immutableRangeSet.isPartialView()) {
                return immutableRangeSet;
            }
        }
        return new ImmutableRangeSet<>(ImmutableList.copyOf((Collection) u3Var.asRanges()));
    }

    private ImmutableList<Range<C>> intersectRanges(final Range<C> range) {
        if (this.ranges.isEmpty() || range.isEmpty()) {
            return ImmutableList.of();
        }
        if (range.encloses(span())) {
            return this.ranges;
        }
        final int iA = range.hasLowerBound() ? SortedLists.a(this.ranges, new y2(), range.lowerBound, SortedLists.KeyPresentBehavior.FIRST_AFTER, SortedLists.KeyAbsentBehavior.NEXT_HIGHER) : 0;
        final int iA2 = (range.hasUpperBound() ? SortedLists.a(this.ranges, new z2(), range.upperBound, SortedLists.KeyPresentBehavior.FIRST_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER) : this.ranges.size()) - iA;
        return iA2 == 0 ? ImmutableList.of() : (ImmutableList<Range<C>>) new ImmutableList<Range<C>>(this) {
            final ImmutableRangeSet this$0;

            {
                this.this$0 = this;
            }

            @Override
            boolean isPartialView() {
                return true;
            }

            @Override
            public int size() {
                return iA2;
            }

            @Override
            Object writeReplace() {
                return super.writeReplace();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public Range<C> get(int i10) {
                com.google.common.base.m.m(i10, iA2);
                return (i10 == 0 || i10 == iA2 + (-1)) ? ((Range) this.this$0.ranges.get(i10 + iA)).intersection(range) : (Range) this.this$0.ranges.get(i10 + iA);
            }
        };
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of() {
        return EMPTY;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<? super E>> Collector<Range<E>, ?, ImmutableRangeSet<E>> toImmutableRangeSet() {
        return d2.U();
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> unionOf(Iterable<Range<C>> iterable) {
        return copyOf(TreeRangeSet.create(iterable));
    }

    @Override
    @Deprecated
    public void add(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public void addAll(u3 u3Var) {
        throw new UnsupportedOperationException();
    }

    public ImmutableSortedSet<C> asSet(DiscreteDomain discreteDomain) {
        com.google.common.base.m.o(discreteDomain);
        if (isEmpty()) {
            return ImmutableSortedSet.of();
        }
        Range<C> rangeCanonical = span().canonical(discreteDomain);
        if (!rangeCanonical.hasLowerBound()) {
            throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded below");
        }
        if (!rangeCanonical.hasUpperBound()) {
            try {
                discreteDomain.maxValue();
            } catch (NoSuchElementException unused) {
                throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded above");
            }
        }
        return new AsSet(discreteDomain);
    }

    @Override
    public void clear() {
        super.clear();
    }

    @Override
    public boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    public ImmutableRangeSet<C> difference(u3 u3Var) {
        TreeRangeSet treeRangeSetCreate = TreeRangeSet.create(this);
        treeRangeSetCreate.removeAll(u3Var);
        return copyOf(treeRangeSetCreate);
    }

    @Override
    public boolean encloses(Range<C> range) {
        int iB = SortedLists.b(this.ranges, new z2(), range.lowerBound, Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        return iB != -1 && this.ranges.get(iB).encloses(range);
    }

    @Override
    public boolean enclosesAll(u3 u3Var) {
        return super.enclosesAll(u3Var);
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public ImmutableRangeSet<C> intersection(u3 u3Var) {
        TreeRangeSet treeRangeSetCreate = TreeRangeSet.create(this);
        treeRangeSetCreate.removeAll(u3Var.complement());
        return copyOf(treeRangeSetCreate);
    }

    public boolean intersects(Range<C> range) {
        int iB = SortedLists.b(this.ranges, new z2(), range.lowerBound, Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
        if (iB < this.ranges.size() && this.ranges.get(iB).isConnected(range) && !this.ranges.get(iB).intersection(range).isEmpty()) {
            return true;
        }
        if (iB > 0) {
            int i10 = iB - 1;
            if (this.ranges.get(i10).isConnected(range) && !this.ranges.get(i10).intersection(range).isEmpty()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isEmpty() {
        return this.ranges.isEmpty();
    }

    boolean isPartialView() {
        return this.ranges.isPartialView();
    }

    @Override
    public Range<C> rangeContaining(C c10) {
        int iB = SortedLists.b(this.ranges, new z2(), Cut.belowValue(c10), Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        if (iB == -1) {
            return null;
        }
        Range<C> range = this.ranges.get(iB);
        if (range.contains(c10)) {
            return range;
        }
        return null;
    }

    @Override
    @Deprecated
    public void remove(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public void removeAll(u3 u3Var) {
        throw new UnsupportedOperationException();
    }

    public Range<C> span() {
        if (this.ranges.isEmpty()) {
            throw new NoSuchElementException();
        }
        Cut<C> cut = this.ranges.get(0).lowerBound;
        ImmutableList<Range<C>> immutableList = this.ranges;
        return Range.create(cut, immutableList.get(immutableList.size() - 1).upperBound);
    }

    public ImmutableRangeSet<C> union(u3 u3Var) {
        return unionOf(g3.d(asRanges(), u3Var.asRanges()));
    }

    Object writeReplace() {
        return new SerializedForm(this.ranges);
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of(Range<C> range) {
        com.google.common.base.m.o(range);
        if (range.isEmpty()) {
            return of();
        }
        return range.equals(Range.all()) ? all() : new ImmutableRangeSet<>(ImmutableList.of(range));
    }

    @Override
    @Deprecated
    public void addAll(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    public ImmutableSet<Range<C>> m286asDescendingSetOfRanges() {
        return this.ranges.isEmpty() ? ImmutableSet.of() : new RegularImmutableSortedSet(this.ranges.reverse(), Range.rangeLexOrdering().reverse());
    }

    @Override
    public ImmutableSet<Range<C>> asRanges() {
        return this.ranges.isEmpty() ? ImmutableSet.of() : new RegularImmutableSortedSet(this.ranges, Range.rangeLexOrdering());
    }

    @Override
    public ImmutableRangeSet<C> complement() {
        ImmutableRangeSet<C> immutableRangeSet = this.complement;
        if (immutableRangeSet != null) {
            return immutableRangeSet;
        }
        if (this.ranges.isEmpty()) {
            ImmutableRangeSet<C> immutableRangeSetAll = all();
            this.complement = immutableRangeSetAll;
            return immutableRangeSetAll;
        }
        if (this.ranges.size() == 1 && this.ranges.get(0).equals(Range.all())) {
            ImmutableRangeSet<C> immutableRangeSetOf = of();
            this.complement = immutableRangeSetOf;
            return immutableRangeSetOf;
        }
        ImmutableRangeSet<C> immutableRangeSet2 = new ImmutableRangeSet<>(new ComplementRanges(), this);
        this.complement = immutableRangeSet2;
        return immutableRangeSet2;
    }

    @Override
    public boolean enclosesAll(Iterable iterable) {
        return super.enclosesAll(iterable);
    }

    @Override
    @Deprecated
    public void removeAll(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    public ImmutableRangeSet<C> m287subRangeSet(Range<C> range) {
        if (!isEmpty()) {
            Range<C> rangeSpan = span();
            if (range.encloses(rangeSpan)) {
                return this;
            }
            if (range.isConnected(rangeSpan)) {
                return new ImmutableRangeSet<>(intersectRanges(range));
            }
        }
        return of();
    }

    private ImmutableRangeSet(ImmutableList<Range<C>> immutableList, ImmutableRangeSet<C> immutableRangeSet) {
        this.ranges = immutableList;
        this.complement = immutableRangeSet;
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> copyOf(Iterable<Range<C>> iterable) {
        return new a().b(iterable).c();
    }
}
