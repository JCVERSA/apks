package com.yandex.mobile.ads.impl;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class ik0<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] b = new Object[0];

    public static abstract class b<E> {
    }

    public int a(int i, Object[] objArr) {
        i82<E> it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    @Override
    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    public kk0<E> b() {
        if (isEmpty()) {
            int i = kk0.d;
            return (kk0<E>) lo1.g;
        }
        Object[] array = toArray(b);
        int i2 = kk0.d;
        return kk0.b(array.length, array);
    }

    public Object[] c() {
        return null;
    }

    @Override
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public abstract boolean contains(Object obj);

    public int d() {
        throw new UnsupportedOperationException();
    }

    public int e() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean f();

    @Override
    public abstract i82<E> iterator();

    @Override
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object[] toArray() {
        return toArray(b);
    }

    public Object writeReplace() {
        return new kk0.c(toArray(b));
    }

    @Override
    public final <T> T[] toArray(T[] tArr) {
        tArr.getClass();
        int size = size();
        if (tArr.length < size) {
            Object[] objArrC = c();
            if (objArrC != null) {
                return (T[]) qh1.a(objArrC, e(), d(), tArr);
            }
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        a(0, tArr);
        return tArr;
    }

    public static abstract class a<E> extends b<E> {
        Object[] a;
        int b;
        boolean c;

        public a() {
            pq.a(4, "initialCapacity");
            this.a = new Object[4];
            this.b = 0;
        }

        public final void a(Object obj) {
            obj.getClass();
            int i = this.b;
            int i2 = i + 1;
            Object[] objArr = this.a;
            if (objArr.length < i2) {
                int length = objArr.length;
                if (i2 < 0) {
                    throw new AssertionError("cannot store more than MAX_VALUE elements");
                }
                int iHighestOneBit = length + (length >> 1) + 1;
                if (iHighestOneBit < i2) {
                    iHighestOneBit = Integer.highestOneBit(i) << 1;
                }
                if (iHighestOneBit < 0) {
                    iHighestOneBit = Integer.MAX_VALUE;
                }
                this.a = Arrays.copyOf(objArr, iHighestOneBit);
                this.c = false;
            } else if (this.c) {
                this.a = (Object[]) objArr.clone();
                this.c = false;
            }
            Object[] objArr2 = this.a;
            int i3 = this.b;
            this.b = i3 + 1;
            objArr2[i3] = obj;
        }

        public void b(Object obj) {
            a(obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final b a(List list) {
            if (list instanceof Collection) {
                int size = list.size() + this.b;
                Object[] objArr = this.a;
                if (objArr.length < size) {
                    int length = objArr.length;
                    if (size >= 0) {
                        int iHighestOneBit = length + (length >> 1) + 1;
                        if (iHighestOneBit < size) {
                            iHighestOneBit = Integer.highestOneBit(size - 1) << 1;
                        }
                        if (iHighestOneBit < 0) {
                            iHighestOneBit = Integer.MAX_VALUE;
                        }
                        this.a = Arrays.copyOf(objArr, iHighestOneBit);
                        this.c = false;
                    } else {
                        throw new AssertionError("cannot store more than MAX_VALUE elements");
                    }
                } else if (this.c) {
                    this.a = (Object[]) objArr.clone();
                    this.c = false;
                }
                if (list instanceof ik0) {
                    this.b = ((ik0) list).a(this.b, this.a);
                    return this;
                }
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((kk0.a) this).a(it.next());
            }
            return this;
        }
    }
}
