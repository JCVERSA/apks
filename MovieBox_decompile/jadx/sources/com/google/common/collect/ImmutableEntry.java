package com.google.common.collect;

import java.io.Serializable;

class ImmutableEntry<K, V> extends b implements Serializable {
    private static final long serialVersionUID = 0;
    final K key;
    final V value;

    ImmutableEntry(K k10, V v10) {
        this.key = k10;
        this.value = v10;
    }

    @Override
    public final K getKey() {
        return this.key;
    }

    @Override
    public final V getValue() {
        return this.value;
    }

    @Override
    public final V setValue(V v10) {
        throw new UnsupportedOperationException();
    }
}
