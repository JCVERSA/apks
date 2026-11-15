package com.bumptech.glide.repackaged.com.google.common.collect;

import com.bumptech.glide.repackaged.com.google.common.base.Preconditions;
import java.util.Comparator;
import java.util.NavigableSet;

public abstract class ImmutableSortedSet<E> extends ImmutableSortedSetFauxverideShim<E> implements SortedIterable<E>, NavigableSet<E> {
    private static final RegularImmutableSortedSet<Comparable> NATURAL_EMPTY_SET;
    private static final Comparator<Comparable> NATURAL_ORDER;
    final transient Comparator<? super E> comparator;
    transient ImmutableSortedSet<E> descendingSet;

    static {
        Ordering orderingNatural = Ordering.natural();
        NATURAL_ORDER = orderingNatural;
        NATURAL_EMPTY_SET = new RegularImmutableSortedSet<>(ImmutableList.of(), orderingNatural);
    }

    public ImmutableSortedSet(Comparator<? super E> comparator) {
        this.comparator = comparator;
    }

    public static <E> RegularImmutableSortedSet<E> emptySet(Comparator<? super E> comparator) {
        return NATURAL_ORDER.equals(comparator) ? (RegularImmutableSortedSet<E>) NATURAL_EMPTY_SET : new RegularImmutableSortedSet<>(ImmutableList.of(), comparator);
    }

    public E ceiling(E e) {
        return (E) Iterables.getFirst(tailSet((Object) e, true), null);
    }

    @Override
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    public ImmutableSortedSet<E> createDescendingSet() {
        return new DescendingImmutableSortedSet(this);
    }

    @Override
    public abstract UnmodifiableIterator<E> descendingIterator();

    @Override
    public E first() {
        return iterator().next();
    }

    public E floor(E e) {
        return (E) Iterators.getNext(headSet((Object) e, true).descendingIterator(), null);
    }

    public abstract ImmutableSortedSet<E> headSetImpl(E e, boolean z);

    public E higher(E e) {
        return (E) Iterables.getFirst(tailSet((Object) e, false), null);
    }

    public abstract int indexOf(Object obj);

    @Override
    public abstract UnmodifiableIterator<E> iterator();

    @Override
    public E last() {
        return descendingIterator().next();
    }

    public E lower(E e) {
        return (E) Iterators.getNext(headSet((Object) e, false).descendingIterator(), null);
    }

    @Override
    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    public abstract ImmutableSortedSet<E> subSetImpl(E e, boolean z, E e2, boolean z2);

    public abstract ImmutableSortedSet<E> tailSetImpl(E e, boolean z);

    public int unsafeCompare(Object obj, Object obj2) {
        return unsafeCompare(this.comparator, obj, obj2);
    }

    public static int unsafeCompare(Comparator<?> comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2);
    }

    @Override
    public ImmutableSortedSet<E> descendingSet() {
        ImmutableSortedSet<E> immutableSortedSet = this.descendingSet;
        if (immutableSortedSet != null) {
            return immutableSortedSet;
        }
        ImmutableSortedSet<E> immutableSortedSetCreateDescendingSet = createDescendingSet();
        this.descendingSet = immutableSortedSetCreateDescendingSet;
        immutableSortedSetCreateDescendingSet.descendingSet = this;
        return immutableSortedSetCreateDescendingSet;
    }

    @Override
    public ImmutableSortedSet<E> headSet(E e) {
        return headSet((Object) e, false);
    }

    @Override
    public ImmutableSortedSet<E> subSet(E e, E e2) {
        return subSet((Object) e, true, (Object) e2, false);
    }

    @Override
    public ImmutableSortedSet<E> tailSet(E e) {
        return tailSet((Object) e, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public ImmutableSortedSet<E> headSet(E e, boolean z) {
        return headSetImpl(Preconditions.checkNotNull(e), z);
    }

    @Override
    public ImmutableSortedSet<E> subSet(E e, boolean z, E e2, boolean z2) {
        Preconditions.checkNotNull(e);
        Preconditions.checkNotNull(e2);
        Preconditions.checkArgument(this.comparator.compare(e, e2) <= 0);
        return subSetImpl(e, z, e2, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public ImmutableSortedSet<E> tailSet(E e, boolean z) {
        return tailSetImpl(Preconditions.checkNotNull(e), z);
    }
}
