package com.google.common.collect;

import defpackage.dgb;
import java.io.Serializable;

final class ImmutableMapKeySet<K, V> extends IndexedImmutableSet<K> {
    private final ImmutableMap<K, V> map;

    public static class KeySetSerializedForm<K> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<K, ?> map;

        public KeySetSerializedForm(ImmutableMap<K, ?> immutableMap) {
            this.map = immutableMap;
        }

        public Object readResolve() {
            return this.map.keySet();
        }
    }

    public ImmutableMapKeySet(ImmutableMap<K, V> immutableMap) {
        this.map = immutableMap;
    }

    @Override
    public boolean contains(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override
    public K get(int i) {
        return this.map.entrySet().asList().get(i).getKey();
    }

    @Override
    public boolean isPartialView() {
        return true;
    }

    @Override
    public int size() {
        return this.map.size();
    }

    @Override
    public Object writeReplace() {
        return new KeySetSerializedForm(this.map);
    }

    @Override
    public dgb iterator() {
        return this.map.keyIterator();
    }
}
