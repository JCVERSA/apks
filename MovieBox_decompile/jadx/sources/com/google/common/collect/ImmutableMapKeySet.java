package com.google.common.collect;

import java.io.Serializable;

final class ImmutableMapKeySet<K, V> extends IndexedImmutableSet<K> {
    private final ImmutableMap<K, V> map;

    private static class KeySetSerializedForm<K> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<K, ?> map;

        KeySetSerializedForm(ImmutableMap<K, ?> immutableMap) {
            this.map = immutableMap;
        }

        Object readResolve() {
            return this.map.keySet();
        }
    }

    ImmutableMapKeySet(ImmutableMap<K, V> immutableMap) {
        this.map = immutableMap;
    }

    @Override
    public boolean contains(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override
    K get(int i10) {
        return this.map.entrySet().asList().get(i10).getKey();
    }

    @Override
    boolean isPartialView() {
        return true;
    }

    @Override
    public int size() {
        return this.map.size();
    }

    @Override
    Object writeReplace() {
        return new KeySetSerializedForm(this.map);
    }

    @Override
    public r4 iterator() {
        return this.map.keyIterator();
    }
}
