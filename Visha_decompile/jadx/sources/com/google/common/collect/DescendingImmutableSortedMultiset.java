package com.google.common.collect;

final class DescendingImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {
    public final transient ImmutableSortedMultiset b;

    public DescendingImmutableSortedMultiset(ImmutableSortedMultiset<E> immutableSortedMultiset) {
        this.b = immutableSortedMultiset;
    }

    @Override
    public int count(Object obj) {
        return this.b.count(obj);
    }

    @Override
    public j.a firstEntry() {
        return this.b.lastEntry();
    }

    @Override
    public j.a getEntry(int i) {
        return this.b.entrySet().asList().reverse().get(i);
    }

    @Override
    public boolean isPartialView() {
        return this.b.isPartialView();
    }

    @Override
    public j.a lastEntry() {
        return this.b.firstEntry();
    }

    @Override
    public int size() {
        return this.b.size();
    }

    @Override
    public Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public ImmutableSortedMultiset<E> descendingMultiset() {
        return this.b;
    }

    @Override
    public ImmutableSortedMultiset<E> headMultiset(E e, BoundType boundType) {
        return this.b.tailMultiset((Object) e, boundType).descendingMultiset();
    }

    @Override
    public ImmutableSortedMultiset<E> tailMultiset(E e, BoundType boundType) {
        return this.b.headMultiset((Object) e, boundType).descendingMultiset();
    }

    @Override
    public ImmutableSortedSet<E> elementSet() {
        return this.b.elementSet().descendingSet();
    }
}
