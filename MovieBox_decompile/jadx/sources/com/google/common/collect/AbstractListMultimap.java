package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

abstract class AbstractListMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements i3 {
    private static final long serialVersionUID = 6588350623831699109L;

    protected AbstractListMultimap(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override
    public Map<K, Collection<V>> asMap() {
        return (Map<K, Collection<V>>) super.asMap();
    }

    @Override
    public abstract List<V> createCollection();

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
        return Collections.unmodifiableList((List) collection);
    }

    @Override
    Collection<V> wrapCollection(K k10, Collection<V> collection) {
        return wrapList(k10, (List) collection, null);
    }

    @Override
    public List<V> createUnmodifiableEmptyCollection() {
        return Collections.emptyList();
    }

    @Override
    public List<V> get(K k10) {
        return (List) super.get((Object) k10);
    }

    @Override
    public List<V> removeAll(Object obj) {
        return (List) super.removeAll(obj);
    }

    @Override
    public List<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return (List) super.replaceValues((Object) k10, (Iterable) iterable);
    }
}
