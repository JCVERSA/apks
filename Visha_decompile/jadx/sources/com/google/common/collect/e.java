package com.google.common.collect;

import defpackage.y6b;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class e implements r {
    private transient Set<r.a> cellSet;
    private transient Collection<Object> values;

    public class a extends y6b {
        public a(Iterator it) {
            super(it);
        }

        @Override
        public Object a(r.a aVar) {
            return aVar.getValue();
        }
    }

    public class b extends AbstractSet {
        public b() {
        }

        @Override
        public void clear() {
            e.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof r.a)) {
                return false;
            }
            r.a aVar = (r.a) obj;
            Map map = (Map) Maps.v(e.this.rowMap(), aVar.getRowKey());
            return map != null && g.c(map.entrySet(), Maps.i(aVar.getColumnKey(), aVar.getValue()));
        }

        @Override
        public Iterator iterator() {
            return e.this.cellIterator();
        }

        @Override
        public boolean remove(Object obj) {
            if (!(obj instanceof r.a)) {
                return false;
            }
            r.a aVar = (r.a) obj;
            Map map = (Map) Maps.v(e.this.rowMap(), aVar.getRowKey());
            return map != null && g.d(map.entrySet(), Maps.i(aVar.getColumnKey(), aVar.getValue()));
        }

        @Override
        public int size() {
            return e.this.size();
        }
    }

    public class c extends AbstractCollection {
        public c() {
        }

        @Override
        public void clear() {
            e.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return e.this.containsValue(obj);
        }

        @Override
        public Iterator iterator() {
            return e.this.valuesIterator();
        }

        @Override
        public int size() {
            return e.this.size();
        }
    }

    public abstract Iterator cellIterator();

    @Override
    public Set cellSet() {
        Set<r.a> set = this.cellSet;
        if (set != null) {
            return set;
        }
        Set<r.a> setCreateCellSet = createCellSet();
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

    public Set<r.a> createCellSet() {
        return new b();
    }

    public Collection<Object> createValues() {
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

    public void putAll(r rVar) {
        for (r.a aVar : rVar.cellSet()) {
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

    public Iterator<Object> valuesIterator() {
        return new a(cellSet().iterator());
    }
}
