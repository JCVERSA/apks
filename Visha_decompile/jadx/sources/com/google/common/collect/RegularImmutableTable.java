package com.google.common.collect;

import defpackage.xd8;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

abstract class RegularImmutableTable<R, C, V> extends ImmutableTable<R, C, V> {

    public final class CellSet extends IndexedImmutableSet<r.a> {
        public CellSet() {
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof r.a)) {
                return false;
            }
            r.a aVar = (r.a) obj;
            Object obj2 = RegularImmutableTable.this.get(aVar.getRowKey(), aVar.getColumnKey());
            return obj2 != null && obj2.equals(aVar.getValue());
        }

        @Override
        public boolean isPartialView() {
            return false;
        }

        @Override
        public int size() {
            return RegularImmutableTable.this.size();
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public r.a get(int i) {
            return RegularImmutableTable.this.getCell(i);
        }
    }

    public final class Values extends ImmutableList<V> {
        public Values() {
        }

        @Override
        public V get(int i) {
            return (V) RegularImmutableTable.this.getValue(i);
        }

        @Override
        public boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return RegularImmutableTable.this.size();
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public static RegularImmutableTable b(Iterable iterable, Comparator comparator, Comparator comparator2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(iterable);
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            r.a aVar = (r.a) it.next();
            linkedHashSet.add(aVar.getRowKey());
            linkedHashSet2.add(aVar.getColumnKey());
        }
        return forOrderedComponents(immutableListCopyOf, comparator == null ? ImmutableSet.copyOf((Collection) linkedHashSet) : ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator, linkedHashSet)), comparator2 == null ? ImmutableSet.copyOf((Collection) linkedHashSet2) : ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator2, linkedHashSet2)));
    }

    public static int c(Comparator comparator, Comparator comparator2, r.a aVar, r.a aVar2) {
        int iCompare = comparator == null ? 0 : comparator.compare(aVar.getRowKey(), aVar2.getRowKey());
        if (iCompare != 0) {
            return iCompare;
        }
        if (comparator2 == null) {
            return 0;
        }
        return comparator2.compare(aVar.getColumnKey(), aVar2.getColumnKey());
    }

    public static <R, C, V> RegularImmutableTable<R, C, V> forCells(List<r.a> list, final Comparator<? super R> comparator, final Comparator<? super C> comparator2) {
        xd8.o(list);
        if (comparator != null || comparator2 != null) {
            Collections.sort(list, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return RegularImmutableTable.c(comparator, comparator2, (r.a) obj, (r.a) obj2);
                }
            });
        }
        return b(list, comparator, comparator2);
    }

    public static <R, C, V> RegularImmutableTable<R, C, V> forOrderedComponents(ImmutableList<r.a> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        return ((long) immutableList.size()) > (((long) immutableSet.size()) * ((long) immutableSet2.size())) / 2 ? new DenseImmutableTable(immutableList, immutableSet, immutableSet2) : new SparseImmutableTable(immutableList, immutableSet, immutableSet2);
    }

    public final void checkNoDuplicate(R r, C c, V v, V v2) {
        xd8.l(v == null, "Duplicate key: (row=%s, column=%s), values: [%s, %s].", r, c, v2, v);
    }

    public abstract r.a getCell(int i);

    public abstract V getValue(int i);

    @Override
    public abstract int size();

    @Override
    public abstract Object writeReplace();

    @Override
    public final ImmutableSet<r.a> createCellSet() {
        return isEmpty() ? ImmutableSet.of() : new CellSet();
    }

    @Override
    public final ImmutableCollection<V> createValues() {
        return isEmpty() ? ImmutableList.of() : new Values();
    }

    public static <R, C, V> RegularImmutableTable<R, C, V> forCells(Iterable<r.a> iterable) {
        return b(iterable, null, null);
    }
}
