package com.google.common.collect;

import defpackage.dgb;

final class DescendingImmutableSortedSet<E> extends ImmutableSortedSet<E> {
    private final ImmutableSortedSet<E> forward;

    public DescendingImmutableSortedSet(ImmutableSortedSet<E> immutableSortedSet) {
        super(Ordering.from(immutableSortedSet.comparator()).reverse());
        this.forward = immutableSortedSet;
    }

    @Override
    public E ceiling(E e) {
        return this.forward.floor(e);
    }

    @Override
    public boolean contains(Object obj) {
        return this.forward.contains(obj);
    }

    @Override
    public ImmutableSortedSet<E> createDescendingSet() {
        throw new AssertionError("should never be called");
    }

    @Override
    public E floor(E e) {
        return this.forward.ceiling(e);
    }

    @Override
    public ImmutableSortedSet<E> headSetImpl(E e, boolean z) {
        return this.forward.tailSet((Object) e, z).descendingSet();
    }

    @Override
    public E higher(E e) {
        return this.forward.lower(e);
    }

    @Override
    public int indexOf(Object obj) {
        int iIndexOf = this.forward.indexOf(obj);
        return iIndexOf == -1 ? iIndexOf : (size() - 1) - iIndexOf;
    }

    @Override
    public boolean isPartialView() {
        return this.forward.isPartialView();
    }

    @Override
    public E lower(E e) {
        return this.forward.higher(e);
    }

    @Override
    public int size() {
        return this.forward.size();
    }

    @Override
    public ImmutableSortedSet<E> subSetImpl(E e, boolean z, E e2, boolean z2) {
        return this.forward.subSet((Object) e2, z2, (Object) e, z).descendingSet();
    }

    @Override
    public ImmutableSortedSet<E> tailSetImpl(E e, boolean z) {
        return this.forward.headSet((Object) e, z).descendingSet();
    }

    @Override
    public Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public dgb descendingIterator() {
        return this.forward.iterator();
    }

    @Override
    public ImmutableSortedSet<E> descendingSet() {
        return this.forward;
    }

    @Override
    public dgb iterator() {
        return this.forward.descendingIterator();
    }
}
