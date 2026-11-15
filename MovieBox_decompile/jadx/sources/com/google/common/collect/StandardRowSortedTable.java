package com.google.common.collect;

import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

class StandardRowSortedTable<R, C, V> extends StandardTable<R, C, V> implements c4 {
    private static final long serialVersionUID = 0;

    private class b extends StandardTable.h implements SortedMap {
        private b() {
            super();
        }

        @Override
        public Comparator comparator() {
            return StandardRowSortedTable.this.e().comparator();
        }

        @Override
        public Object firstKey() {
            return StandardRowSortedTable.this.e().firstKey();
        }

        @Override
        public SortedSet i() {
            return new Maps.n(this);
        }

        @Override
        public SortedMap headMap(Object obj) {
            com.google.common.base.m.o(obj);
            return new StandardRowSortedTable(StandardRowSortedTable.this.e().headMap(obj), StandardRowSortedTable.this.factory).rowMap();
        }

        @Override
        public SortedSet keySet() {
            return (SortedSet) super.keySet();
        }

        @Override
        public Object lastKey() {
            return StandardRowSortedTable.this.e().lastKey();
        }

        @Override
        public SortedMap subMap(Object obj, Object obj2) {
            com.google.common.base.m.o(obj);
            com.google.common.base.m.o(obj2);
            return new StandardRowSortedTable(StandardRowSortedTable.this.e().subMap(obj, obj2), StandardRowSortedTable.this.factory).rowMap();
        }

        @Override
        public SortedMap tailMap(Object obj) {
            com.google.common.base.m.o(obj);
            return new StandardRowSortedTable(StandardRowSortedTable.this.e().tailMap(obj), StandardRowSortedTable.this.factory).rowMap();
        }
    }

    StandardRowSortedTable(SortedMap<R, Map<C, V>> sortedMap, com.google.common.base.q qVar) {
        super(sortedMap, qVar);
    }

    public SortedMap e() {
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
