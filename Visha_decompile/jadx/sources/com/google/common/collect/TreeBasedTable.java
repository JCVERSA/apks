package com.google.common.collect;

import com.google.common.collect.TreeBasedTable;
import defpackage.o74;
import defpackage.v55;
import defpackage.w6a;
import defpackage.xd8;
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

    public static class Factory<C, V> implements w6a, Serializable {
        private static final long serialVersionUID = 0;
        final Comparator<? super C> comparator;

        public Factory(Comparator<? super C> comparator) {
            this.comparator = comparator;
        }

        @Override
        public Map<C, V> get() {
            return new TreeMap(this.comparator);
        }
    }

    public class a extends AbstractIterator {
        public Object d;
        public final Iterator e;
        public final Comparator f;
        public final TreeBasedTable g;

        public a(TreeBasedTable treeBasedTable, Iterator it, Comparator comparator) {
            this.e = it;
            this.f = comparator;
            this.g = treeBasedTable;
        }

        @Override
        public Object a() {
            while (this.e.hasNext()) {
                Object next = this.e.next();
                Object obj = this.d;
                if (obj == null || this.f.compare(next, obj) != 0) {
                    this.d = next;
                    return next;
                }
            }
            this.d = null;
            return b();
        }
    }

    public class b extends StandardTable.g implements SortedMap {
        public final Object e;
        public final Object f;
        public transient SortedMap g;

        public b(TreeBasedTable treeBasedTable, Object obj) {
            this(obj, null, null);
        }

        @Override
        public void c() {
            l();
            SortedMap sortedMap = this.g;
            if (sortedMap == null || !sortedMap.isEmpty()) {
                return;
            }
            TreeBasedTable.this.backingMap.remove(this.b);
            this.g = null;
            this.c = null;
        }

        @Override
        public Comparator comparator() {
            return TreeBasedTable.this.columnComparator();
        }

        @Override
        public boolean containsKey(Object obj) {
            return k(obj) && super.containsKey(obj);
        }

        public int f(Object obj, Object obj2) {
            return comparator().compare(obj, obj2);
        }

        @Override
        public Object firstKey() {
            d();
            Map map = this.c;
            if (map != null) {
                return ((SortedMap) map).firstKey();
            }
            throw new NoSuchElementException();
        }

        @Override
        public SortedMap b() {
            l();
            SortedMap sortedMapTailMap = this.g;
            if (sortedMapTailMap == null) {
                return null;
            }
            Object obj = this.e;
            if (obj != null) {
                sortedMapTailMap = sortedMapTailMap.tailMap(obj);
            }
            Object obj2 = this.f;
            return obj2 != null ? sortedMapTailMap.headMap(obj2) : sortedMapTailMap;
        }

        @Override
        public SortedSet keySet() {
            return new Maps.n(this);
        }

        @Override
        public SortedMap headMap(Object obj) {
            xd8.d(k(xd8.o(obj)));
            return new b(this.b, this.e, obj);
        }

        public boolean k(Object obj) {
            Object obj2;
            Object obj3;
            return obj != null && ((obj2 = this.e) == null || f(obj2, obj) <= 0) && ((obj3 = this.f) == null || f(obj3, obj) > 0);
        }

        public void l() {
            SortedMap sortedMap = this.g;
            if (sortedMap == null || (sortedMap.isEmpty() && TreeBasedTable.this.backingMap.containsKey(this.b))) {
                this.g = (SortedMap) TreeBasedTable.this.backingMap.get(this.b);
            }
        }

        @Override
        public Object lastKey() {
            d();
            Map map = this.c;
            if (map != null) {
                return ((SortedMap) map).lastKey();
            }
            throw new NoSuchElementException();
        }

        @Override
        public Object put(Object obj, Object obj2) {
            xd8.d(k(xd8.o(obj)));
            return super.put(obj, obj2);
        }

        @Override
        public SortedMap subMap(Object obj, Object obj2) {
            xd8.d(k(xd8.o(obj)) && k(xd8.o(obj2)));
            return new b(this.b, obj, obj2);
        }

        @Override
        public SortedMap tailMap(Object obj) {
            xd8.d(k(xd8.o(obj)));
            return new b(this.b, obj, this.f);
        }

        public b(Object obj, Object obj2, Object obj3) {
            super(obj);
            this.e = obj2;
            this.f = obj3;
            xd8.d(obj2 == null || obj3 == null || f(obj2, obj3) <= 0);
        }
    }

    public TreeBasedTable(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
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
    public Iterator<C> createColumnKeyIterator() {
        Comparator<? super C> comparatorColumnComparator = columnComparator();
        return new a(this, Iterators.r(v55.t(this.backingMap.values(), new o74() {
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
    public void putAll(r rVar) {
        super.putAll(rVar);
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
        xd8.o(comparator);
        xd8.o(comparator2);
        return new TreeBasedTable<>(comparator, comparator2);
    }

    @Override
    public SortedMap<C, V> row(R r) {
        return new b(this, r);
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
