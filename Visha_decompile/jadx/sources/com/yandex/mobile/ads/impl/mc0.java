package com.yandex.mobile.ads.impl;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

public abstract class mc0<K, V> extends nc0 implements Map<K, V> {
    public final boolean a(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        return ((wx1.a) entrySet()).equals(((Map) obj).entrySet());
    }

    public abstract Map<K, V> b();

    public final int c() {
        return wx1.a(entrySet());
    }

    @Override
    public final void clear() {
        b().clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        return b().containsKey(obj);
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        return b().entrySet();
    }

    @Override
    public V get(Object obj) {
        return b().get(obj);
    }

    @Override
    public boolean isEmpty() {
        return b().isEmpty();
    }

    @Override
    public Set<K> keySet() {
        return b().keySet();
    }

    @Override
    public final V put(K k, V v) {
        return b().put(k, v);
    }

    @Override
    public final void putAll(Map<? extends K, ? extends V> map) {
        b().putAll(map);
    }

    @Override
    public final V remove(Object obj) {
        return b().remove(obj);
    }

    @Override
    public int size() {
        return b().size();
    }

    @Override
    public final Collection<V> values() {
        return b().values();
    }
}
