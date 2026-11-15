package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

final class RegularImmutableSortedSet<E> extends ImmutableSortedSet<E> {
    static final RegularImmutableSortedSet<Comparable> NATURAL_EMPTY_SET = new RegularImmutableSortedSet<>(ImmutableList.of(), Ordering.natural());
    final transient ImmutableList<E> elements;

    RegularImmutableSortedSet(ImmutableList<E> immutableList, Comparator<? super E> comparator) {
        super(comparator);
        this.elements = immutableList;
    }

    private int a(Object obj) {
        return Collections.binarySearch(this.elements, obj, unsafeComparator());
    }

    @Override
    public ImmutableList<E> asList() {
        return this.elements;
    }

    @Override
    public E ceiling(E e10) {
        int iTailIndex = tailIndex(e10, true);
        if (iTailIndex == size()) {
            return null;
        }
        return this.elements.get(iTailIndex);
    }

    @Override
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return a(obj) >= 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof l3) {
            collection = ((l3) collection).elementSet();
        }
        if (!z3.b(comparator(), collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        r4 it = iterator();
        Iterator<?> it2 = collection.iterator();
        if (!it.hasNext()) {
            return false;
        }
        Object next = it2.next();
        Object next2 = it.next();
        while (true) {
            try {
                int iUnsafeCompare = unsafeCompare(next2, next);
                if (iUnsafeCompare < 0) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    next2 = it.next();
                } else if (iUnsafeCompare == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    next = it2.next();
                } else if (iUnsafeCompare > 0) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
    }

    @Override
    int copyIntoArray(Object[] objArr, int i10) {
        return this.elements.copyIntoArray(objArr, i10);
    }

    @Override
    ImmutableSortedSet<E> createDescendingSet() {
        Comparator comparatorReverseOrder = Collections.reverseOrder(this.comparator);
        return isEmpty() ? ImmutableSortedSet.emptySet(comparatorReverseOrder) : new RegularImmutableSortedSet(this.elements.reverse(), comparatorReverseOrder);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (!z3.b(this.comparator, set)) {
            return containsAll(set);
        }
        Iterator<E> it = set.iterator();
        try {
            r4 it2 = iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                E next2 = it.next();
                if (next2 == null || unsafeCompare(next, next2) != 0) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override
    public E first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.elements.get(0);
    }

    @Override
    public E floor(E e10) {
        int iHeadIndex = headIndex(e10, true) - 1;
        if (iHeadIndex == -1) {
            return null;
        }
        return this.elements.get(iHeadIndex);
    }

    RegularImmutableSortedSet<E> getSubSet(int i10, int i11) {
        if (i10 == 0 && i11 == size()) {
            return this;
        }
        return i10 < i11 ? new RegularImmutableSortedSet<>(this.elements.subList(i10, i11), this.comparator) : ImmutableSortedSet.emptySet(this.comparator);
    }

    int headIndex(E e10, boolean z10) {
        int iBinarySearch = Collections.binarySearch(this.elements, com.google.common.base.m.o(e10), comparator());
        if (iBinarySearch >= 0) {
            return z10 ? iBinarySearch + 1 : iBinarySearch;
        }
        return ~iBinarySearch;
    }

    @Override
    ImmutableSortedSet<E> headSetImpl(E e10, boolean z10) {
        return getSubSet(0, headIndex(e10, z10));
    }

    @Override
    public E higher(E e10) {
        int iTailIndex = tailIndex(e10, false);
        if (iTailIndex == size()) {
            return null;
        }
        return this.elements.get(iTailIndex);
    }

    @Override
    int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        try {
            int iBinarySearch = Collections.binarySearch(this.elements, obj, unsafeComparator());
            if (iBinarySearch >= 0) {
                return iBinarySearch;
            }
            return -1;
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    @Override
    Object[] internalArray() {
        return this.elements.internalArray();
    }

    @Override
    int internalArrayEnd() {
        return this.elements.internalArrayEnd();
    }

    @Override
    int internalArrayStart() {
        return this.elements.internalArrayStart();
    }

    @Override
    boolean isPartialView() {
        return this.elements.isPartialView();
    }

    @Override
    public E last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.elements.get(size() - 1);
    }

    @Override
    public E lower(E e10) {
        int iHeadIndex = headIndex(e10, false) - 1;
        if (iHeadIndex == -1) {
            return null;
        }
        return this.elements.get(iHeadIndex);
    }

    @Override
    public int size() {
        return this.elements.size();
    }

    @Override
    ImmutableSortedSet<E> subSetImpl(E e10, boolean z10, E e11, boolean z11) {
        return tailSetImpl(e10, z10).headSetImpl(e11, z11);
    }

    int tailIndex(E e10, boolean z10) {
        int iBinarySearch = Collections.binarySearch(this.elements, com.google.common.base.m.o(e10), comparator());
        if (iBinarySearch >= 0) {
            return z10 ? iBinarySearch : iBinarySearch + 1;
        }
        return ~iBinarySearch;
    }

    @Override
    ImmutableSortedSet<E> tailSetImpl(E e10, boolean z10) {
        return getSubSet(tailIndex(e10, z10), size());
    }

    Comparator<Object> unsafeComparator() {
        return this.comparator;
    }

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public r4 descendingIterator() {
        return this.elements.reverse().iterator();
    }

    @Override
    public r4 iterator() {
        return this.elements.iterator();
    }
}
