package com.google.common.collect;

final class DescendingImmutableSortedSet<E> extends ImmutableSortedSet<E> {
    private final ImmutableSortedSet<E> forward;

    DescendingImmutableSortedSet(ImmutableSortedSet<E> immutableSortedSet) {
        super(Ordering.from(immutableSortedSet.comparator()).reverse());
        this.forward = immutableSortedSet;
    }

    @Override
    public E ceiling(E e10) {
        return this.forward.floor(e10);
    }

    @Override
    public boolean contains(Object obj) {
        return this.forward.contains(obj);
    }

    @Override
    ImmutableSortedSet<E> createDescendingSet() {
        throw new AssertionError("should never be called");
    }

    @Override
    public E floor(E e10) {
        return this.forward.ceiling(e10);
    }

    @Override
    ImmutableSortedSet<E> headSetImpl(E e10, boolean z10) {
        return this.forward.tailSet((Object) e10, z10).descendingSet();
    }

    @Override
    public E higher(E e10) {
        return this.forward.lower(e10);
    }

    @Override
    int indexOf(Object obj) {
        int iIndexOf = this.forward.indexOf(obj);
        return iIndexOf == -1 ? iIndexOf : (size() - 1) - iIndexOf;
    }

    @Override
    boolean isPartialView() {
        return this.forward.isPartialView();
    }

    @Override
    public E lower(E e10) {
        return this.forward.higher(e10);
    }

    @Override
    public int size() {
        return this.forward.size();
    }

    @Override
    ImmutableSortedSet<E> subSetImpl(E e10, boolean z10, E e11, boolean z11) {
        return this.forward.subSet((Object) e11, z11, (Object) e10, z10).descendingSet();
    }

    @Override
    ImmutableSortedSet<E> tailSetImpl(E e10, boolean z10) {
        return this.forward.headSet((Object) e10, z10).descendingSet();
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public r4 descendingIterator() {
        return this.forward.iterator();
    }

    @Override
    public ImmutableSortedSet<E> descendingSet() {
        return this.forward;
    }

    @Override
    public r4 iterator() {
        return this.forward.descendingIterator();
    }
}
