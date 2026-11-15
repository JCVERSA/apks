package com.google.common.collect;

final class DescendingImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {

    private final transient ImmutableSortedMultiset f29552a;

    DescendingImmutableSortedMultiset(ImmutableSortedMultiset<E> immutableSortedMultiset) {
        this.f29552a = immutableSortedMultiset;
    }

    @Override
    public int count(Object obj) {
        return this.f29552a.count(obj);
    }

    @Override
    public l3.a firstEntry() {
        return this.f29552a.lastEntry();
    }

    @Override
    l3.a getEntry(int i10) {
        return this.f29552a.entrySet().asList().reverse().get(i10);
    }

    @Override
    boolean isPartialView() {
        return this.f29552a.isPartialView();
    }

    @Override
    public l3.a lastEntry() {
        return this.f29552a.firstEntry();
    }

    @Override
    public int size() {
        return this.f29552a.size();
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public ImmutableSortedMultiset<E> descendingMultiset() {
        return this.f29552a;
    }

    @Override
    public ImmutableSortedMultiset<E> headMultiset(E e10, BoundType boundType) {
        return this.f29552a.tailMultiset((Object) e10, boundType).descendingMultiset();
    }

    @Override
    public ImmutableSortedMultiset<E> tailMultiset(E e10, BoundType boundType) {
        return this.f29552a.headMultiset((Object) e10, boundType).descendingMultiset();
    }

    @Override
    public ImmutableSortedSet<E> elementSet() {
        return this.f29552a.elementSet().descendingSet();
    }
}
