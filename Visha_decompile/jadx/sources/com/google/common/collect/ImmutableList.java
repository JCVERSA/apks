package com.google.common.collect;

import defpackage.a3;
import defpackage.dgb;
import defpackage.fgb;
import defpackage.k71;
import defpackage.v55;
import defpackage.vb7;
import defpackage.xd8;
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
    private static final fgb EMPTY_ITR = new b(RegularImmutableList.EMPTY, 0);
    private static final long serialVersionUID = -889275714;

    public static class ReverseImmutableList<E> extends ImmutableList<E> {
        public final transient ImmutableList b;

        public ReverseImmutableList(ImmutableList<E> immutableList) {
            this.b = immutableList;
        }

        public final int b(int i) {
            return (size() - 1) - i;
        }

        public final int c(int i) {
            return size() - i;
        }

        @Override
        public boolean contains(Object obj) {
            return this.b.contains(obj);
        }

        @Override
        public E get(int i) {
            xd8.m(i, size());
            return this.b.get(b(i));
        }

        @Override
        public int indexOf(Object obj) {
            int iLastIndexOf = this.b.lastIndexOf(obj);
            if (iLastIndexOf >= 0) {
                return b(iLastIndexOf);
            }
            return -1;
        }

        @Override
        public boolean isPartialView() {
            return this.b.isPartialView();
        }

        @Override
        public Iterator iterator() {
            return super.iterator();
        }

        @Override
        public int lastIndexOf(Object obj) {
            int iIndexOf = this.b.indexOf(obj);
            if (iIndexOf >= 0) {
                return b(iIndexOf);
            }
            return -1;
        }

        @Override
        public ListIterator listIterator() {
            return super.listIterator();
        }

        @Override
        public ImmutableList<E> reverse() {
            return this.b;
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
        public ListIterator listIterator(int i) {
            return super.listIterator(i);
        }

        @Override
        public ImmutableList<E> subList(int i, int i2) {
            xd8.t(i, i2, size());
            return this.b.subList(c(i2), c(i)).reverse();
        }
    }

    public static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        public SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        public Object readResolve() {
            return ImmutableList.copyOf(this.elements);
        }
    }

    public class SubList extends ImmutableList<E> {
        final transient int length;
        final transient int offset;

        public SubList(int i, int i2) {
            this.offset = i;
            this.length = i2;
        }

        @Override
        public E get(int i) {
            xd8.m(i, this.length);
            return ImmutableList.this.get(i + this.offset);
        }

        @Override
        public Object[] internalArray() {
            return ImmutableList.this.internalArray();
        }

        @Override
        public int internalArrayEnd() {
            return ImmutableList.this.internalArrayStart() + this.offset + this.length;
        }

        @Override
        public int internalArrayStart() {
            return ImmutableList.this.internalArrayStart() + this.offset;
        }

        @Override
        public boolean isPartialView() {
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
        public Object writeReplace() {
            return super.writeReplace();
        }

        @Override
        public ListIterator listIterator(int i) {
            return super.listIterator(i);
        }

        @Override
        public ImmutableList<E> subList(int i, int i2) {
            xd8.t(i, i2, this.length);
            ImmutableList immutableList = ImmutableList.this;
            int i3 = this.offset;
            return immutableList.subList(i + i3, i2 + i3);
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
            this.c = true;
            return ImmutableList.asImmutableList(this.a, this.b);
        }

        public ImmutableList o(Comparator comparator) {
            this.c = true;
            Arrays.sort(this.a, 0, this.b, comparator);
            return ImmutableList.asImmutableList(this.a, this.b);
        }

        public a p(a aVar) {
            h(aVar.a, aVar.b);
            return this;
        }

        public a(int i) {
            super(i);
        }
    }

    public static class b extends a3 {
        public final ImmutableList d;

        public b(ImmutableList immutableList, int i) {
            super(immutableList.size(), i);
            this.d = immutableList;
        }

        @Override
        public Object a(int i) {
            return this.d.get(i);
        }
    }

    public static <E> ImmutableList<E> asImmutableList(Object[] objArr) {
        return asImmutableList(objArr, objArr.length);
    }

    public static <E> a builder() {
        return new a();
    }

    public static <E> a builderWithExpectedSize(int i) {
        k71.b(i, "expectedSize");
        return new a(i);
    }

    private static <E> ImmutableList<E> construct(Object... objArr) {
        return asImmutableList(vb7.b(objArr));
    }

    public static <E> ImmutableList<E> copyOf(Iterable<? extends E> iterable) {
        xd8.o(iterable);
        return iterable instanceof Collection ? copyOf((Collection) iterable) : copyOf(iterable.iterator());
    }

    public static <E> ImmutableList<E> of() {
        return (ImmutableList<E>) RegularImmutableList.EMPTY;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<? super E>> ImmutableList<E> sortedCopyOf(Iterable<? extends E> iterable) {
        Comparable[] comparableArr = (Comparable[]) v55.r(iterable, new Comparable[0]);
        vb7.b(comparableArr);
        Arrays.sort(comparableArr);
        return asImmutableList(comparableArr);
    }

    public static <E> Collector<E, ?, ImmutableList<E>> toImmutableList() {
        return f.O();
    }

    @Override
    @Deprecated
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
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
    public int copyIntoArray(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override
    public boolean equals(Object obj) {
        return Lists.d(this, obj);
    }

    @Override
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~((i * 31) + get(i2).hashCode()));
        }
        return i;
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
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> reverse() {
        return size() <= 1 ? this : new ReverseImmutableList(this);
    }

    @Override
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> subListUnchecked(int i, int i2) {
        return new SubList(i, i2 - i);
    }

    @Override
    public Object writeReplace() {
        return new SerializedForm(toArray());
    }

    public static <E> ImmutableList<E> asImmutableList(Object[] objArr, int i) {
        return i == 0 ? of() : new RegularImmutableList(objArr, i);
    }

    public static <E> ImmutableList<E> of(E e) {
        return construct(e);
    }

    @Override
    public dgb iterator() {
        return listIterator();
    }

    @Override
    public ImmutableList<E> subList(int i, int i2) {
        xd8.t(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        return i3 == 0 ? of() : subListUnchecked(i, i2);
    }

    public static <E> ImmutableList<E> of(E e, E e2) {
        return construct(e, e2);
    }

    @Override
    public fgb listIterator() {
        return listIterator(0);
    }

    public static <E> ImmutableList<E> of(E e, E e2, E e3) {
        return construct(e, e2, e3);
    }

    @Override
    public fgb listIterator(int i) {
        xd8.r(i, size());
        if (isEmpty()) {
            return EMPTY_ITR;
        }
        return new b(this, i);
    }

    public static <E> ImmutableList<E> copyOf(Collection<? extends E> collection) {
        if (collection instanceof ImmutableCollection) {
            ImmutableList<E> immutableListAsList = ((ImmutableCollection) collection).asList();
            return immutableListAsList.isPartialView() ? asImmutableList(immutableListAsList.toArray()) : immutableListAsList;
        }
        return construct(collection.toArray());
    }

    public static <E> ImmutableList<E> of(E e, E e2, E e3, E e4) {
        return construct(e, e2, e3, e4);
    }

    public static <E> ImmutableList<E> sortedCopyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        xd8.o(comparator);
        Object[] objArrQ = v55.q(iterable);
        vb7.b(objArrQ);
        Arrays.sort(objArrQ, comparator);
        return asImmutableList(objArrQ);
    }

    public static <E> ImmutableList<E> of(E e, E e2, E e3, E e4, E e5) {
        return construct(e, e2, e3, e4, e5);
    }

    public static <E> ImmutableList<E> of(E e, E e2, E e3, E e4, E e5, E e6) {
        return construct(e, e2, e3, e4, e5, e6);
    }

    public static <E> ImmutableList<E> of(E e, E e2, E e3, E e4, E e5, E e6, E e7) {
        return construct(e, e2, e3, e4, e5, e6, e7);
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

    public static <E> ImmutableList<E> of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8) {
        return construct(e, e2, e3, e4, e5, e6, e7, e8);
    }

    public static <E> ImmutableList<E> of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9) {
        return construct(e, e2, e3, e4, e5, e6, e7, e8, e9);
    }

    public static <E> ImmutableList<E> of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10) {
        return construct(e, e2, e3, e4, e5, e6, e7, e8, e9, e10);
    }

    public static <E> ImmutableList<E> of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11) {
        return construct(e, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11);
    }

    @SafeVarargs
    public static <E> ImmutableList<E> of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11, E e12, E... eArr) {
        xd8.e(eArr.length <= 2147483635, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 12];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        objArr[6] = e7;
        objArr[7] = e8;
        objArr[8] = e9;
        objArr[9] = e10;
        objArr[10] = e11;
        objArr[11] = e12;
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
