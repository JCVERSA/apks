package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import java.util.Set;

final class EmptyContiguousSet<C extends Comparable> extends ContiguousSet<C> {

    private static final class SerializedForm<C extends Comparable> implements Serializable {
        private static final long serialVersionUID = 0;
        private final DiscreteDomain domain;

        private Object readResolve() {
            return new EmptyContiguousSet(this.domain);
        }

        private SerializedForm(DiscreteDomain discreteDomain) {
            this.domain = discreteDomain;
        }
    }

    EmptyContiguousSet(DiscreteDomain discreteDomain) {
        super(discreteDomain);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override
    public ImmutableList<C> asList() {
        return ImmutableList.of();
    }

    @Override
    public boolean contains(Object obj) {
        return false;
    }

    @Override
    ImmutableSortedSet<C> createDescendingSet() {
        return ImmutableSortedSet.emptySet(Ordering.natural().reverse());
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Set) {
            return ((Set) obj).isEmpty();
        }
        return false;
    }

    @Override
    public int hashCode() {
        return 0;
    }

    @Override
    public ContiguousSet<C> headSetImpl(C c10, boolean z10) {
        return this;
    }

    @Override
    int indexOf(Object obj) {
        return -1;
    }

    @Override
    public ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet) {
        return this;
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    boolean isHashCodeFast() {
        return true;
    }

    @Override
    boolean isPartialView() {
        return false;
    }

    @Override
    public Range<C> range() {
        throw new NoSuchElementException();
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public ContiguousSet<C> subSetImpl(C c10, boolean z10, C c11, boolean z11) {
        return this;
    }

    @Override
    public ContiguousSet<C> tailSetImpl(C c10, boolean z10) {
        return this;
    }

    @Override
    public String toString() {
        return "[]";
    }

    @Override
    Object writeReplace() {
        return new SerializedForm(this.domain);
    }

    @Override
    public r4 descendingIterator() {
        return Iterators.h();
    }

    @Override
    public C first() {
        throw new NoSuchElementException();
    }

    @Override
    public r4 iterator() {
        return Iterators.h();
    }

    @Override
    public C last() {
        throw new NoSuchElementException();
    }

    @Override
    public Range<C> range(BoundType boundType, BoundType boundType2) {
        throw new NoSuchElementException();
    }
}
