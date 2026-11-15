package com.google.common.collect;

import com.google.common.primitives.Ints;
import defpackage.dgb;
import defpackage.oy4;
import defpackage.py4;
import defpackage.r3;
import defpackage.sy7;
import defpackage.un8;
import defpackage.v55;
import defpackage.xd8;
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

public final class ImmutableRangeSet<C extends Comparable> extends r3 implements Serializable {
    private transient ImmutableRangeSet<C> complement;
    private final transient ImmutableList<Range<C>> ranges;
    private static final ImmutableRangeSet<Comparable<?>> EMPTY = new ImmutableRangeSet<>(ImmutableList.of());
    private static final ImmutableRangeSet<Comparable<?>> ALL = new ImmutableRangeSet<>(ImmutableList.of(Range.all()));

    public final class AsSet extends ImmutableSortedSet<C> {
        public transient Integer b;
        private final DiscreteDomain domain;

        public class a extends AbstractIterator {
            public final Iterator d;
            public Iterator e = Iterators.h();

            public a() {
                this.d = ImmutableRangeSet.this.ranges.iterator();
            }

            @Override
            public Comparable a() {
                while (!this.e.hasNext()) {
                    if (!this.d.hasNext()) {
                        return (Comparable) b();
                    }
                    this.e = ContiguousSet.create((Range) this.d.next(), AsSet.this.domain).iterator();
                }
                return (Comparable) this.e.next();
            }
        }

        public class b extends AbstractIterator {
            public final Iterator d;
            public Iterator e = Iterators.h();

            public b() {
                this.d = ImmutableRangeSet.this.ranges.reverse().iterator();
            }

            @Override
            public Comparable a() {
                while (!this.e.hasNext()) {
                    if (!this.d.hasNext()) {
                        return (Comparable) b();
                    }
                    this.e = ContiguousSet.create((Range) this.d.next(), AsSet.this.domain).descendingIterator();
                }
                return (Comparable) this.e.next();
            }
        }

        public AsSet(DiscreteDomain discreteDomain) {
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
        public ImmutableSortedSet<C> createDescendingSet() {
            return new DescendingImmutableSortedSet(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public int indexOf(Object obj) {
            if (!contains(obj)) {
                return -1;
            }
            Objects.requireNonNull(obj);
            Comparable comparable = (Comparable) obj;
            dgb it = ImmutableRangeSet.this.ranges.iterator();
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
        public boolean isPartialView() {
            return ImmutableRangeSet.this.ranges.isPartialView();
        }

        @Override
        public int size() {
            Integer numValueOf = this.b;
            if (numValueOf == null) {
                dgb it = ImmutableRangeSet.this.ranges.iterator();
                long size = 0;
                while (it.hasNext()) {
                    size += (long) ContiguousSet.create((Range) it.next(), this.domain).size();
                    if (size >= 2147483647L) {
                        break;
                    }
                }
                numValueOf = Integer.valueOf(Ints.n(size));
                this.b = numValueOf;
            }
            return numValueOf.intValue();
        }

        public ImmutableSortedSet<C> subSet(Range<C> range) {
            return ImmutableRangeSet.this.m81subRangeSet((Range) range).asSet(this.domain);
        }

        @Override
        public String toString() {
            return ImmutableRangeSet.this.ranges.toString();
        }

        @Override
        public Object writeReplace() {
            return new AsSetSerializedForm(ImmutableRangeSet.this.ranges, this.domain);
        }

        @Override
        public dgb descendingIterator() {
            return new b();
        }

        @Override
        public ImmutableSortedSet<C> headSetImpl(C c, boolean z) {
            return subSet(Range.upTo(c, BoundType.forBoolean(z)));
        }

        @Override
        public dgb iterator() {
            return new a();
        }

        @Override
        public ImmutableSortedSet<C> subSetImpl(C c, boolean z, C c2, boolean z2) {
            return (z || z2 || Range.compareOrThrow(c, c2) != 0) ? subSet(Range.range(c, BoundType.forBoolean(z), c2, BoundType.forBoolean(z2))) : ImmutableSortedSet.of();
        }

        @Override
        public ImmutableSortedSet<C> tailSetImpl(C c, boolean z) {
            return subSet(Range.downTo(c, BoundType.forBoolean(z)));
        }
    }

    public static class AsSetSerializedForm<C extends Comparable> implements Serializable {
        private final DiscreteDomain domain;
        private final ImmutableList<Range<C>> ranges;

        public AsSetSerializedForm(ImmutableList<Range<C>> immutableList, DiscreteDomain discreteDomain) {
            this.ranges = immutableList;
            this.domain = discreteDomain;
        }

        public Object readResolve() {
            return new ImmutableRangeSet(this.ranges).asSet(this.domain);
        }
    }

    public final class ComplementRanges extends ImmutableList<Range<C>> {
        private final boolean positiveBoundedAbove;
        private final boolean positiveBoundedBelow;
        private final int size;

        /* JADX WARN: Multi-variable type inference failed */
        public ComplementRanges() {
            boolean zHasLowerBound = ((Range) ImmutableRangeSet.this.ranges.get(0)).hasLowerBound();
            this.positiveBoundedBelow = zHasLowerBound;
            boolean zHasUpperBound = ((Range) v55.g(ImmutableRangeSet.this.ranges)).hasUpperBound();
            this.positiveBoundedAbove = zHasUpperBound;
            int size = ImmutableRangeSet.this.ranges.size();
            size = zHasLowerBound ? size : size - 1;
            this.size = zHasUpperBound ? size + 1 : size;
        }

        @Override
        public boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return this.size;
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Range<C> get(int i) {
            Cut<C> cutBelowAll;
            xd8.m(i, this.size);
            if (this.positiveBoundedBelow) {
                cutBelowAll = i == 0 ? Cut.belowAll() : ((Range) ImmutableRangeSet.this.ranges.get(i - 1)).upperBound;
            } else {
                cutBelowAll = ((Range) ImmutableRangeSet.this.ranges.get(i)).upperBound;
            }
            return Range.create(cutBelowAll, (this.positiveBoundedAbove && i == this.size + (-1)) ? Cut.aboveAll() : ((Range) ImmutableRangeSet.this.ranges.get(i + (!this.positiveBoundedBelow ? 1 : 0))).lowerBound);
        }
    }

    public static final class SerializedForm<C extends Comparable> implements Serializable {
        private final ImmutableList<Range<C>> ranges;

        public SerializedForm(ImmutableList<Range<C>> immutableList) {
            this.ranges = immutableList;
        }

        public Object readResolve() {
            if (this.ranges.isEmpty()) {
                return ImmutableRangeSet.of();
            }
            return this.ranges.equals(ImmutableList.of(Range.all())) ? ImmutableRangeSet.all() : new ImmutableRangeSet(this.ranges);
        }
    }

    public static class a {
        public final List a = Lists.i();

        public a a(Range range) {
            xd8.j(!range.isEmpty(), "range must not be empty, but was %s", range);
            this.a.add(range);
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
            ImmutableList.a aVar = new ImmutableList.a(this.a.size());
            Collections.sort(this.a, Range.rangeLexOrdering());
            sy7 sy7VarS = Iterators.s(this.a.iterator());
            while (sy7VarS.hasNext()) {
                Range rangeSpan = (Range) sy7VarS.next();
                while (sy7VarS.hasNext()) {
                    Range<C> range = (Range) sy7VarS.peek();
                    if (!rangeSpan.isConnected(range)) {
                        break;
                    }
                    xd8.k(rangeSpan.intersection(range).isEmpty(), "Overlapping ranges not permitted but found %s overlapping %s", rangeSpan, range);
                    rangeSpan = rangeSpan.span((Range) sy7VarS.next());
                }
                aVar.a(rangeSpan);
            }
            ImmutableList immutableListE = aVar.e();
            if (immutableListE.isEmpty()) {
                return ImmutableRangeSet.of();
            }
            return (immutableListE.size() == 1 && ((Range) v55.j(immutableListE)).equals(Range.all())) ? ImmutableRangeSet.all() : new ImmutableRangeSet(immutableListE);
        }

        public a d(a aVar) {
            b(aVar.a);
            return this;
        }
    }

    public ImmutableRangeSet(ImmutableList<Range<C>> immutableList) {
        this.ranges = immutableList;
    }

    public static <C extends Comparable> ImmutableRangeSet<C> all() {
        return ALL;
    }

    public static <C extends Comparable<?>> a builder() {
        return new a();
    }

    public static <C extends Comparable> ImmutableRangeSet<C> copyOf(un8 un8Var) {
        xd8.o(un8Var);
        if (un8Var.isEmpty()) {
            return of();
        }
        if (un8Var.encloses(Range.all())) {
            return all();
        }
        if (un8Var instanceof ImmutableRangeSet) {
            ImmutableRangeSet<C> immutableRangeSet = (ImmutableRangeSet) un8Var;
            if (!immutableRangeSet.isPartialView()) {
                return immutableRangeSet;
            }
        }
        return new ImmutableRangeSet<>(ImmutableList.copyOf((Collection) un8Var.asRanges()));
    }

    private ImmutableList<Range<C>> intersectRanges(final Range<C> range) {
        if (this.ranges.isEmpty() || range.isEmpty()) {
            return ImmutableList.of();
        }
        if (range.encloses(span())) {
            return this.ranges;
        }
        final int iA = range.hasLowerBound() ? SortedLists.a(this.ranges, new oy4(), range.lowerBound, SortedLists.KeyPresentBehavior.FIRST_AFTER, SortedLists.KeyAbsentBehavior.NEXT_HIGHER) : 0;
        final int iA2 = (range.hasUpperBound() ? SortedLists.a(this.ranges, new py4(), range.upperBound, SortedLists.KeyPresentBehavior.FIRST_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER) : this.ranges.size()) - iA;
        return iA2 == 0 ? ImmutableList.of() : (ImmutableList<Range<C>>) new ImmutableList<Range<C>>(this) {
            final ImmutableRangeSet this$0;

            {
                this.this$0 = this;
            }

            @Override
            public boolean isPartialView() {
                return true;
            }

            @Override
            public int size() {
                return iA2;
            }

            @Override
            public Object writeReplace() {
                return super.writeReplace();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public Range<C> get(int i) {
                xd8.m(i, iA2);
                return (i == 0 || i == iA2 + (-1)) ? ((Range) this.this$0.ranges.get(i + iA)).intersection(range) : (Range) this.this$0.ranges.get(i + iA);
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
        return f.U();
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
    public void addAll(un8 un8Var) {
        throw new UnsupportedOperationException();
    }

    public ImmutableSortedSet<C> asSet(DiscreteDomain discreteDomain) {
        xd8.o(discreteDomain);
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

    public ImmutableRangeSet<C> difference(un8 un8Var) {
        TreeRangeSet treeRangeSetCreate = TreeRangeSet.create(this);
        treeRangeSetCreate.removeAll(un8Var);
        return copyOf(treeRangeSetCreate);
    }

    @Override
    public boolean encloses(Range<C> range) {
        int iB = SortedLists.b(this.ranges, new py4(), range.lowerBound, Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        return iB != -1 && this.ranges.get(iB).encloses(range);
    }

    @Override
    public boolean enclosesAll(un8 un8Var) {
        return super.enclosesAll(un8Var);
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public ImmutableRangeSet<C> intersection(un8 un8Var) {
        TreeRangeSet treeRangeSetCreate = TreeRangeSet.create(this);
        treeRangeSetCreate.removeAll(un8Var.complement());
        return copyOf(treeRangeSetCreate);
    }

    public boolean intersects(Range<C> range) {
        int iB = SortedLists.b(this.ranges, new py4(), range.lowerBound, Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
        if (iB < this.ranges.size() && this.ranges.get(iB).isConnected(range) && !this.ranges.get(iB).intersection(range).isEmpty()) {
            return true;
        }
        if (iB > 0) {
            int i = iB - 1;
            if (this.ranges.get(i).isConnected(range) && !this.ranges.get(i).intersection(range).isEmpty()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isEmpty() {
        return this.ranges.isEmpty();
    }

    public boolean isPartialView() {
        return this.ranges.isPartialView();
    }

    @Override
    public Range<C> rangeContaining(C c) {
        int iB = SortedLists.b(this.ranges, new py4(), Cut.belowValue(c), Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        if (iB == -1) {
            return null;
        }
        Range<C> range = this.ranges.get(iB);
        if (range.contains(c)) {
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
    public void removeAll(un8 un8Var) {
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

    public ImmutableRangeSet<C> union(un8 un8Var) {
        return unionOf(v55.d(asRanges(), un8Var.asRanges()));
    }

    public Object writeReplace() {
        return new SerializedForm(this.ranges);
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of(Range<C> range) {
        xd8.o(range);
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

    public ImmutableSet<Range<C>> m80asDescendingSetOfRanges() {
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

    public ImmutableRangeSet<C> m81subRangeSet(Range<C> range) {
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
