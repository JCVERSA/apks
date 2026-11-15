package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

abstract class AbstractSetMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements x3 {
    private static final long serialVersionUID = 7431625294878419160L;

    protected AbstractSetMultimap(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override
    public Map<K, Collection<V>> asMap() {
        return (Map<K, Collection<V>>) super.asMap();
    }

    @Override
    public abstract Set<V> createCollection();

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public boolean put(K k10, V v10) {
        return super.put(k10, v10);
    }

    @Override
    <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableSet((Set) collection);
    }

    @Override
    Collection<V> wrapCollection(K k10, Collection<V> collection) {
        return new AbstractMapBasedMultimap.n(k10, (Set) collection);
    }

    @Override
    public Set<V> createUnmodifiableEmptyCollection() {
        return Collections.emptySet();
    }

    @Override
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override
    public Set<V> get(K k10) {
        return (Set) super.get((Object) k10);
    }

    @Override
    public Set<V> removeAll(Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override
    public Set<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((Object) k10, (Iterable) iterable);
    }
}
