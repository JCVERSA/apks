package com.bumptech.glide.repackaged.com.google.common.collect;

import java.util.Map;

abstract class ImmutableMapEntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {

    public static final class RegularEntrySet<K, V> extends ImmutableMapEntrySet<K, V> {
        private final transient Map.Entry<K, V>[] entries;
        private final transient ImmutableMap<K, V> map;

        public RegularEntrySet(ImmutableMap<K, V> immutableMap, Map.Entry<K, V>[] entryArr) {
            this.map = immutableMap;
            this.entries = entryArr;
        }

        @Override
        public ImmutableList<Map.Entry<K, V>> createAsList() {
            return new RegularImmutableAsList(this, this.entries);
        }

        @Override
        public ImmutableMap<K, V> map() {
            return this.map;
        }

        @Override
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            return asList().iterator();
        }
    }

    @Override
    public boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        V v = map().get(entry.getKey());
        return v != null && v.equals(entry.getValue());
    }

    @Override
    public int hashCode() {
        return map().hashCode();
    }

    @Override
    public boolean isHashCodeFast() {
        return map().isHashCodeFast();
    }

    @Override
    public boolean isPartialView() {
        return map().isPartialView();
    }

    public abstract ImmutableMap<K, V> map();

    @Override
    public int size() {
        return map().size();
    }
}
