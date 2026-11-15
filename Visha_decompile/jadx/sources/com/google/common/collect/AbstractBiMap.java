package com.google.common.collect;

import defpackage.a54;
import defpackage.b54;
import defpackage.ce0;
import defpackage.e54;
import defpackage.kc7;
import defpackage.r37;
import defpackage.xd8;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

abstract class AbstractBiMap<K, V> extends a54 implements ce0, Serializable {
    private static final long serialVersionUID = 0;
    private transient Map<K, V> delegate;
    private transient Set<Map.Entry<K, V>> entrySet;
    transient AbstractBiMap<V, K> inverse;
    private transient Set<K> keySet;
    private transient Set<V> valueSet;

    public static class Inverse<K, V> extends AbstractBiMap<K, V> {
        private static final long serialVersionUID = 0;

        public Inverse(Map<K, V> map, AbstractBiMap<V, K> abstractBiMap) {
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
        public K checkKey(K k) {
            return this.inverse.checkValue(k);
        }

        @Override
        public V checkValue(V v) {
            return this.inverse.checkKey(v);
        }

        @Override
        public Object f() {
            return super.f();
        }

        public Object readResolve() {
            return inverse().inverse();
        }

        @Override
        public Collection values() {
            return super.values();
        }
    }

    public class a implements Iterator {
        public Map.Entry b;
        public final Iterator c;
        public final AbstractBiMap d;

        public a(AbstractBiMap abstractBiMap, Iterator it) {
            this.c = it;
            this.d = abstractBiMap;
        }

        @Override
        public Map.Entry next() {
            Map.Entry entry = (Map.Entry) this.c.next();
            this.b = entry;
            return new b(entry);
        }

        @Override
        public boolean hasNext() {
            return this.c.hasNext();
        }

        @Override
        public void remove() {
            Map.Entry entry = this.b;
            if (entry == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            Object value = entry.getValue();
            this.c.remove();
            this.d.l(value);
            this.b = null;
        }
    }

    public class b extends b54 {
        public final Map.Entry b;

        public b(Map.Entry entry) {
            this.b = entry;
        }

        @Override
        public Map.Entry f() {
            return this.b;
        }

        @Override
        public Object setValue(Object obj) {
            AbstractBiMap.this.checkValue(obj);
            xd8.v(AbstractBiMap.this.entrySet().contains(this), "entry no longer in map");
            if (kc7.a(obj, getValue())) {
                return obj;
            }
            xd8.j(!AbstractBiMap.this.containsValue(obj), "value already present: %s", obj);
            Object value = this.b.setValue(obj);
            xd8.v(kc7.a(obj, AbstractBiMap.this.get(getKey())), "entry no longer in map");
            AbstractBiMap.this.m(getKey(), true, value, obj);
            return value;
        }
    }

    public class c extends e54 {
        public final Set b;

        public c() {
            this.b = AbstractBiMap.this.delegate.entrySet();
        }

        @Override
        public void clear() {
            AbstractBiMap.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return Maps.e(f(), obj);
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
            if (!this.b.contains(obj) || !(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            ((AbstractBiMap) AbstractBiMap.this.inverse).delegate.remove(entry.getValue());
            this.b.remove(entry);
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

        public c(AbstractBiMap abstractBiMap, a aVar) {
            this();
        }

        @Override
        public Set f() {
            return this.b;
        }
    }

    public class d extends e54 {
        public d() {
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
            AbstractBiMap.this.k(obj);
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

        public d(AbstractBiMap abstractBiMap, a aVar) {
            this();
        }

        @Override
        public Set f() {
            return AbstractBiMap.this.delegate.keySet();
        }
    }

    public class e extends e54 {
        public final Set b;

        public e() {
            this.b = AbstractBiMap.this.inverse.keySet();
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

        public e(AbstractBiMap abstractBiMap, a aVar) {
            this();
        }

        @Override
        public Set f() {
            return this.b;
        }
    }

    public AbstractBiMap(Map map, AbstractBiMap abstractBiMap, a aVar) {
        this(map, abstractBiMap);
    }

    public K checkKey(K k) {
        return k;
    }

    public V checkValue(V v) {
        return v;
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

    public Iterator<Map.Entry<K, V>> entrySetIterator() {
        return new a(this, this.delegate.entrySet().iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object f(Object obj, Object obj2, boolean z) {
        checkKey(obj);
        checkValue(obj2);
        boolean zContainsKey = containsKey(obj);
        if (zContainsKey && kc7.a(obj2, get(obj))) {
            return obj2;
        }
        if (z) {
            inverse().remove(obj2);
        } else {
            xd8.j(!containsValue(obj2), "value already present: %s", obj2);
        }
        V vPut = this.delegate.put(obj, obj2);
        m(obj, zContainsKey, vPut, obj2);
        return vPut;
    }

    public V forcePut(K k, V v) {
        return (V) f(k, v, true);
    }

    @Override
    public ce0 inverse() {
        return this.inverse;
    }

    public final Object k(Object obj) {
        Object objA = r37.a(this.delegate.remove(obj));
        l(objA);
        return objA;
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

    public final void l(Object obj) {
        this.inverse.delegate.remove(obj);
    }

    public final void m(Object obj, boolean z, Object obj2, Object obj3) {
        if (z) {
            l(r37.a(obj2));
        }
        this.inverse.delegate.put(obj3, obj);
    }

    public AbstractBiMap<V, K> makeInverse(Map<V, K> map) {
        return new Inverse(map, this);
    }

    @Override
    public V put(K k, V v) {
        return (V) f(k, v, false);
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
            return (V) k(obj);
        }
        return null;
    }

    public void setDelegates(Map<K, V> map, Map<V, K> map2) {
        xd8.u(this.delegate == null);
        xd8.u(this.inverse == null);
        xd8.d(map.isEmpty());
        xd8.d(map2.isEmpty());
        xd8.d(map != map2);
        this.delegate = map;
        this.inverse = makeInverse(map2);
    }

    public void setInverse(AbstractBiMap<V, K> abstractBiMap) {
        this.inverse = abstractBiMap;
    }

    public AbstractBiMap(Map<K, V> map, Map<V, K> map2) {
        setDelegates(map, map2);
    }

    @Override
    public Map<K, V> f() {
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

    public AbstractBiMap(Map map, AbstractBiMap abstractBiMap) {
        this.delegate = map;
        this.inverse = abstractBiMap;
    }
}
