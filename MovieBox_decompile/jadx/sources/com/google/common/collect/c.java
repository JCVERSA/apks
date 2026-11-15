package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

abstract class c implements j3 {
    private transient Map<Object, Collection<Object>> asMap;
    private transient Collection<Map.Entry<Object, Object>> entries;
    private transient Set<Object> keySet;
    private transient l3 keys;
    private transient Collection<Object> values;

    class a extends Multimaps.b {
        a() {
        }

        @Override
        j3 a() {
            return c.this;
        }

        @Override
        public Iterator iterator() {
            return c.this.entryIterator();
        }
    }

    class b extends a implements Set {
        b() {
            super();
        }

        @Override
        public boolean equals(Object obj) {
            return Sets.a(this, obj);
        }

        @Override
        public int hashCode() {
            return Sets.d(this);
        }
    }

    class C0387c extends AbstractCollection {
        C0387c() {
        }

        @Override
        public void clear() {
            c.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return c.this.containsValue(obj);
        }

        @Override
        public Iterator iterator() {
            return c.this.valueIterator();
        }

        @Override
        public int size() {
            return c.this.size();
        }
    }

    c() {
    }

    @Override
    public Map<Object, Collection<Object>> asMap() {
        Map<Object, Collection<Object>> map = this.asMap;
        if (map != null) {
            return map;
        }
        Map<Object, Collection<Object>> mapCreateAsMap = createAsMap();
        this.asMap = mapCreateAsMap;
        return mapCreateAsMap;
    }

    @Override
    public boolean containsEntry(Object obj, Object obj2) {
        Collection<Object> collection = asMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    public boolean containsValue(Object obj) {
        Iterator<Collection<Object>> it = asMap().values().iterator();
        while (it.hasNext()) {
            if (it.next().contains(obj)) {
                return true;
            }
        }
        return false;
    }

    abstract Map createAsMap();

    abstract Collection createEntries();

    abstract Set createKeySet();

    abstract l3 createKeys();

    abstract Collection createValues();

    @Override
    public Collection entries() {
        Collection<Map.Entry<Object, Object>> collection = this.entries;
        if (collection != null) {
            return collection;
        }
        Collection<Map.Entry<Object, Object>> collectionCreateEntries = createEntries();
        this.entries = collectionCreateEntries;
        return collectionCreateEntries;
    }

    abstract Iterator entryIterator();

    public boolean equals(Object obj) {
        return Multimaps.a(this, obj);
    }

    public int hashCode() {
        return asMap().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public Set<Object> keySet() {
        Set<Object> set = this.keySet;
        if (set != null) {
            return set;
        }
        Set<Object> setCreateKeySet = createKeySet();
        this.keySet = setCreateKeySet;
        return setCreateKeySet;
    }

    public l3 keys() {
        l3 l3Var = this.keys;
        if (l3Var != null) {
            return l3Var;
        }
        l3 l3VarCreateKeys = createKeys();
        this.keys = l3VarCreateKeys;
        return l3VarCreateKeys;
    }

    @Override
    public abstract boolean put(Object obj, Object obj2);

    public boolean putAll(Object obj, Iterable<Object> iterable) {
        com.google.common.base.m.o(iterable);
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            return !collection.isEmpty() && get(obj).addAll(collection);
        }
        Iterator<Object> it = iterable.iterator();
        return it.hasNext() && Iterators.a(get(obj), it);
    }

    @Override
    public boolean remove(Object obj, Object obj2) {
        Collection<Object> collection = asMap().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public String toString() {
        return asMap().toString();
    }

    Iterator<Object> valueIterator() {
        return Maps.D(entries().iterator());
    }

    @Override
    public Collection values() {
        Collection<Object> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Collection<Object> collectionCreateValues = createValues();
        this.values = collectionCreateValues;
        return collectionCreateValues;
    }

    @Override
    public boolean putAll(j3 j3Var) {
        boolean zPut = false;
        for (Map.Entry entry : j3Var.entries()) {
            zPut |= put(entry.getKey(), entry.getValue());
        }
        return zPut;
    }
}
