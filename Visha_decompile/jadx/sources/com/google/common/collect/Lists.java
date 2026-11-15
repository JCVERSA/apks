package com.google.common.collect;

import com.google.common.primitives.Ints;
import defpackage.k71;
import defpackage.kc7;
import defpackage.o74;
import defpackage.r15;
import defpackage.xd8;
import defpackage.z6b;
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

    public static class OnePlusArrayList<E> extends AbstractList<E> implements Serializable, RandomAccess {
        private static final long serialVersionUID = 0;
        final E first;
        final E[] rest;

        public OnePlusArrayList(E e, E[] eArr) {
            this.first = e;
            this.rest = (E[]) ((Object[]) xd8.o(eArr));
        }

        @Override
        public E get(int i) {
            xd8.m(i, size());
            return i == 0 ? this.first : this.rest[i - 1];
        }

        @Override
        public int size() {
            return r15.h(this.rest.length, 1);
        }
    }

    public static class TransformingRandomAccessList<F, T> extends AbstractList<T> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final List<F> fromList;
        final o74 function;

        public class a extends z6b {
            public a(ListIterator listIterator) {
                super(listIterator);
            }

            @Override
            public Object a(Object obj) {
                return TransformingRandomAccessList.this.function.apply(obj);
            }
        }

        public TransformingRandomAccessList(List<F> list, o74 o74Var) {
            this.fromList = (List) xd8.o(list);
            this.function = (o74) xd8.o(o74Var);
        }

        @Override
        public T get(int i) {
            return (T) this.function.apply(this.fromList.get(i));
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
        public ListIterator<T> listIterator(int i) {
            return new a(this.fromList.listIterator(i));
        }

        @Override
        public T remove(int i) {
            return (T) this.function.apply(this.fromList.remove(i));
        }

        @Override
        public void removeRange(int i, int i2) {
            this.fromList.subList(i, i2).clear();
        }

        @Override
        public int size() {
            return this.fromList.size();
        }
    }

    public static class TransformingSequentialList<F, T> extends AbstractSequentialList<T> implements Serializable {
        private static final long serialVersionUID = 0;
        final List<F> fromList;
        final o74 function;

        public class a extends z6b {
            public a(ListIterator listIterator) {
                super(listIterator);
            }

            @Override
            public Object a(Object obj) {
                return TransformingSequentialList.this.function.apply(obj);
            }
        }

        public TransformingSequentialList(List<F> list, o74 o74Var) {
            this.fromList = (List) xd8.o(list);
            this.function = (o74) xd8.o(o74Var);
        }

        @Override
        public boolean isEmpty() {
            return this.fromList.isEmpty();
        }

        @Override
        public ListIterator<T> listIterator(int i) {
            return new a(this.fromList.listIterator(i));
        }

        @Override
        public void removeRange(int i, int i2) {
            this.fromList.subList(i, i2).clear();
        }

        @Override
        public int size() {
            return this.fromList.size();
        }
    }

    public static List a(Object obj, Object[] objArr) {
        return new OnePlusArrayList(obj, objArr);
    }

    public static List b(Iterable iterable) {
        return (List) iterable;
    }

    public static int c(int i) {
        k71.b(i, "arraySize");
        return Ints.n(((long) i) + 5 + ((long) (i / 10)));
    }

    public static boolean d(List list, Object obj) {
        if (obj == xd8.o(list)) {
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
        for (int i = 0; i < size; i++) {
            if (!kc7.a(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static int e(List list, Object obj) {
        if (list instanceof RandomAccess) {
            return f(list, obj);
        }
        ListIterator listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (kc7.a(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    public static int f(List list, Object obj) {
        int size = list.size();
        int i = 0;
        if (obj == null) {
            while (i < size) {
                if (list.get(i) == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        while (i < size) {
            if (obj.equals(list.get(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int g(List list, Object obj) {
        if (list instanceof RandomAccess) {
            return h(list, obj);
        }
        ListIterator listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (kc7.a(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    public static int h(List list, Object obj) {
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
        xd8.o(iterable);
        return iterable instanceof Collection ? new ArrayList((Collection) iterable) : k(iterable.iterator());
    }

    public static ArrayList k(Iterator it) {
        ArrayList arrayListI = i();
        Iterators.a(arrayListI, it);
        return arrayListI;
    }

    public static ArrayList l(Object... objArr) {
        xd8.o(objArr);
        ArrayList arrayList = new ArrayList(c(objArr.length));
        Collections.addAll(arrayList, objArr);
        return arrayList;
    }

    public static ArrayList m(int i) {
        k71.b(i, "initialArraySize");
        return new ArrayList(i);
    }

    public static ArrayList n(int i) {
        return new ArrayList(c(i));
    }

    public static List o(List list, o74 o74Var) {
        return list instanceof RandomAccess ? new TransformingRandomAccessList(list, o74Var) : new TransformingSequentialList(list, o74Var);
    }
}
