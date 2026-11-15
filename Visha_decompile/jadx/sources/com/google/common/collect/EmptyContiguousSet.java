package com.google.common.collect;

import defpackage.dgb;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import java.util.Set;
import okhttp3.HttpUrl;

final class EmptyContiguousSet<C extends Comparable> extends ContiguousSet<C> {

    public static final class SerializedForm<C extends Comparable> implements Serializable {
        private static final long serialVersionUID = 0;
        private final DiscreteDomain domain;

        private Object readResolve() {
            return new EmptyContiguousSet(this.domain);
        }

        public SerializedForm(DiscreteDomain discreteDomain) {
            this.domain = discreteDomain;
        }
    }

    public EmptyContiguousSet(DiscreteDomain discreteDomain) {
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
    public ImmutableSortedSet<C> createDescendingSet() {
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
    public ContiguousSet<C> headSetImpl(C c, boolean z) {
        return this;
    }

    @Override
    public int indexOf(Object obj) {
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
    public boolean isHashCodeFast() {
        return true;
    }

    @Override
    public boolean isPartialView() {
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
    public ContiguousSet<C> subSetImpl(C c, boolean z, C c2, boolean z2) {
        return this;
    }

    @Override
    public ContiguousSet<C> tailSetImpl(C c, boolean z) {
        return this;
    }

    @Override
    public String toString() {
        return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }

    @Override
    public Object writeReplace() {
        return new SerializedForm(this.domain);
    }

    @Override
    public dgb descendingIterator() {
        return Iterators.h();
    }

    @Override
    public C first() {
        throw new NoSuchElementException();
    }

    @Override
    public dgb iterator() {
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
