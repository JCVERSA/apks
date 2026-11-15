package com.cloud.tmc.kernel.datastructure.immutable;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class ImmutableSet<E> extends ImmutableCollection<E> implements Immutable<Set<E>> {
    public ImmutableSet(Collection<E> collection) {
        super(collection);
    }

    @Override
    public boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override
    public boolean containsAll(Collection collection) {
        return super.containsAll(collection);
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public Iterator iterator() {
        return super.iterator();
    }

    @Override
    public int size() {
        return super.size();
    }

    @Override
    public Object[] toArray() {
        return super.toArray();
    }

    @Override
    public Set<E> mutable() {
        return new HashSet(this.immutableCollection);
    }
}
