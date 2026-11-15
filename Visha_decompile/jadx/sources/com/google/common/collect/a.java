package com.google.common.collect;

import defpackage.at6;
import defpackage.xd8;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class a implements at6 {
    private transient Map<Object, Collection<Object>> asMap;
    private transient Collection<Map.Entry<Object, Object>> entries;
    private transient Set<Object> keySet;
    private transient j keys;
    private transient Collection<Object> values;

    public class C0104a extends Multimaps.b {
        public C0104a() {
        }

        @Override
        public at6 b() {
            return a.this;
        }

        @Override
        public Iterator iterator() {
            return a.this.entryIterator();
        }
    }

    public class b extends C0104a implements Set {
        public b() {
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

    public class c extends AbstractCollection {
        public c() {
        }

        @Override
        public void clear() {
            a.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return a.this.containsValue(obj);
        }

        @Override
        public Iterator iterator() {
            return a.this.valueIterator();
        }

        @Override
        public int size() {
            return a.this.size();
        }
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

    public abstract Map createAsMap();

    public abstract Collection createEntries();

    public abstract Set createKeySet();

    public abstract j createKeys();

    public abstract Collection createValues();

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

    public abstract Iterator entryIterator();

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

    public j keys() {
        j jVar = this.keys;
        if (jVar != null) {
            return jVar;
        }
        j jVarCreateKeys = createKeys();
        this.keys = jVarCreateKeys;
        return jVarCreateKeys;
    }

    @Override
    public abstract boolean put(Object obj, Object obj2);

    public boolean putAll(Object obj, Iterable<Object> iterable) {
        xd8.o(iterable);
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

    public Iterator<Object> valueIterator() {
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
    public boolean putAll(at6 at6Var) {
        boolean zPut = false;
        for (Map.Entry entry : at6Var.entries()) {
            zPut |= put(entry.getKey(), entry.getValue());
        }
        return zPut;
    }
}
