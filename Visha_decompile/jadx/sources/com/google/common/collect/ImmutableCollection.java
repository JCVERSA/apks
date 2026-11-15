package com.google.common.collect;

import defpackage.dgb;
import defpackage.k71;
import defpackage.vb7;
import defpackage.xd8;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.Spliterators;

public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] EMPTY_ARRAY = new Object[0];
    static final int SPLITERATOR_CHARACTERISTICS = 1296;
    private static final long serialVersionUID = 912559;

    public static abstract class a extends b {
        public Object[] a;
        public int b;
        public boolean c;

        public a(int i) {
            k71.b(i, "initialCapacity");
            this.a = new Object[i];
            this.b = 0;
        }

        @Override
        public b b(Object... objArr) {
            h(objArr, objArr.length);
            return this;
        }

        @Override
        public b c(Iterable iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                i(collection.size());
                if (collection instanceof ImmutableCollection) {
                    this.b = ((ImmutableCollection) collection).copyIntoArray(this.a, this.b);
                    return this;
                }
            }
            super.c(iterable);
            return this;
        }

        public a g(Object obj) {
            xd8.o(obj);
            i(1);
            Object[] objArr = this.a;
            int i = this.b;
            this.b = i + 1;
            objArr[i] = obj;
            return this;
        }

        public final void h(Object[] objArr, int i) {
            vb7.c(objArr, i);
            i(i);
            System.arraycopy(objArr, 0, this.a, this.b, i);
            this.b += i;
        }

        public final void i(int i) {
            Object[] objArr = this.a;
            int iF = b.f(objArr.length, this.b + i);
            if (iF > objArr.length || this.c) {
                this.a = Arrays.copyOf(this.a, iF);
                this.c = false;
            }
        }
    }

    public static abstract class b {
        public static int f(int i, int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("cannot store more than MAX_VALUE elements");
            }
            if (i2 <= i) {
                return i;
            }
            int iHighestOneBit = i + (i >> 1) + 1;
            if (iHighestOneBit < i2) {
                iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }

        public abstract b a(Object obj);

        public b b(Object... objArr) {
            for (Object obj : objArr) {
                a(obj);
            }
            return this;
        }

        public b c(Iterable iterable) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        public b d(Iterator it) {
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        public abstract ImmutableCollection e();
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
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

    public ImmutableList<E> asList() {
        return isEmpty() ? ImmutableList.of() : ImmutableList.asImmutableList(toArray());
    }

    @Override
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public abstract boolean contains(Object obj);

    public int copyIntoArray(Object[] objArr, int i) {
        dgb it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    public Object[] internalArray() {
        return null;
    }

    public int internalArrayEnd() {
        throw new UnsupportedOperationException();
    }

    public int internalArrayStart() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean isPartialView();

    @Override
    public abstract dgb iterator();

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
    public Spliterator<E> spliterator() {
        return Spliterators.spliterator(this, SPLITERATOR_CHARACTERISTICS);
    }

    @Override
    public final Object[] toArray() {
        return toArray(EMPTY_ARRAY);
    }

    public Object writeReplace() {
        return new ImmutableList.SerializedForm(toArray());
    }

    @Override
    public final <T> T[] toArray(T[] tArr) {
        xd8.o(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] objArrInternalArray = internalArray();
            if (objArrInternalArray != null) {
                return (T[]) l.a(objArrInternalArray, internalArrayStart(), internalArrayEnd(), tArr);
            }
            tArr = (T[]) vb7.e(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        copyIntoArray(tArr, 0);
        return tArr;
    }
}
