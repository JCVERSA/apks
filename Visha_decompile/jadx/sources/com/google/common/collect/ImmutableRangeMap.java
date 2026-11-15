package com.google.common.collect;

import defpackage.dgb;
import defpackage.oy4;
import defpackage.py4;
import defpackage.tn8;
import defpackage.xd8;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.function.Function;
import java.util.stream.Collector;

public class ImmutableRangeMap<K extends Comparable<?>, V> implements tn8, Serializable {
    private static final ImmutableRangeMap<Comparable<?>, Object> EMPTY = new ImmutableRangeMap<>(ImmutableList.of(), ImmutableList.of());
    private static final long serialVersionUID = 0;
    private final transient ImmutableList<Range<K>> ranges;
    private final transient ImmutableList<V> values;

    public static class SerializedForm<K extends Comparable<?>, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final ImmutableMap<Range<K>, V> mapOfRanges;

        public SerializedForm(ImmutableMap<Range<K>, V> immutableMap) {
            this.mapOfRanges = immutableMap;
        }

        public Object createRangeMap() {
            a aVar = new a();
            dgb it = this.mapOfRanges.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                aVar.c((Range) entry.getKey(), entry.getValue());
            }
            return aVar.a();
        }

        public Object readResolve() {
            return this.mapOfRanges.isEmpty() ? ImmutableRangeMap.of() : createRangeMap();
        }
    }

    public static final class a {
        public final List a = Lists.i();

        public ImmutableRangeMap a() {
            Collections.sort(this.a, Range.rangeLexOrdering().onKeys());
            ImmutableList.a aVar = new ImmutableList.a(this.a.size());
            ImmutableList.a aVar2 = new ImmutableList.a(this.a.size());
            for (int i = 0; i < this.a.size(); i++) {
                Range range = (Range) ((Map.Entry) this.a.get(i)).getKey();
                if (i > 0) {
                    Range range2 = (Range) ((Map.Entry) this.a.get(i - 1)).getKey();
                    if (range.isConnected(range2) && !range.intersection(range2).isEmpty()) {
                        throw new IllegalArgumentException("Overlapping ranges: range " + range2 + " overlaps with entry " + range);
                    }
                }
                aVar.a(range);
                aVar2.a(((Map.Entry) this.a.get(i)).getValue());
            }
            return new ImmutableRangeMap(aVar.e(), aVar2.e());
        }

        public a b(a aVar) {
            this.a.addAll(aVar.a);
            return this;
        }

        public a c(Range range, Object obj) {
            xd8.o(range);
            xd8.o(obj);
            xd8.j(!range.isEmpty(), "Range must not be empty, but was %s", range);
            this.a.add(Maps.i(range, obj));
            return this;
        }
    }

    public ImmutableRangeMap(ImmutableList<Range<K>> immutableList, ImmutableList<V> immutableList2) {
        this.ranges = immutableList;
        this.values = immutableList2;
    }

    public static <K extends Comparable<?>, V> a builder() {
        return new a();
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> copyOf(tn8 tn8Var) {
        if (tn8Var instanceof ImmutableRangeMap) {
            return (ImmutableRangeMap) tn8Var;
        }
        Map mapAsMapOfRanges = tn8Var.asMapOfRanges();
        ImmutableList.a aVar = new ImmutableList.a(mapAsMapOfRanges.size());
        ImmutableList.a aVar2 = new ImmutableList.a(mapAsMapOfRanges.size());
        for (Map.Entry entry : mapAsMapOfRanges.entrySet()) {
            aVar.a((Range) entry.getKey());
            aVar2.a(entry.getValue());
        }
        return new ImmutableRangeMap<>(aVar.e(), aVar2.e());
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of() {
        return (ImmutableRangeMap<K, V>) EMPTY;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <T, K extends Comparable<? super K>, V> Collector<T, ?, ImmutableRangeMap<K, V>> toImmutableRangeMap(Function<? super T, Range<K>> function, Function<? super T, ? extends V> function2) {
        return f.T(function, function2);
    }

    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        if (obj instanceof tn8) {
            return asMapOfRanges().equals(((tn8) obj).asMapOfRanges());
        }
        return false;
    }

    public V get(K k) {
        int iA = SortedLists.a(this.ranges, new py4(), Cut.belowValue(k), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        if (iA != -1 && this.ranges.get(iA).contains(k)) {
            return this.values.get(iA);
        }
        return null;
    }

    public Map.Entry<Range<K>, V> getEntry(K k) {
        int iA = SortedLists.a(this.ranges, new py4(), Cut.belowValue(k), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        if (iA == -1) {
            return null;
        }
        Range<K> range = this.ranges.get(iA);
        if (range.contains(k)) {
            return Maps.i(range, this.values.get(iA));
        }
        return null;
    }

    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Deprecated
    public final void put(Range<K> range, V v) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void putAll(tn8 tn8Var) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void putCoalescing(Range<K> range, V v) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void remove(Range<K> range) {
        throw new UnsupportedOperationException();
    }

    public Range<K> span() {
        if (this.ranges.isEmpty()) {
            throw new NoSuchElementException();
        }
        Range<K> range = this.ranges.get(0);
        ImmutableList<Range<K>> immutableList = this.ranges;
        return Range.create(range.lowerBound, immutableList.get(immutableList.size() - 1).upperBound);
    }

    public String toString() {
        return asMapOfRanges().toString();
    }

    public Object writeReplace() {
        return new SerializedForm(asMapOfRanges());
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of(Range<K> range, V v) {
        return new ImmutableRangeMap<>(ImmutableList.of(range), ImmutableList.of(v));
    }

    @Override
    public ImmutableMap<Range<K>, V> mo78asDescendingMapOfRanges() {
        return this.ranges.isEmpty() ? ImmutableMap.of() : new ImmutableSortedMap(new RegularImmutableSortedSet(this.ranges.reverse(), Range.rangeLexOrdering().reverse()), this.values.reverse());
    }

    @Override
    public ImmutableMap<Range<K>, V> asMapOfRanges() {
        return this.ranges.isEmpty() ? ImmutableMap.of() : new ImmutableSortedMap(new RegularImmutableSortedSet(this.ranges, Range.rangeLexOrdering()), this.values);
    }

    @Override
    public ImmutableRangeMap<K, V> mo79subRangeMap(final Range<K> range) {
        if (((Range) xd8.o(range)).isEmpty()) {
            return of();
        }
        if (this.ranges.isEmpty() || range.encloses(span())) {
            return this;
        }
        ImmutableList<Range<K>> immutableList = this.ranges;
        oy4 oy4Var = new oy4();
        Comparable comparable = range.lowerBound;
        SortedLists.KeyPresentBehavior keyPresentBehavior = SortedLists.KeyPresentBehavior.FIRST_AFTER;
        SortedLists.KeyAbsentBehavior keyAbsentBehavior = SortedLists.KeyAbsentBehavior.NEXT_HIGHER;
        final int iA = SortedLists.a(immutableList, oy4Var, comparable, keyPresentBehavior, keyAbsentBehavior);
        int iA2 = SortedLists.a(this.ranges, new py4(), range.upperBound, SortedLists.KeyPresentBehavior.ANY_PRESENT, keyAbsentBehavior);
        if (iA >= iA2) {
            return of();
        }
        final int i = iA2 - iA;
        return (ImmutableRangeMap<K, V>) new ImmutableRangeMap<K, V>(this, new ImmutableList<Range<K>>(this) {
            final ImmutableRangeMap this$0;

            {
                this.this$0 = this;
            }

            @Override
            public boolean isPartialView() {
                return true;
            }

            @Override
            public int size() {
                return i;
            }

            @Override
            public Object writeReplace() {
                return super.writeReplace();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public Range<K> get(int i2) {
                xd8.m(i2, i);
                return (i2 == 0 || i2 == i + (-1)) ? ((Range) this.this$0.ranges.get(i2 + iA)).intersection(range) : (Range) this.this$0.ranges.get(i2 + iA);
            }
        }, this.values.subList(iA, iA2)) {
            final ImmutableRangeMap this$0;

            {
                this.this$0 = this;
            }

            @Override
            public Map mo78asDescendingMapOfRanges() {
                return super.mo78asDescendingMapOfRanges();
            }

            @Override
            public Map asMapOfRanges() {
                return super.asMapOfRanges();
            }

            @Override
            public Object writeReplace() {
                return super.writeReplace();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override
            public ImmutableRangeMap<K, V> mo79subRangeMap(Range<K> range2) {
                return range.isConnected(range2) ? this.mo79subRangeMap((Range) range2.intersection(range)) : ImmutableRangeMap.of();
            }
        };
    }
}
