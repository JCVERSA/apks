package com.google.common.collect;

import defpackage.ue9;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.SortedSet;

abstract class AbstractSortedSetMultimap<K, V> extends AbstractSetMultimap<K, V> implements ue9 {
    private static final long serialVersionUID = 430848587173315748L;

    public AbstractSortedSetMultimap(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override
    public abstract SortedSet<V> createCollection();

    public abstract Comparator valueComparator();

    @Override
    public Collection<V> values() {
        return super.values();
    }

    @Override
    public Collection<V> wrapCollection(K k, Collection<V> collection) {
        return collection instanceof NavigableSet ? new AbstractMapBasedMultimap.m(k, (NavigableSet) collection, null) : new AbstractMapBasedMultimap.o(k, (SortedSet) collection, null);
    }

    @Override
    public <E> SortedSet<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return collection instanceof NavigableSet ? Sets.l((NavigableSet) collection) : Collections.unmodifiableSortedSet((SortedSet) collection);
    }

    @Override
    public SortedSet<V> createUnmodifiableEmptyCollection() {
        return (SortedSet<V>) unmodifiableCollectionSubclass((Collection) createCollection());
    }

    @Override
    public SortedSet<V> get(K k) {
        return (SortedSet) super.get((Object) k);
    }

    @Override
    public SortedSet<V> removeAll(Object obj) {
        return (SortedSet) super.removeAll(obj);
    }

    @Override
    public SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return (SortedSet) super.replaceValues((Object) k, (Iterable) iterable);
    }
}
