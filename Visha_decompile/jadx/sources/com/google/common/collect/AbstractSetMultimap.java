package com.google.common.collect;

import defpackage.ue9;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

abstract class AbstractSetMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements ue9 {
    private static final long serialVersionUID = 7431625294878419160L;

    public AbstractSetMultimap(Map<K, Collection<V>> map) {
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
    public boolean put(K k, V v) {
        return super.put(k, v);
    }

    @Override
    public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableSet((Set) collection);
    }

    @Override
    public Collection<V> wrapCollection(K k, Collection<V> collection) {
        return new AbstractMapBasedMultimap.n(k, (Set) collection);
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
    public Set<V> get(K k) {
        return (Set) super.get((Object) k);
    }

    @Override
    public Set<V> removeAll(Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override
    public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((Object) k, (Iterable) iterable);
    }
}
