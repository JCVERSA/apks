package com.google.common.collect;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class HashBasedTable<R, C, V> extends StandardTable<R, C, V> {
    private static final long serialVersionUID = 0;

    private static class Factory<C, V> implements com.google.common.base.q, Serializable {
        private static final long serialVersionUID = 0;
        final int expectedSize;

        Factory(int i10) {
            this.expectedSize = i10;
        }

        @Override
        public Map<C, V> get() {
            return Maps.s(this.expectedSize);
        }
    }

    HashBasedTable(Map<R, Map<C, V>> map, Factory<C, V> factory) {
        super(map, factory);
    }

    public static <R, C, V> HashBasedTable<R, C, V> create() {
        return new HashBasedTable<>(new LinkedHashMap(), new Factory(0));
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Map row(Object obj) {
        return super.row(obj);
    }

    @Override
    public Set rowKeySet() {
        return super.rowKeySet();
    }

    @Override
    public Map rowMap() {
        return super.rowMap();
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

    public static <R, C, V> HashBasedTable<R, C, V> create(int i10, int i11) {
        e2.b(i11, "expectedCellsPerRow");
        return new HashBasedTable<>(Maps.s(i10), new Factory(i11));
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(c4 c4Var) {
        HashBasedTable<R, C, V> hashBasedTableCreate = create();
        hashBasedTableCreate.putAll(c4Var);
        return hashBasedTableCreate;
    }
}
