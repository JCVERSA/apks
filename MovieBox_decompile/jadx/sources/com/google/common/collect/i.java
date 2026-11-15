package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

abstract class i implements c4 {
    private transient Set<c4.a> cellSet;
    private transient Collection<Object> values;

    class a extends o4 {
        a(Iterator it) {
            super(it);
        }

        @Override
        public Object a(c4.a aVar) {
            return aVar.getValue();
        }
    }

    class b extends AbstractSet {
        b() {
        }

        @Override
        public void clear() {
            i.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof c4.a)) {
                return false;
            }
            c4.a aVar = (c4.a) obj;
            Map map = (Map) Maps.v(i.this.rowMap(), aVar.getRowKey());
            return map != null && f2.c(map.entrySet(), Maps.i(aVar.getColumnKey(), aVar.getValue()));
        }

        @Override
        public Iterator iterator() {
            return i.this.cellIterator();
        }

        @Override
        public boolean remove(Object obj) {
            if (!(obj instanceof c4.a)) {
                return false;
            }
            c4.a aVar = (c4.a) obj;
            Map map = (Map) Maps.v(i.this.rowMap(), aVar.getRowKey());
            return map != null && f2.d(map.entrySet(), Maps.i(aVar.getColumnKey(), aVar.getValue()));
        }

        @Override
        public int size() {
            return i.this.size();
        }
    }

    class c extends AbstractCollection {
        c() {
        }

        @Override
        public void clear() {
            i.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return i.this.containsValue(obj);
        }

        @Override
        public Iterator iterator() {
            return i.this.valuesIterator();
        }

        @Override
        public int size() {
            return i.this.size();
        }
    }

    i() {
    }

    abstract Iterator cellIterator();

    @Override
    public Set cellSet() {
        Set<c4.a> set = this.cellSet;
        if (set != null) {
            return set;
        }
        Set<c4.a> setCreateCellSet = createCellSet();
        this.cellSet = setCreateCellSet;
        return setCreateCellSet;
    }

    public abstract void clear();

    public boolean contains(Object obj, Object obj2) {
        Map map = (Map) Maps.v(rowMap(), obj);
        return map != null && Maps.u(map, obj2);
    }

    public boolean containsColumn(Object obj) {
        return Maps.u(columnMap(), obj);
    }

    public boolean containsRow(Object obj) {
        return Maps.u(rowMap(), obj);
    }

    public boolean containsValue(Object obj) {
        Iterator it = rowMap().values().iterator();
        while (it.hasNext()) {
            if (((Map) it.next()).containsValue(obj)) {
                return true;
            }
        }
        return false;
    }

    Set<c4.a> createCellSet() {
        return new b();
    }

    Collection<Object> createValues() {
        return new c();
    }

    public boolean equals(Object obj) {
        return Tables.a(this, obj);
    }

    @Override
    public Object get(Object obj, Object obj2) {
        Map map = (Map) Maps.v(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return Maps.v(map, obj2);
    }

    public int hashCode() {
        return cellSet().hashCode();
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public abstract Object put(Object obj, Object obj2, Object obj3);

    public void putAll(c4 c4Var) {
        for (c4.a aVar : c4Var.cellSet()) {
            put(aVar.getRowKey(), aVar.getColumnKey(), aVar.getValue());
        }
    }

    public String toString() {
        return rowMap().toString();
    }

    public Collection values() {
        Collection<Object> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Collection<Object> collectionCreateValues = createValues();
        this.values = collectionCreateValues;
        return collectionCreateValues;
    }

    Iterator<Object> valuesIterator() {
        return new a(cellSet().iterator());
    }
}
