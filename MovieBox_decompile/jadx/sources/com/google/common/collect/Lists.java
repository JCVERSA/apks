package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public abstract class Lists {

    private static class OnePlusArrayList<E> extends AbstractList<E> implements Serializable, RandomAccess {
        private static final long serialVersionUID = 0;
        final E first;
        final E[] rest;

        OnePlusArrayList(E e10, E[] eArr) {
            this.first = e10;
            this.rest = (E[]) ((Object[]) com.google.common.base.m.o(eArr));
        }

        @Override
        public E get(int i10) {
            com.google.common.base.m.m(i10, size());
            return i10 == 0 ? this.first : this.rest[i10 - 1];
        }

        @Override
        public int size() {
            return com.google.common.math.d.h(this.rest.length, 1);
        }
    }

    private static class TransformingRandomAccessList<F, T> extends AbstractList<T> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final List<F> fromList;
        final com.google.common.base.f function;

        class a extends p4 {
            a(ListIterator listIterator) {
                super(listIterator);
            }

            @Override
            Object a(Object obj) {
                return TransformingRandomAccessList.this.function.apply(obj);
            }
        }

        TransformingRandomAccessList(List<F> list, com.google.common.base.f fVar) {
            this.fromList = (List) com.google.common.base.m.o(list);
            this.function = (com.google.common.base.f) com.google.common.base.m.o(fVar);
        }

        @Override
        public T get(int i10) {
            return (T) this.function.apply(this.fromList.get(i10));
        }

        @Override
        public boolean isEmpty() {
            return this.fromList.isEmpty();
        }

        @Override
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override
        public ListIterator<T> listIterator(int i10) {
            return new a(this.fromList.listIterator(i10));
        }

        @Override
        public T remove(int i10) {
            return (T) this.function.apply(this.fromList.remove(i10));
        }

        @Override
        protected void removeRange(int i10, int i11) {
            this.fromList.subList(i10, i11).clear();
        }

        @Override
        public int size() {
            return this.fromList.size();
        }
    }

    private static class TransformingSequentialList<F, T> extends AbstractSequentialList<T> implements Serializable {
        private static final long serialVersionUID = 0;
        final List<F> fromList;
        final com.google.common.base.f function;

        class a extends p4 {
            a(ListIterator listIterator) {
                super(listIterator);
            }

            @Override
            Object a(Object obj) {
                return TransformingSequentialList.this.function.apply(obj);
            }
        }

        TransformingSequentialList(List<F> list, com.google.common.base.f fVar) {
            this.fromList = (List) com.google.common.base.m.o(list);
            this.function = (com.google.common.base.f) com.google.common.base.m.o(fVar);
        }

        @Override
        public boolean isEmpty() {
            return this.fromList.isEmpty();
        }

        @Override
        public ListIterator<T> listIterator(int i10) {
            return new a(this.fromList.listIterator(i10));
        }

        @Override
        protected void removeRange(int i10, int i11) {
            this.fromList.subList(i10, i11).clear();
        }

        @Override
        public int size() {
            return this.fromList.size();
        }
    }

    public static List a(Object obj, Object[] objArr) {
        return new OnePlusArrayList(obj, objArr);
    }

    static List b(Iterable iterable) {
        return (List) iterable;
    }

    static int c(int i10) {
        e2.b(i10, "arraySize");
        return Ints.n(((long) i10) + 5 + ((long) (i10 / 10)));
    }

    static boolean d(List list, Object obj) {
        if (obj == com.google.common.base.m.o(list)) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if (!(list instanceof RandomAccess) || !(list2 instanceof RandomAccess)) {
            return Iterators.g(list.iterator(), list2.iterator());
        }
        for (int i10 = 0; i10 < size; i10++) {
            if (!com.google.common.base.j.a(list.get(i10), list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    static int e(List list, Object obj) {
        if (list instanceof RandomAccess) {
            return f(list, obj);
        }
        ListIterator listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (com.google.common.base.j.a(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    private static int f(List list, Object obj) {
        int size = list.size();
        int i10 = 0;
        if (obj == null) {
            while (i10 < size) {
                if (list.get(i10) == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        while (i10 < size) {
            if (obj.equals(list.get(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    static int g(List list, Object obj) {
        if (list instanceof RandomAccess) {
            return h(list, obj);
        }
        ListIterator listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (com.google.common.base.j.a(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    private static int h(List list, Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    public static ArrayList i() {
        return new ArrayList();
    }

    public static ArrayList j(Iterable iterable) {
        com.google.common.base.m.o(iterable);
        return iterable instanceof Collection ? new ArrayList((Collection) iterable) : k(iterable.iterator());
    }

    public static ArrayList k(Iterator it) {
        ArrayList arrayListI = i();
        Iterators.a(arrayListI, it);
        return arrayListI;
    }

    public static ArrayList l(Object... objArr) {
        com.google.common.base.m.o(objArr);
        ArrayList arrayList = new ArrayList(c(objArr.length));
        Collections.addAll(arrayList, objArr);
        return arrayList;
    }

    public static ArrayList m(int i10) {
        e2.b(i10, "initialArraySize");
        return new ArrayList(i10);
    }

    public static ArrayList n(int i10) {
        return new ArrayList(c(i10));
    }

    public static List o(List list, com.google.common.base.f fVar) {
        return list instanceof RandomAccess ? new TransformingRandomAccessList(list, fVar) : new TransformingSequentialList(list, fVar);
    }
}
