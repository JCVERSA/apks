package com.google.common.collect;

import defpackage.fm5;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

abstract class AbstractListMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements fm5 {
    private static final long serialVersionUID = 6588350623831699109L;

    public AbstractListMultimap(Map<K, Collection<V>> map) {
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
    public boolean put(K k, V v) {
        return super.put(k, v);
    }

    @Override
    public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override
    public Collection<V> wrapCollection(K k, Collection<V> collection) {
        return wrapList(k, (List) collection, null);
    }

    @Override
    public List<V> createUnmodifiableEmptyCollection() {
        return Collections.emptyList();
    }

    @Override
    public List<V> get(K k) {
        return (List) super.get((Object) k);
    }

    @Override
    public List<V> removeAll(Object obj) {
        return (List) super.removeAll(obj);
    }

    @Override
    public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return (List) super.replaceValues((Object) k, (Iterable) iterable);
    }
}
