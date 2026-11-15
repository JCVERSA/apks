package com.google.common.collect;

import java.util.Collection;
import java.util.Comparator;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

abstract class AbstractSortedKeySortedSetMultimap<K, V> extends AbstractSortedSetMultimap<K, V> {
    AbstractSortedKeySortedSetMultimap(SortedMap<K, Collection<V>> sortedMap) {
        super(sortedMap);
    }

    @Override
    Set<K> createKeySet() {
        return createMaybeNavigableKeySet();
    }

    @Override
    public abstract Comparator valueComparator();

    @Override
    public SortedMap<K, Collection<V>> asMap() {
        return (SortedMap) super.asMap();
    }

    @Override
    public SortedMap<K, Collection<V>> backingMap() {
        return (SortedMap) super.backingMap();
    }

    @Override
    public SortedSet<K> keySet() {
        return (SortedSet) super.keySet();
    }
}
