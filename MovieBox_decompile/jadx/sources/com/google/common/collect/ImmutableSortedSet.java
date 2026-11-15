package com.google.common.collect;

import a.RouterMap__TheRouter__1561463634;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import java.util.stream.Collector;

public abstract class ImmutableSortedSet<E> extends ImmutableSet<E> implements NavigableSet<E>, y3 {
    private static final long serialVersionUID = 912559;
    final transient Comparator<? super E> comparator;
    transient ImmutableSortedSet<E> descendingSet;

    private static class SerializedForm<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final Comparator<? super E> comparator;
        final Object[] elements;

        public SerializedForm(Comparator<? super E> comparator, Object[] objArr) {
            this.comparator = comparator;
            this.elements = objArr;
        }

        Object readResolve() {
            return new a(this.comparator).k(this.elements).e();
        }
    }

    ImmutableSortedSet(Comparator<? super E> comparator) {
        this.comparator = comparator;
    }

    @Deprecated
    public static <E> a builder() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> a builderWithExpectedSize(int i10) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <E> ImmutableSortedSet<E> construct(Comparator<? super E> comparator, int i10, E... eArr) {
        if (i10 == 0) {
            return emptySet(comparator);
        }
        n3.c(eArr, i10);
        Arrays.sort(eArr, 0, i10, comparator);
        int i11 = 1;
        for (int i12 = 1; i12 < i10; i12++) {
            RouterMap__TheRouter__1561463634 routerMap__TheRouter__1561463634 = (Object) eArr[i12];
            if (comparator.compare(routerMap__TheRouter__1561463634, (Object) eArr[i11 - 1]) != 0) {
                eArr[i11] = routerMap__TheRouter__1561463634;
                i11++;
            }
        }
        Arrays.fill(eArr, i11, i10, (Object) null);
        if (i11 < eArr.length / 2) {
            eArr = (E[]) Arrays.copyOf(eArr, i11);
        }
        return new RegularImmutableSortedSet(ImmutableList.asImmutableList(eArr, i11), comparator);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet copyOf(Comparable[] comparableArr) {
        return construct(Ordering.natural(), comparableArr.length, (Comparable[]) comparableArr.clone());
    }

    public static <E> ImmutableSortedSet<E> copyOfSorted(SortedSet<E> sortedSet) {
        Comparator comparatorA = z3.a(sortedSet);
        ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) sortedSet);
        return immutableListCopyOf.isEmpty() ? emptySet(comparatorA) : new RegularImmutableSortedSet(immutableListCopyOf, comparatorA);
    }

    static <E> RegularImmutableSortedSet<E> emptySet(Comparator<? super E> comparator) {
        return Ordering.natural().equals(comparator) ? (RegularImmutableSortedSet<E>) RegularImmutableSortedSet.NATURAL_EMPTY_SET : new RegularImmutableSortedSet<>(ImmutableList.of(), comparator);
    }

    public static <E extends Comparable<?>> a naturalOrder() {
        return new a(Ordering.natural());
    }

    public static <E> ImmutableSortedSet<E> of() {
        return RegularImmutableSortedSet.NATURAL_EMPTY_SET;
    }

    public static <E> a orderedBy(Comparator<E> comparator) {
        return new a(comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<?>> a reverseOrder() {
        return new a(Collections.reverseOrder());
    }

    @Deprecated
    public static <E> Collector<E, ?, ImmutableSet<E>> toImmutableSet() {
        throw new UnsupportedOperationException();
    }

    public static <E> Collector<E, ?, ImmutableSortedSet<E>> toImmutableSortedSet(Comparator<? super E> comparator) {
        return d2.Z(comparator);
    }

    public E ceiling(E e10) {
        return (E) g3.f(tailSet((Object) e10, true), null);
    }

    @Override
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    abstract ImmutableSortedSet<E> createDescendingSet();

    @Override
    public abstract r4 descendingIterator();

    public E first() {
        return (E) iterator().next();
    }

    public E floor(E e10) {
        return (E) Iterators.o(headSet((Object) e10, true).descendingIterator(), null);
    }

    abstract ImmutableSortedSet<E> headSetImpl(E e10, boolean z10);

    public E higher(E e10) {
        return (E) g3.f(tailSet((Object) e10, false), null);
    }

    abstract int indexOf(Object obj);

    @Override
    public abstract r4 iterator();

    public E last() {
        return (E) descendingIterator().next();
    }

    public E lower(E e10) {
        return (E) Iterators.o(headSet((Object) e10, false).descendingIterator(), null);
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

    abstract ImmutableSortedSet<E> subSetImpl(E e10, boolean z10, E e11, boolean z11);

    abstract ImmutableSortedSet<E> tailSetImpl(E e10, boolean z10);

    int unsafeCompare(Object obj, Object obj2) {
        return unsafeCompare(this.comparator, obj, obj2);
    }

    @Override
    Object writeReplace() {
        return new SerializedForm(this.comparator, toArray());
    }

    public static final class a extends ImmutableSet.a {

        private final Comparator f29646f;

        public a(Comparator comparator) {
            this.f29646f = (Comparator) com.google.common.base.m.o(comparator);
        }

        @Override
        public a a(Object obj) {
            super.a(obj);
            return this;
        }

        @Override
        public a k(Object... objArr) {
            super.k(objArr);
            return this;
        }

        @Override
        public a l(Iterable iterable) {
            super.l(iterable);
            return this;
        }

        @Override
        public a m(Iterator it) {
            super.m(it);
            return this;
        }

        @Override
        public ImmutableSortedSet e() {
            ImmutableSortedSet immutableSortedSetConstruct = ImmutableSortedSet.construct(this.f29646f, this.f29584b, this.f29583a);
            this.f29584b = immutableSortedSetConstruct.size();
            this.f29585c = true;
            return immutableSortedSetConstruct;
        }

        @Override
        public a p(ImmutableSet.a aVar) {
            super.p(aVar);
            return this;
        }

        a(Comparator comparator, int i10) {
            super(i10, false);
            this.f29646f = (Comparator) com.google.common.base.m.o(comparator);
        }
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(Ordering.natural(), iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable) {
        return new RegularImmutableSortedSet(ImmutableList.of(comparable), Ordering.natural());
    }

    static int unsafeCompare(Comparator<?> comparator, Object obj, Object obj2) {
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

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2) {
        return construct(Ordering.natural(), 2, comparable, comparable2);
    }

    @Override
    public ImmutableSortedSet<E> headSet(E e10) {
        return headSet((Object) e10, false);
    }

    @Override
    public ImmutableSortedSet<E> subSet(E e10, E e11) {
        return subSet((Object) e10, true, (Object) e11, false);
    }

    @Override
    public ImmutableSortedSet<E> tailSet(E e10) {
        return tailSet((Object) e10, true);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Collection<? extends E> collection) {
        return copyOf((Comparator) Ordering.natural(), (Collection) collection);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return construct(Ordering.natural(), 3, comparable, comparable2, comparable3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public ImmutableSortedSet<E> headSet(E e10, boolean z10) {
        return headSetImpl(com.google.common.base.m.o(e10), z10);
    }

    @Override
    public ImmutableSortedSet<E> subSet(E e10, boolean z10, E e11, boolean z11) {
        com.google.common.base.m.o(e10);
        com.google.common.base.m.o(e11);
        com.google.common.base.m.d(this.comparator.compare(e10, e11) <= 0);
        return subSetImpl(e10, z10, e11, z11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public ImmutableSortedSet<E> tailSet(E e10, boolean z10) {
        return tailSetImpl(com.google.common.base.m.o(e10), z10);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return construct(Ordering.natural(), 4, comparable, comparable2, comparable3, comparable4);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterator<? extends E> it) {
        return copyOf(Ordering.natural(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return construct(Ordering.natural(), 5, comparable, comparable2, comparable3, comparable4, comparable5);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        int length = comparableArr.length + 6;
        Comparable[] comparableArr2 = new Comparable[length];
        comparableArr2[0] = comparable;
        comparableArr2[1] = comparable2;
        comparableArr2[2] = comparable3;
        comparableArr2[3] = comparable4;
        comparableArr2[4] = comparable5;
        comparableArr2[5] = comparable6;
        System.arraycopy(comparableArr, 0, comparableArr2, 6, comparableArr.length);
        return construct(Ordering.natural(), length, comparableArr2);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        return new a(comparator).m(it).e();
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        com.google.common.base.m.o(comparator);
        if (z3.b(comparator, iterable) && (iterable instanceof ImmutableSortedSet)) {
            ImmutableSortedSet<E> immutableSortedSet = (ImmutableSortedSet) iterable;
            if (!immutableSortedSet.isPartialView()) {
                return immutableSortedSet;
            }
        }
        Object[] objArrP = g3.p(iterable);
        return construct(comparator, objArrP.length, objArrP);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Collection<? extends E> collection) {
        return copyOf((Comparator) comparator, (Iterable) collection);
    }

    @Deprecated
    public static <E> ImmutableSortedSet<E> of(E e10) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <Z> ImmutableSortedSet<Z> copyOf(Z[] zArr) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedSet<E> of(E e10, E e11) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedSet<E> of(E e10, E e11, E e12) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedSet<E> of(E e10, E e11, E e12, E e13) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedSet<E> of(E e10, E e11, E e12, E e13, E e14) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedSet<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E... eArr) {
        throw new UnsupportedOperationException();
    }
}
