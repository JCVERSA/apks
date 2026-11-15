package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.SortedSet;

abstract class AbstractSortedSetMultimap<K, V> extends AbstractSetMultimap<K, V> implements x3 {
    private static final long serialVersionUID = 430848587173315748L;

    protected AbstractSortedSetMultimap(Map<K, Collection<V>> map) {
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
    Collection<V> wrapCollection(K k10, Collection<V> collection) {
        return collection instanceof NavigableSet ? new AbstractMapBasedMultimap.m(k10, (NavigableSet) collection, null) : new AbstractMapBasedMultimap.o(k10, (SortedSet) collection, null);
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
    public SortedSet<V> get(K k10) {
        return (SortedSet) super.get((Object) k10);
    }

    @Override
    public SortedSet<V> removeAll(Object obj) {
        return (SortedSet) super.removeAll(obj);
    }

    @Override
    public SortedSet<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return (SortedSet) super.replaceValues((Object) k10, (Iterable) iterable);
    }
}
