package com.yandex.mobile.ads.impl;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

final class gu0<K, V> extends AbstractCollection<V> {
    final Map<K, V> b;

    public gu0(Map<K, V> map) {
        this.b = (Map) vj1.a(map);
    }

    @Override
    public final void clear() {
        this.b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.b.containsValue(obj);
    }

    @Override
    public final boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override
    public final Iterator<V> iterator() {
        return new du0(this.b.entrySet().iterator());
    }

    @Override
    public final boolean remove(Object obj) {
        try {
            return super.remove(obj);
        } catch (UnsupportedOperationException unused) {
            for (Map.Entry<K, V> entry : this.b.entrySet()) {
                if (zd1.a(obj, entry.getValue())) {
                    this.b.remove(entry.getKey());
                    return true;
                }
            }
            return false;
        }
    }

    @Override
    public final boolean removeAll(Collection<?> collection) {
        try {
            collection.getClass();
            return super.removeAll(collection);
        } catch (UnsupportedOperationException unused) {
            HashSet hashSet = new HashSet();
            for (Map.Entry<K, V> entry : this.b.entrySet()) {
                if (collection.contains(entry.getValue())) {
                    hashSet.add(entry.getKey());
                }
            }
            return this.b.keySet().removeAll(hashSet);
        }
    }

    @Override
    public final boolean retainAll(Collection<?> collection) {
        try {
            collection.getClass();
            return super.retainAll(collection);
        } catch (UnsupportedOperationException unused) {
            HashSet hashSet = new HashSet();
            for (Map.Entry<K, V> entry : this.b.entrySet()) {
                if (collection.contains(entry.getValue())) {
                    hashSet.add(entry.getKey());
                }
            }
            return this.b.keySet().retainAll(hashSet);
        }
    }

    @Override
    public final int size() {
        return this.b.size();
    }
}
