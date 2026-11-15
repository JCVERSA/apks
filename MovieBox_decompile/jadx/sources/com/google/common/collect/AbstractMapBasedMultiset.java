package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class AbstractMapBasedMultiset<E> extends d implements Serializable {
    private static final long serialVersionUID = 0;
    transient o3 backingMap;
    transient long size;

    class a extends c {
        a() {
            super();
        }

        @Override
        Object b(int i10) {
            return AbstractMapBasedMultiset.this.backingMap.i(i10);
        }
    }

    class b extends c {
        b() {
            super();
        }

        @Override
        public l3.a b(int i10) {
            return AbstractMapBasedMultiset.this.backingMap.g(i10);
        }
    }

    abstract class c implements Iterator {

        int f29483a;

        int f29484b = -1;

        int f29485c;

        c() {
            this.f29483a = AbstractMapBasedMultiset.this.backingMap.e();
            this.f29485c = AbstractMapBasedMultiset.this.backingMap.f30010d;
        }

        private void a() {
            if (AbstractMapBasedMultiset.this.backingMap.f30010d != this.f29485c) {
                throw new ConcurrentModificationException();
            }
        }

        abstract Object b(int i10);

        @Override
        public boolean hasNext() {
            a();
            return this.f29483a >= 0;
        }

        @Override
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object objB = b(this.f29483a);
            int i10 = this.f29483a;
            this.f29484b = i10;
            this.f29483a = AbstractMapBasedMultiset.this.backingMap.s(i10);
            return objB;
        }

        @Override
        public void remove() {
            a();
            e2.e(this.f29484b != -1);
            AbstractMapBasedMultiset abstractMapBasedMultiset = AbstractMapBasedMultiset.this;
            abstractMapBasedMultiset.size -= (long) abstractMapBasedMultiset.backingMap.x(this.f29484b);
            this.f29483a = AbstractMapBasedMultiset.this.backingMap.t(this.f29483a, this.f29484b);
            this.f29484b = -1;
            this.f29485c = AbstractMapBasedMultiset.this.backingMap.f30010d;
        }
    }

    AbstractMapBasedMultiset(int i10) {
        this.backingMap = newBackingMap(i10);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int iH = w3.h(objectInputStream);
        this.backingMap = newBackingMap(3);
        w3.g(this, objectInputStream, iH);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        w3.k(this, objectOutputStream);
    }

    @Override
    public final int add(E e10, int i10) {
        if (i10 == 0) {
            return count(e10);
        }
        com.google.common.base.m.f(i10 > 0, "occurrences cannot be negative: %s", i10);
        int iM = this.backingMap.m(e10);
        if (iM == -1) {
            this.backingMap.u(e10, i10);
            this.size += (long) i10;
            return 0;
        }
        int iK = this.backingMap.k(iM);
        long j10 = i10;
        long j11 = ((long) iK) + j10;
        com.google.common.base.m.h(j11 <= 2147483647L, "too many occurrences: %s", j11);
        this.backingMap.B(iM, (int) j11);
        this.size += j10;
        return iK;
    }

    void addTo(l3 l3Var) {
        com.google.common.base.m.o(l3Var);
        int iE = this.backingMap.e();
        while (iE >= 0) {
            l3Var.add(this.backingMap.i(iE), this.backingMap.k(iE));
            iE = this.backingMap.s(iE);
        }
    }

    @Override
    public final void clear() {
        this.backingMap.a();
        this.size = 0L;
    }

    @Override
    public final int count(Object obj) {
        return this.backingMap.f(obj);
    }

    @Override
    final int distinctElements() {
        return this.backingMap.C();
    }

    @Override
    final Iterator<E> elementIterator() {
        return new a();
    }

    @Override
    final Iterator<l3.a> entryIterator() {
        return new b();
    }

    @Override
    public final Iterator<E> iterator() {
        return Multisets.i(this);
    }

    abstract o3 newBackingMap(int i10);

    @Override
    public final int remove(Object obj, int i10) {
        if (i10 == 0) {
            return count(obj);
        }
        com.google.common.base.m.f(i10 > 0, "occurrences cannot be negative: %s", i10);
        int iM = this.backingMap.m(obj);
        if (iM == -1) {
            return 0;
        }
        int iK = this.backingMap.k(iM);
        if (iK > i10) {
            this.backingMap.B(iM, iK - i10);
        } else {
            this.backingMap.x(iM);
            i10 = iK;
        }
        this.size -= (long) i10;
        return iK;
    }

    @Override
    public final int setCount(E e10, int i10) {
        e2.b(i10, "count");
        o3 o3Var = this.backingMap;
        int iV = i10 == 0 ? o3Var.v(e10) : o3Var.u(e10, i10);
        this.size += (long) (i10 - iV);
        return iV;
    }

    @Override
    public final int size() {
        return Ints.n(this.size);
    }

    @Override
    public final boolean setCount(E e10, int i10, int i11) {
        e2.b(i10, "oldCount");
        e2.b(i11, "newCount");
        int iM = this.backingMap.m(e10);
        if (iM == -1) {
            if (i10 != 0) {
                return false;
            }
            if (i11 > 0) {
                this.backingMap.u(e10, i11);
                this.size += (long) i11;
            }
            return true;
        }
        if (this.backingMap.k(iM) != i10) {
            return false;
        }
        if (i11 == 0) {
            this.backingMap.x(iM);
            this.size -= (long) i10;
        } else {
            this.backingMap.B(iM, i11);
            this.size += (long) (i11 - i10);
        }
        return true;
    }
}
