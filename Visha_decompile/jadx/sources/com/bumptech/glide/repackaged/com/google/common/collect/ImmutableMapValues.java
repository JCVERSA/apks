package com.bumptech.glide.repackaged.com.google.common.collect;

import java.util.Map;

final class ImmutableMapValues<K, V> extends ImmutableCollection<V> {
    private final ImmutableMap<K, V> map;

    public ImmutableMapValues(ImmutableMap<K, V> immutableMap) {
        this.map = immutableMap;
    }

    @Override
    public boolean contains(Object obj) {
        return obj != null && Iterators.contains(iterator(), obj);
    }

    @Override
    public ImmutableList<V> createAsList() {
        final ImmutableList<Map.Entry<K, V>> immutableListAsList = this.map.entrySet().asList();
        return new ImmutableAsList<V>() {
            @Override
            public ImmutableCollection<V> delegateCollection() {
                return ImmutableMapValues.this;
            }

            @Override
            public V get(int i) {
                return (V) ((Map.Entry) immutableListAsList.get(i)).getValue();
            }
        };
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
    public UnmodifiableIterator<V> iterator() {
        return new UnmodifiableIterator<V>() {
            final UnmodifiableIterator<Map.Entry<K, V>> entryItr;

            {
                this.entryItr = ImmutableMapValues.this.map.entrySet().iterator();
            }

            @Override
            public boolean hasNext() {
                return this.entryItr.hasNext();
            }

            @Override
            public V next() {
                return this.entryItr.next().getValue();
            }
        };
    }
}
