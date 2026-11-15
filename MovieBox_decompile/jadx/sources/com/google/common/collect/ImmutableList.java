package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.stream.Collector;

public abstract class ImmutableList<E> extends ImmutableCollection<E> implements List<E>, RandomAccess {
    private static final s4 EMPTY_ITR = new b(RegularImmutableList.EMPTY, 0);
    private static final long serialVersionUID = -889275714;

    private static class ReverseImmutableList<E> extends ImmutableList<E> {

        private final transient ImmutableList f29586a;

        ReverseImmutableList(ImmutableList<E> immutableList) {
            this.f29586a = immutableList;
        }

        private int a(int i10) {
            return (size() - 1) - i10;
        }

        private int b(int i10) {
            return size() - i10;
        }

        @Override
        public boolean contains(Object obj) {
            return this.f29586a.contains(obj);
        }

        @Override
        public E get(int i10) {
            com.google.common.base.m.m(i10, size());
            return this.f29586a.get(a(i10));
        }

        @Override
        public int indexOf(Object obj) {
            int iLastIndexOf = this.f29586a.lastIndexOf(obj);
            if (iLastIndexOf >= 0) {
                return a(iLastIndexOf);
            }
            return -1;
        }

        @Override
        boolean isPartialView() {
            return this.f29586a.isPartialView();
        }

        @Override
        public Iterator iterator() {
            return super.iterator();
        }

        @Override
        public int lastIndexOf(Object obj) {
            int iIndexOf = this.f29586a.indexOf(obj);
            if (iIndexOf >= 0) {
                return a(iIndexOf);
            }
            return -1;
        }

        @Override
        public ListIterator listIterator() {
            return super.listIterator();
        }

        @Override
        public ImmutableList<E> reverse() {
            return this.f29586a;
        }

        @Override
        public int size() {
            return this.f29586a.size();
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }

        @Override
        public ListIterator listIterator(int i10) {
            return super.listIterator(i10);
        }

        @Override
        public ImmutableList<E> subList(int i10, int i11) {
            com.google.common.base.m.t(i10, i11, size());
            return this.f29586a.subList(b(i11), b(i10)).reverse();
        }
    }

    static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        Object readResolve() {
            return ImmutableList.copyOf(this.elements);
        }
    }

    class SubList extends ImmutableList<E> {
        final transient int length;
        final transient int offset;

        SubList(int i10, int i11) {
            this.offset = i10;
            this.length = i11;
        }

        @Override
        public E get(int i10) {
            com.google.common.base.m.m(i10, this.length);
            return ImmutableList.this.get(i10 + this.offset);
        }

        @Override
        Object[] internalArray() {
            return ImmutableList.this.internalArray();
        }

        @Override
        int internalArrayEnd() {
            return ImmutableList.this.internalArrayStart() + this.offset + this.length;
        }

        @Override
        int internalArrayStart() {
            return ImmutableList.this.internalArrayStart() + this.offset;
        }

        @Override
        boolean isPartialView() {
            return true;
        }

        @Override
        public Iterator iterator() {
            return super.iterator();
        }

        @Override
        public ListIterator listIterator() {
            return super.listIterator();
        }

        @Override
        public int size() {
            return this.length;
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }

        @Override
        public ListIterator listIterator(int i10) {
            return super.listIterator(i10);
        }

        @Override
        public ImmutableList<E> subList(int i10, int i11) {
            com.google.common.base.m.t(i10, i11, this.length);
            ImmutableList immutableList = ImmutableList.this;
            int i12 = this.offset;
            return immutableList.subList(i10 + i12, i11 + i12);
        }
    }

    public static final class a extends ImmutableCollection.a {
        public a() {
            this(4);
        }

        @Override
        public a a(Object obj) {
            super.g(obj);
            return this;
        }

        public a k(Object... objArr) {
            super.b(objArr);
            return this;
        }

        public a l(Iterable iterable) {
            super.c(iterable);
            return this;
        }

        public a m(Iterator it) {
            super.d(it);
            return this;
        }

        @Override
        public ImmutableList e() {
            this.f29585c = true;
            return ImmutableList.asImmutableList(this.f29583a, this.f29584b);
        }

        ImmutableList o(Comparator comparator) {
            this.f29585c = true;
            Arrays.sort(this.f29583a, 0, this.f29584b, comparator);
            return ImmutableList.asImmutableList(this.f29583a, this.f29584b);
        }

        a p(a aVar) {
            h(aVar.f29583a, aVar.f29584b);
            return this;
        }

        a(int i10) {
            super(i10);
        }
    }

    static class b extends com.google.common.collect.a {

        private final ImmutableList f29587c;

        b(ImmutableList immutableList, int i10) {
            super(immutableList.size(), i10);
            this.f29587c = immutableList;
        }

        @Override
        protected Object a(int i10) {
            return this.f29587c.get(i10);
        }
    }

    ImmutableList() {
    }

    static <E> ImmutableList<E> asImmutableList(Object[] objArr) {
        return asImmutableList(objArr, objArr.length);
    }

    public static <E> a builder() {
        return new a();
    }

    public static <E> a builderWithExpectedSize(int i10) {
        e2.b(i10, "expectedSize");
        return new a(i10);
    }

    private static <E> ImmutableList<E> construct(Object... objArr) {
        return asImmutableList(n3.b(objArr));
    }

    public static <E> ImmutableList<E> copyOf(Iterable<? extends E> iterable) {
        com.google.common.base.m.o(iterable);
        return iterable instanceof Collection ? copyOf((Collection) iterable) : copyOf(iterable.iterator());
    }

    public static <E> ImmutableList<E> of() {
        return (ImmutableList<E>) RegularImmutableList.EMPTY;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<? super E>> ImmutableList<E> sortedCopyOf(Iterable<? extends E> iterable) {
        Comparable[] comparableArr = (Comparable[]) g3.q(iterable, new Comparable[0]);
        n3.b(comparableArr);
        Arrays.sort(comparableArr);
        return asImmutableList(comparableArr);
    }

    public static <E> Collector<E, ?, ImmutableList<E>> toImmutableList() {
        return d2.O();
    }

    @Override
    @Deprecated
    public final void add(int i10, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final ImmutableList<E> asList() {
        return this;
    }

    @Override
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    int copyIntoArray(Object[] objArr, int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i10 + i11] = get(i11);
        }
        return i10 + size;
    }

    @Override
    public boolean equals(Object obj) {
        return Lists.d(this, obj);
    }

    @Override
    public int hashCode() {
        int size = size();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = ~(~((i10 * 31) + get(i11).hashCode()));
        }
        return i10;
    }

    @Override
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return Lists.e(this, obj);
    }

    @Override
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return Lists.g(this, obj);
    }

    @Override
    @Deprecated
    public final E remove(int i10) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> reverse() {
        return size() <= 1 ? this : new ReverseImmutableList(this);
    }

    @Override
    @Deprecated
    public final E set(int i10, E e10) {
        throw new UnsupportedOperationException();
    }

    ImmutableList<E> subListUnchecked(int i10, int i11) {
        return new SubList(i10, i11 - i10);
    }

    @Override
    Object writeReplace() {
        return new SerializedForm(toArray());
    }

    static <E> ImmutableList<E> asImmutableList(Object[] objArr, int i10) {
        return i10 == 0 ? of() : new RegularImmutableList(objArr, i10);
    }

    public static <E> ImmutableList<E> of(E e10) {
        return construct(e10);
    }

    @Override
    public r4 iterator() {
        return listIterator();
    }

    @Override
    public ImmutableList<E> subList(int i10, int i11) {
        com.google.common.base.m.t(i10, i11, size());
        int i12 = i11 - i10;
        if (i12 == size()) {
            return this;
        }
        return i12 == 0 ? of() : subListUnchecked(i10, i11);
    }

    public static <E> ImmutableList<E> of(E e10, E e11) {
        return construct(e10, e11);
    }

    @Override
    public s4 listIterator() {
        return listIterator(0);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12) {
        return construct(e10, e11, e12);
    }

    @Override
    public s4 listIterator(int i10) {
        com.google.common.base.m.r(i10, size());
        if (isEmpty()) {
            return EMPTY_ITR;
        }
        return new b(this, i10);
    }

    public static <E> ImmutableList<E> copyOf(Collection<? extends E> collection) {
        if (collection instanceof ImmutableCollection) {
            ImmutableList<E> immutableListAsList = ((ImmutableCollection) collection).asList();
            return immutableListAsList.isPartialView() ? asImmutableList(immutableListAsList.toArray()) : immutableListAsList;
        }
        return construct(collection.toArray());
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13) {
        return construct(e10, e11, e12, e13);
    }

    public static <E> ImmutableList<E> sortedCopyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        com.google.common.base.m.o(comparator);
        Object[] objArrP = g3.p(iterable);
        n3.b(objArrP);
        Arrays.sort(objArrP, comparator);
        return asImmutableList(objArrP);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14) {
        return construct(e10, e11, e12, e13, e14);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15) {
        return construct(e10, e11, e12, e13, e14, e15);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E e16) {
        return construct(e10, e11, e12, e13, e14, e15, e16);
    }

    public static <E> ImmutableList<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new a().a(next).m(it).e();
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17) {
        return construct(e10, e11, e12, e13, e14, e15, e16, e17);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18) {
        return construct(e10, e11, e12, e13, e14, e15, e16, e17, e18);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19) {
        return construct(e10, e11, e12, e13, e14, e15, e16, e17, e18, e19);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19, E e20) {
        return construct(e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20);
    }

    @SafeVarargs
    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19, E e20, E e21, E... eArr) {
        com.google.common.base.m.e(eArr.length <= 2147483635, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 12];
        objArr[0] = e10;
        objArr[1] = e11;
        objArr[2] = e12;
        objArr[3] = e13;
        objArr[4] = e14;
        objArr[5] = e15;
        objArr[6] = e16;
        objArr[7] = e17;
        objArr[8] = e18;
        objArr[9] = e19;
        objArr[10] = e20;
        objArr[11] = e21;
        System.arraycopy(eArr, 0, objArr, 12, eArr.length);
        return construct(objArr);
    }

    public static <E> ImmutableList<E> copyOf(E[] eArr) {
        if (eArr.length == 0) {
            return of();
        }
        return construct((Object[]) eArr.clone());
    }
}
