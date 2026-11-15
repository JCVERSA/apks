package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

abstract class RegularImmutableTable<R, C, V> extends ImmutableTable<R, C, V> {

    private final class CellSet extends IndexedImmutableSet<c4.a> {
        private CellSet() {
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof c4.a)) {
                return false;
            }
            c4.a aVar = (c4.a) obj;
            Object obj2 = RegularImmutableTable.this.get(aVar.getRowKey(), aVar.getColumnKey());
            return obj2 != null && obj2.equals(aVar.getValue());
        }

        @Override
        boolean isPartialView() {
            return false;
        }

        @Override
        public int size() {
            return RegularImmutableTable.this.size();
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public c4.a get(int i10) {
            return RegularImmutableTable.this.getCell(i10);
        }
    }

    private final class Values extends ImmutableList<V> {
        private Values() {
        }

        @Override
        public V get(int i10) {
            return (V) RegularImmutableTable.this.getValue(i10);
        }

        @Override
        boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return RegularImmutableTable.this.size();
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    RegularImmutableTable() {
    }

    private static RegularImmutableTable b(Iterable iterable, Comparator comparator, Comparator comparator2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(iterable);
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            c4.a aVar = (c4.a) it.next();
            linkedHashSet.add(aVar.getRowKey());
            linkedHashSet2.add(aVar.getColumnKey());
        }
        return forOrderedComponents(immutableListCopyOf, comparator == null ? ImmutableSet.copyOf((Collection) linkedHashSet) : ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator, linkedHashSet)), comparator2 == null ? ImmutableSet.copyOf((Collection) linkedHashSet2) : ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator2, linkedHashSet2)));
    }

    public static int c(Comparator comparator, Comparator comparator2, c4.a aVar, c4.a aVar2) {
        int iCompare = comparator == null ? 0 : comparator.compare(aVar.getRowKey(), aVar2.getRowKey());
        if (iCompare != 0) {
            return iCompare;
        }
        if (comparator2 == null) {
            return 0;
        }
        return comparator2.compare(aVar.getColumnKey(), aVar2.getColumnKey());
    }

    static <R, C, V> RegularImmutableTable<R, C, V> forCells(List<c4.a> list, final Comparator<? super R> comparator, final Comparator<? super C> comparator2) {
        com.google.common.base.m.o(list);
        if (comparator != null || comparator2 != null) {
            Collections.sort(list, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return RegularImmutableTable.c(comparator, comparator2, (c4.a) obj, (c4.a) obj2);
                }
            });
        }
        return b(list, comparator, comparator2);
    }

    static <R, C, V> RegularImmutableTable<R, C, V> forOrderedComponents(ImmutableList<c4.a> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        return ((long) immutableList.size()) > (((long) immutableSet.size()) * ((long) immutableSet2.size())) / 2 ? new DenseImmutableTable(immutableList, immutableSet, immutableSet2) : new SparseImmutableTable(immutableList, immutableSet, immutableSet2);
    }

    final void checkNoDuplicate(R r10, C c10, V v10, V v11) {
        com.google.common.base.m.l(v10 == null, "Duplicate key: (row=%s, column=%s), values: [%s, %s].", r10, c10, v11, v10);
    }

    abstract c4.a getCell(int i10);

    abstract V getValue(int i10);

    @Override
    public abstract int size();

    @Override
    abstract Object writeReplace();

    @Override
    public final ImmutableSet<c4.a> createCellSet() {
        return isEmpty() ? ImmutableSet.of() : new CellSet();
    }

    @Override
    public final ImmutableCollection<V> createValues() {
        return isEmpty() ? ImmutableList.of() : new Values();
    }

    static <R, C, V> RegularImmutableTable<R, C, V> forCells(Iterable<c4.a> iterable) {
        return b(iterable, null, null);
    }
}
