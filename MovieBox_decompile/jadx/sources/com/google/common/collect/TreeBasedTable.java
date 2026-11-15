package com.google.common.collect;

import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;

public class TreeBasedTable<R, C, V> extends StandardRowSortedTable<R, C, V> {
    private static final long serialVersionUID = 0;
    private final Comparator<? super C> columnComparator;

    private static class Factory<C, V> implements com.google.common.base.q, Serializable {
        private static final long serialVersionUID = 0;
        final Comparator<? super C> comparator;

        Factory(Comparator<? super C> comparator) {
            this.comparator = comparator;
        }

        @Override
        public Map<C, V> get() {
            return new TreeMap(this.comparator);
        }
    }

    class a extends AbstractIterator {

        Object f29875c;

        final Iterator f29876d;

        final Comparator f29877e;

        final TreeBasedTable f29878f;

        a(TreeBasedTable treeBasedTable, Iterator it, Comparator comparator) {
            this.f29876d = it;
            this.f29877e = comparator;
            this.f29878f = treeBasedTable;
        }

        @Override
        protected Object a() {
            while (this.f29876d.hasNext()) {
                Object next = this.f29876d.next();
                Object obj = this.f29875c;
                if (obj == null || this.f29877e.compare(next, obj) != 0) {
                    this.f29875c = next;
                    return next;
                }
            }
            this.f29875c = null;
            return b();
        }
    }

    private class b extends StandardTable.g implements SortedMap {

        final Object f29879d;

        final Object f29880e;

        transient SortedMap f29881f;

        b(TreeBasedTable treeBasedTable, Object obj) {
            this(obj, null, null);
        }

        @Override
        public Comparator comparator() {
            return TreeBasedTable.this.columnComparator();
        }

        @Override
        public boolean containsKey(Object obj) {
            return k(obj) && super.containsKey(obj);
        }

        @Override
        void d() {
            l();
            SortedMap sortedMap = this.f29881f;
            if (sortedMap == null || !sortedMap.isEmpty()) {
                return;
            }
            TreeBasedTable.this.backingMap.remove(this.f29863a);
            this.f29881f = null;
            this.f29864b = null;
        }

        @Override
        public Object firstKey() {
            e();
            Map map = this.f29864b;
            if (map != null) {
                return ((SortedMap) map).firstKey();
            }
            throw new NoSuchElementException();
        }

        int h(Object obj, Object obj2) {
            return comparator().compare(obj, obj2);
        }

        @Override
        public SortedMap headMap(Object obj) {
            com.google.common.base.m.d(k(com.google.common.base.m.o(obj)));
            return new b(this.f29863a, this.f29879d, obj);
        }

        @Override
        public SortedMap c() {
            l();
            SortedMap sortedMapTailMap = this.f29881f;
            if (sortedMapTailMap == null) {
                return null;
            }
            Object obj = this.f29879d;
            if (obj != null) {
                sortedMapTailMap = sortedMapTailMap.tailMap(obj);
            }
            Object obj2 = this.f29880e;
            return obj2 != null ? sortedMapTailMap.headMap(obj2) : sortedMapTailMap;
        }

        @Override
        public SortedSet keySet() {
            return new Maps.n(this);
        }

        boolean k(Object obj) {
            Object obj2;
            Object obj3;
            return obj != null && ((obj2 = this.f29879d) == null || h(obj2, obj) <= 0) && ((obj3 = this.f29880e) == null || h(obj3, obj) > 0);
        }

        void l() {
            SortedMap sortedMap = this.f29881f;
            if (sortedMap == null || (sortedMap.isEmpty() && TreeBasedTable.this.backingMap.containsKey(this.f29863a))) {
                this.f29881f = (SortedMap) TreeBasedTable.this.backingMap.get(this.f29863a);
            }
        }

        @Override
        public Object lastKey() {
            e();
            Map map = this.f29864b;
            if (map != null) {
                return ((SortedMap) map).lastKey();
            }
            throw new NoSuchElementException();
        }

        @Override
        public Object put(Object obj, Object obj2) {
            com.google.common.base.m.d(k(com.google.common.base.m.o(obj)));
            return super.put(obj, obj2);
        }

        @Override
        public SortedMap subMap(Object obj, Object obj2) {
            com.google.common.base.m.d(k(com.google.common.base.m.o(obj)) && k(com.google.common.base.m.o(obj2)));
            return new b(this.f29863a, obj, obj2);
        }

        @Override
        public SortedMap tailMap(Object obj) {
            com.google.common.base.m.d(k(com.google.common.base.m.o(obj)));
            return new b(this.f29863a, obj, this.f29880e);
        }

        b(Object obj, Object obj2, Object obj3) {
            super(obj);
            this.f29879d = obj2;
            this.f29880e = obj3;
            com.google.common.base.m.d(obj2 == null || obj3 == null || h(obj2, obj3) <= 0);
        }
    }

    TreeBasedTable(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        super(new TreeMap(comparator), new Factory(comparator2));
        this.columnComparator = comparator2;
    }

    public static <R extends Comparable, C extends Comparable, V> TreeBasedTable<R, C, V> create() {
        return new TreeBasedTable<>(Ordering.natural(), Ordering.natural());
    }

    public static Iterator lambda$createColumnKeyIterator$0(Map map) {
        return map.keySet().iterator();
    }

    @Override
    public Set cellSet() {
        return super.cellSet();
    }

    @Override
    public void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Map column(Object obj) {
        return super.column(obj);
    }

    @Deprecated
    public Comparator<? super C> columnComparator() {
        return this.columnComparator;
    }

    @Override
    public Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override
    public Map columnMap() {
        return super.columnMap();
    }

    @Override
    public boolean contains(Object obj, Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override
    public boolean containsColumn(Object obj) {
        return super.containsColumn(obj);
    }

    @Override
    public boolean containsRow(Object obj) {
        return super.containsRow(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override
    Iterator<C> createColumnKeyIterator() {
        Comparator<? super C> comparatorColumnComparator = columnComparator();
        return new a(this, Iterators.r(g3.s(this.backingMap.values(), new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return TreeBasedTable.lambda$createColumnKeyIterator$0((Map) obj);
            }
        }), comparatorColumnComparator), comparatorColumnComparator);
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public Object get(Object obj, Object obj2) {
        return super.get(obj, obj2);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object put(Object obj, Object obj2, Object obj3) {
        return super.put(obj, obj2, obj3);
    }

    @Override
    public void putAll(c4 c4Var) {
        super.putAll(c4Var);
    }

    @Override
    public Object remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Deprecated
    public Comparator<? super R> rowComparator() {
        Comparator<? super R> comparator = rowKeySet().comparator();
        Objects.requireNonNull(comparator);
        return comparator;
    }

    @Override
    public int size() {
        return super.size();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public Collection values() {
        return super.values();
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        com.google.common.base.m.o(comparator);
        com.google.common.base.m.o(comparator2);
        return new TreeBasedTable<>(comparator, comparator2);
    }

    @Override
    public SortedMap<C, V> row(R r10) {
        return new b(this, r10);
    }

    @Override
    public SortedSet<R> rowKeySet() {
        return super.rowKeySet();
    }

    @Override
    public SortedMap<R, Map<C, V>> rowMap() {
        return super.rowMap();
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(TreeBasedTable<R, C, ? extends V> treeBasedTable) {
        TreeBasedTable<R, C, V> treeBasedTable2 = new TreeBasedTable<>(treeBasedTable.rowComparator(), treeBasedTable.columnComparator());
        treeBasedTable2.putAll(treeBasedTable);
        return treeBasedTable2;
    }
}
