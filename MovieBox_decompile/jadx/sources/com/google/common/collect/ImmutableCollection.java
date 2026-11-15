package com.google.common.collect;

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

    static abstract class a extends b {

        Object[] f29583a;

        int f29584b;

        boolean f29585c;

        a(int i10) {
            e2.b(i10, "initialCapacity");
            this.f29583a = new Object[i10];
            this.f29584b = 0;
        }

        private void i(int i10) {
            Object[] objArr = this.f29583a;
            int iF = b.f(objArr.length, this.f29584b + i10);
            if (iF > objArr.length || this.f29585c) {
                this.f29583a = Arrays.copyOf(this.f29583a, iF);
                this.f29585c = false;
            }
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
                    this.f29584b = ((ImmutableCollection) collection).copyIntoArray(this.f29583a, this.f29584b);
                    return this;
                }
            }
            super.c(iterable);
            return this;
        }

        public a g(Object obj) {
            com.google.common.base.m.o(obj);
            i(1);
            Object[] objArr = this.f29583a;
            int i10 = this.f29584b;
            this.f29584b = i10 + 1;
            objArr[i10] = obj;
            return this;
        }

        final void h(Object[] objArr, int i10) {
            n3.c(objArr, i10);
            i(i10);
            System.arraycopy(objArr, 0, this.f29583a, this.f29584b, i10);
            this.f29584b += i10;
        }
    }

    public static abstract class b {
        b() {
        }

        static int f(int i10, int i11) {
            if (i11 < 0) {
                throw new IllegalArgumentException("cannot store more than MAX_VALUE elements");
            }
            if (i11 <= i10) {
                return i10;
            }
            int iHighestOneBit = i10 + (i10 >> 1) + 1;
            if (iHighestOneBit < i11) {
                iHighestOneBit = Integer.highestOneBit(i11 - 1) << 1;
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

    ImmutableCollection() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override
    @Deprecated
    public final boolean add(E e10) {
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

    int copyIntoArray(Object[] objArr, int i10) {
        r4 it = iterator();
        while (it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
        return i10;
    }

    Object[] internalArray() {
        return null;
    }

    int internalArrayEnd() {
        throw new UnsupportedOperationException();
    }

    int internalArrayStart() {
        throw new UnsupportedOperationException();
    }

    abstract boolean isPartialView();

    @Override
    public abstract r4 iterator();

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

    Object writeReplace() {
        return new ImmutableList.SerializedForm(toArray());
    }

    @Override
    public final <T> T[] toArray(T[] tArr) {
        com.google.common.base.m.o(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] objArrInternalArray = internalArray();
            if (objArrInternalArray != null) {
                return (T[]) r3.a(objArrInternalArray, internalArrayStart(), internalArrayEnd(), tArr);
            }
            tArr = (T[]) n3.e(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        copyIntoArray(tArr, 0);
        return tArr;
    }
}
