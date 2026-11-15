package com.google.common.collect;

import defpackage.w6a;
import defpackage.xd8;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

class StandardRowSortedTable<R, C, V> extends StandardTable<R, C, V> implements r {
    private static final long serialVersionUID = 0;

    public class b extends StandardTable.h implements SortedMap {
        public b() {
            super();
        }

        @Override
        public Comparator comparator() {
            return StandardRowSortedTable.this.e().comparator();
        }

        @Override
        public SortedSet g() {
            return new Maps.n(this);
        }

        @Override
        public Object firstKey() {
            return StandardRowSortedTable.this.e().firstKey();
        }

        @Override
        public SortedSet keySet() {
            return (SortedSet) super.keySet();
        }

        @Override
        public SortedMap headMap(Object obj) {
            xd8.o(obj);
            return new StandardRowSortedTable(StandardRowSortedTable.this.e().headMap(obj), StandardRowSortedTable.this.factory).rowMap();
        }

        @Override
        public Object lastKey() {
            return StandardRowSortedTable.this.e().lastKey();
        }

        @Override
        public SortedMap subMap(Object obj, Object obj2) {
            xd8.o(obj);
            xd8.o(obj2);
            return new StandardRowSortedTable(StandardRowSortedTable.this.e().subMap(obj, obj2), StandardRowSortedTable.this.factory).rowMap();
        }

        @Override
        public SortedMap tailMap(Object obj) {
            xd8.o(obj);
            return new StandardRowSortedTable(StandardRowSortedTable.this.e().tailMap(obj), StandardRowSortedTable.this.factory).rowMap();
        }
    }

    public StandardRowSortedTable(SortedMap<R, Map<C, V>> sortedMap, w6a w6aVar) {
        super(sortedMap, w6aVar);
    }

    public final SortedMap e() {
        return (SortedMap) this.backingMap;
    }

    @Override
    public SortedMap<R, Map<C, V>> createRowMap() {
        return new b();
    }

    @Override
    public SortedSet<R> rowKeySet() {
        return (SortedSet) rowMap().keySet();
    }

    @Override
    public SortedMap<R, Map<C, V>> rowMap() {
        return (SortedMap) super.rowMap();
    }
}
