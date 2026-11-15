package com.yandex.mobile.ads.impl;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public abstract class kk0<E> extends ik0<E> implements List<E>, RandomAccess {
    private static final j82<Object> c = new b(0, lo1.g);
    public static final int d = 0;

    public static final class a<E> extends ik0.a<E> {
        public a() {
            this(0);
        }

        public final kk0<E> a() {
            this.c = true;
            return kk0.b(this.b, this.a);
        }

        public final a b(List list) {
            a(list);
            return this;
        }

        public a(int i) {
        }
    }

    public static class b<E> extends j<E> {
        private final kk0<E> d;

        public b(int i, kk0 kk0Var) {
            super(kk0Var.size(), i);
            this.d = kk0Var;
        }

        @Override
        public final E a(int i) {
            return this.d.get(i);
        }
    }

    public static class c implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] b;

        public c(Object[] objArr) {
            this.b = objArr;
        }

        public Object readResolve() {
            return kk0.b(this.b);
        }
    }

    public class d extends kk0<E> {
        final transient int e;
        final transient int f;

        public d(int i, int i2) {
            this.e = i;
            this.f = i2;
        }

        @Override
        public final kk0<E> subList(int i, int i2) {
            vj1.a(i, i2, this.f);
            kk0 kk0Var = kk0.this;
            int i3 = this.e;
            return kk0Var.subList(i + i3, i2 + i3);
        }

        @Override
        public final Object[] c() {
            return kk0.this.c();
        }

        @Override
        public final int d() {
            return kk0.this.e() + this.e + this.f;
        }

        @Override
        public final int e() {
            return kk0.this.e() + this.e;
        }

        @Override
        public final boolean f() {
            return true;
        }

        @Override
        public final E get(int i) {
            vj1.a(i, this.f);
            return kk0.this.get(i + this.e);
        }

        @Override
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override
        public final int size() {
            return this.f;
        }

        @Override
        public final ListIterator listIterator(int i) {
            return listIterator(i);
        }
    }

    private static <E> kk0<E> a(Object... objArr) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (objArr[i] == null) {
                throw new NullPointerException(oe.a("at index ", i));
            }
        }
        return b(objArr.length, objArr);
    }

    public static <E> a<E> g() {
        return new a<>();
    }

    public static <E> kk0<E> h() {
        return (kk0<E>) lo1.g;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
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
    public final kk0<E> b() {
        return this;
    }

    @Override
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i = 0; i < size; i++) {
                        if (zd1.a(get(i), list.get(i))) {
                        }
                    }
                    return true;
                }
                Iterator<E> it = iterator();
                Iterator<E> it2 = list.iterator();
                while (it.hasNext()) {
                    if (it2.hasNext() && zd1.a(it.next(), it2.next())) {
                    }
                }
                return true ^ it2.hasNext();
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~(get(i2).hashCode() + (i * 31)));
        }
        return i;
    }

    @Override
    public final int indexOf(Object obj) {
        if (obj != null) {
            int size = size();
            for (int i = 0; i < size; i++) {
                if (obj.equals(get(i))) {
                    return i;
                }
            }
        }
        return -1;
    }

    @Override
    public final i82<E> iterator() {
        return listIterator(0);
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (obj != null) {
            for (int size = size() - 1; size >= 0; size--) {
                if (obj.equals(get(size))) {
                    return size;
                }
            }
        }
        return -1;
    }

    @Override
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Object writeReplace() {
        return new c(toArray());
    }

    public static kk0 b(int i, Object[] objArr) {
        return i == 0 ? lo1.g : new lo1(i, objArr);
    }

    @Override
    public Iterator iterator() {
        return listIterator(0);
    }

    public static <E> kk0<E> b(E[] eArr) {
        if (eArr.length == 0) {
            return (kk0<E>) lo1.g;
        }
        return a((Object[]) eArr.clone());
    }

    @Override
    public int a(int i, Object[] objArr) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    public static <E> kk0<E> a(Collection<? extends E> collection) {
        if (collection instanceof ik0) {
            kk0<E> kk0VarB = ((ik0) collection).b();
            if (!kk0VarB.f()) {
                return kk0VarB;
            }
            Object[] array = kk0VarB.toArray();
            return b(array.length, array);
        }
        return a(collection.toArray());
    }

    @Override
    public final j82<E> listIterator(int i) {
        vj1.b(i, size());
        if (isEmpty()) {
            return (j82<E>) c;
        }
        return new b(i, this);
    }

    public static kk0 a(Long l, Long l2, Long l3, Long l4, Long l5) {
        return a(l, l2, l3, l4, l5);
    }

    public static <E> kk0<E> a(E e) {
        return a(e);
    }

    public static <E> kk0<E> a(E e, E e2) {
        return a(e, e2);
    }

    @Override
    public kk0<E> subList(int i, int i2) {
        vj1.a(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        if (i3 == 0) {
            return (kk0<E>) lo1.g;
        }
        return new d(i, i3);
    }
}
