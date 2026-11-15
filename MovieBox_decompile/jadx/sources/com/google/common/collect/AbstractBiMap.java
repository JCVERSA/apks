package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

abstract class AbstractBiMap<K, V> extends n2 implements k, Serializable {
    private static final long serialVersionUID = 0;
    private transient Map<K, V> delegate;
    private transient Set<Map.Entry<K, V>> entrySet;
    transient AbstractBiMap<V, K> inverse;
    private transient Set<K> keySet;
    private transient Set<V> valueSet;

    static class Inverse<K, V> extends AbstractBiMap<K, V> {
        private static final long serialVersionUID = 0;

        Inverse(Map<K, V> map, AbstractBiMap<V, K> abstractBiMap) {
            super(map, abstractBiMap, null);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            setInverse((AbstractBiMap) object);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(inverse());
        }

        @Override
        K checkKey(K k10) {
            return this.inverse.checkValue(k10);
        }

        @Override
        V checkValue(V v10) {
            return this.inverse.checkKey(v10);
        }

        @Override
        protected Object l() {
            return super.l();
        }

        Object readResolve() {
            return inverse().inverse();
        }

        @Override
        public Collection values() {
            return super.values();
        }
    }

    class a implements Iterator {

        Map.Entry f29433a;

        final Iterator f29434b;

        final AbstractBiMap f29435c;

        a(AbstractBiMap abstractBiMap, Iterator it) {
            this.f29434b = it;
            this.f29435c = abstractBiMap;
        }

        @Override
        public Map.Entry next() {
            Map.Entry entry = (Map.Entry) this.f29434b.next();
            this.f29433a = entry;
            return new b(entry);
        }

        @Override
        public boolean hasNext() {
            return this.f29434b.hasNext();
        }

        @Override
        public void remove() {
            Map.Entry entry = this.f29433a;
            if (entry == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            Object value = entry.getValue();
            this.f29434b.remove();
            this.f29435c.n(value);
            this.f29433a = null;
        }
    }

    class b extends o2 {

        private final Map.Entry f29436a;

        b(Map.Entry entry) {
            this.f29436a = entry;
        }

        @Override
        public Map.Entry l() {
            return this.f29436a;
        }

        @Override
        public Object setValue(Object obj) {
            AbstractBiMap.this.checkValue(obj);
            com.google.common.base.m.v(AbstractBiMap.this.entrySet().contains(this), "entry no longer in map");
            if (com.google.common.base.j.a(obj, getValue())) {
                return obj;
            }
            com.google.common.base.m.j(!AbstractBiMap.this.containsValue(obj), "value already present: %s", obj);
            Object value = this.f29436a.setValue(obj);
            com.google.common.base.m.v(com.google.common.base.j.a(obj, AbstractBiMap.this.get(getKey())), "entry no longer in map");
            AbstractBiMap.this.o(getKey(), true, value, obj);
            return value;
        }
    }

    private class c extends s2 {

        final Set f29438a;

        private c() {
            this.f29438a = AbstractBiMap.this.delegate.entrySet();
        }

        @Override
        public void clear() {
            AbstractBiMap.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return Maps.e(l(), obj);
        }

        @Override
        public boolean containsAll(Collection collection) {
            return standardContainsAll(collection);
        }

        @Override
        public Iterator iterator() {
            return AbstractBiMap.this.entrySetIterator();
        }

        @Override
        public boolean remove(Object obj) {
            if (!this.f29438a.contains(obj) || !(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            ((AbstractBiMap) AbstractBiMap.this.inverse).delegate.remove(entry.getValue());
            this.f29438a.remove(entry);
            return true;
        }

        @Override
        public boolean removeAll(Collection collection) {
            return standardRemoveAll(collection);
        }

        @Override
        public boolean retainAll(Collection collection) {
            return standardRetainAll(collection);
        }

        @Override
        public Object[] toArray() {
            return standardToArray();
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return standardToArray(objArr);
        }

        c(AbstractBiMap abstractBiMap, a aVar) {
            this();
        }

        @Override
        public Set l() {
            return this.f29438a;
        }
    }

    private class d extends s2 {
        private d() {
        }

        @Override
        public void clear() {
            AbstractBiMap.this.clear();
        }

        @Override
        public Iterator iterator() {
            return Maps.l(AbstractBiMap.this.entrySet().iterator());
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            AbstractBiMap.this.m(obj);
            return true;
        }

        @Override
        public boolean removeAll(Collection collection) {
            return standardRemoveAll(collection);
        }

        @Override
        public boolean retainAll(Collection collection) {
            return standardRetainAll(collection);
        }

        d(AbstractBiMap abstractBiMap, a aVar) {
            this();
        }

        @Override
        public Set l() {
            return AbstractBiMap.this.delegate.keySet();
        }
    }

    private class e extends s2 {

        final Set f29441a;

        private e() {
            this.f29441a = AbstractBiMap.this.inverse.keySet();
        }

        @Override
        public Iterator iterator() {
            return Maps.D(AbstractBiMap.this.entrySet().iterator());
        }

        @Override
        public Object[] toArray() {
            return standardToArray();
        }

        @Override
        public String toString() {
            return standardToString();
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return standardToArray(objArr);
        }

        e(AbstractBiMap abstractBiMap, a aVar) {
            this();
        }

        @Override
        public Set l() {
            return this.f29441a;
        }
    }

    AbstractBiMap(Map map, AbstractBiMap abstractBiMap, a aVar) {
        this(map, abstractBiMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Object l(Object obj, Object obj2, boolean z10) {
        checkKey(obj);
        checkValue(obj2);
        boolean zContainsKey = containsKey(obj);
        if (zContainsKey && com.google.common.base.j.a(obj2, get(obj))) {
            return obj2;
        }
        if (z10) {
            inverse().remove(obj2);
        } else {
            com.google.common.base.m.j(!containsValue(obj2), "value already present: %s", obj2);
        }
        V vPut = this.delegate.put(obj, obj2);
        o(obj, zContainsKey, vPut, obj2);
        return vPut;
    }

    public Object m(Object obj) {
        Object objA = m3.a(this.delegate.remove(obj));
        n(objA);
        return objA;
    }

    public void n(Object obj) {
        this.inverse.delegate.remove(obj);
    }

    public void o(Object obj, boolean z10, Object obj2, Object obj3) {
        if (z10) {
            n(m3.a(obj2));
        }
        this.inverse.delegate.put(obj3, obj);
    }

    K checkKey(K k10) {
        return k10;
    }

    V checkValue(V v10) {
        return v10;
    }

    @Override
    public void clear() {
        this.delegate.clear();
        this.inverse.delegate.clear();
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.inverse.containsKey(obj);
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        c cVar = new c(this, null);
        this.entrySet = cVar;
        return cVar;
    }

    Iterator<Map.Entry<K, V>> entrySetIterator() {
        return new a(this, this.delegate.entrySet().iterator());
    }

    public V forcePut(K k10, V v10) {
        return (V) l(k10, v10, true);
    }

    @Override
    public k inverse() {
        return this.inverse;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        d dVar = new d(this, null);
        this.keySet = dVar;
        return dVar;
    }

    AbstractBiMap<V, K> makeInverse(Map<V, K> map) {
        return new Inverse(map, this);
    }

    @Override
    public V put(K k10, V v10) {
        return (V) l(k10, v10, false);
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public V remove(Object obj) {
        if (containsKey(obj)) {
            return (V) m(obj);
        }
        return null;
    }

    void setDelegates(Map<K, V> map, Map<V, K> map2) {
        com.google.common.base.m.u(this.delegate == null);
        com.google.common.base.m.u(this.inverse == null);
        com.google.common.base.m.d(map.isEmpty());
        com.google.common.base.m.d(map2.isEmpty());
        com.google.common.base.m.d(map != map2);
        this.delegate = map;
        this.inverse = makeInverse(map2);
    }

    void setInverse(AbstractBiMap<V, K> abstractBiMap) {
        this.inverse = abstractBiMap;
    }

    AbstractBiMap(Map<K, V> map, Map<V, K> map2) {
        setDelegates(map, map2);
    }

    @Override
    public Map<K, V> l() {
        return this.delegate;
    }

    @Override
    public Set<V> values() {
        Set<V> set = this.valueSet;
        if (set != null) {
            return set;
        }
        e eVar = new e(this, null);
        this.valueSet = eVar;
        return eVar;
    }

    private AbstractBiMap(Map map, AbstractBiMap abstractBiMap) {
        this.delegate = map;
        this.inverse = abstractBiMap;
    }
}
