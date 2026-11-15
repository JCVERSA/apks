package com.google.common.collect;

import com.google.common.primitives.Ints;
import defpackage.k71;
import defpackage.xd8;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class AbstractMapBasedMultiset<E> extends com.google.common.collect.b implements Serializable {
    private static final long serialVersionUID = 0;
    transient k backingMap;
    transient long size;

    public class a extends c {
        public a() {
            super();
        }

        @Override
        public Object b(int i) {
            return AbstractMapBasedMultiset.this.backingMap.i(i);
        }
    }

    public class b extends c {
        public b() {
            super();
        }

        @Override
        public j.a b(int i) {
            return AbstractMapBasedMultiset.this.backingMap.g(i);
        }
    }

    public abstract class c implements Iterator {
        public int b;
        public int c = -1;
        public int d;

        public c() {
            this.b = AbstractMapBasedMultiset.this.backingMap.e();
            this.d = AbstractMapBasedMultiset.this.backingMap.d;
        }

        public final void a() {
            if (AbstractMapBasedMultiset.this.backingMap.d != this.d) {
                throw new ConcurrentModificationException();
            }
        }

        public abstract Object b(int i);

        @Override
        public boolean hasNext() {
            a();
            return this.b >= 0;
        }

        @Override
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object objB = b(this.b);
            int i = this.b;
            this.c = i;
            this.b = AbstractMapBasedMultiset.this.backingMap.s(i);
            return objB;
        }

        @Override
        public void remove() {
            a();
            k71.e(this.c != -1);
            AbstractMapBasedMultiset abstractMapBasedMultiset = AbstractMapBasedMultiset.this;
            abstractMapBasedMultiset.size -= (long) abstractMapBasedMultiset.backingMap.x(this.c);
            this.b = AbstractMapBasedMultiset.this.backingMap.t(this.b, this.c);
            this.c = -1;
            this.d = AbstractMapBasedMultiset.this.backingMap.d;
        }
    }

    public AbstractMapBasedMultiset(int i) {
        this.backingMap = newBackingMap(i);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int iH = n.h(objectInputStream);
        this.backingMap = newBackingMap(3);
        n.g(this, objectInputStream, iH);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        n.k(this, objectOutputStream);
    }

    @Override
    public final int add(E e, int i) {
        if (i == 0) {
            return count(e);
        }
        xd8.f(i > 0, "occurrences cannot be negative: %s", i);
        int iM = this.backingMap.m(e);
        if (iM == -1) {
            this.backingMap.u(e, i);
            this.size += (long) i;
            return 0;
        }
        int iK = this.backingMap.k(iM);
        long j = i;
        long j2 = ((long) iK) + j;
        xd8.h(j2 <= 2147483647L, "too many occurrences: %s", j2);
        this.backingMap.B(iM, (int) j2);
        this.size += j;
        return iK;
    }

    public void addTo(j jVar) {
        xd8.o(jVar);
        int iE = this.backingMap.e();
        while (iE >= 0) {
            jVar.add(this.backingMap.i(iE), this.backingMap.k(iE));
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
    public final int distinctElements() {
        return this.backingMap.C();
    }

    @Override
    public final Iterator<E> elementIterator() {
        return new a();
    }

    @Override
    public final Iterator<j.a> entryIterator() {
        return new b();
    }

    @Override
    public final Iterator<E> iterator() {
        return Multisets.i(this);
    }

    public abstract k newBackingMap(int i);

    @Override
    public final int remove(Object obj, int i) {
        if (i == 0) {
            return count(obj);
        }
        xd8.f(i > 0, "occurrences cannot be negative: %s", i);
        int iM = this.backingMap.m(obj);
        if (iM == -1) {
            return 0;
        }
        int iK = this.backingMap.k(iM);
        if (iK > i) {
            this.backingMap.B(iM, iK - i);
        } else {
            this.backingMap.x(iM);
            i = iK;
        }
        this.size -= (long) i;
        return iK;
    }

    @Override
    public final int setCount(E e, int i) {
        k71.b(i, "count");
        k kVar = this.backingMap;
        int iV = i == 0 ? kVar.v(e) : kVar.u(e, i);
        this.size += (long) (i - iV);
        return iV;
    }

    @Override
    public final int size() {
        return Ints.n(this.size);
    }

    @Override
    public final boolean setCount(E e, int i, int i2) {
        k71.b(i, "oldCount");
        k71.b(i2, "newCount");
        int iM = this.backingMap.m(e);
        if (iM == -1) {
            if (i != 0) {
                return false;
            }
            if (i2 > 0) {
                this.backingMap.u(e, i2);
                this.size += (long) i2;
            }
            return true;
        }
        if (this.backingMap.k(iM) != i) {
            return false;
        }
        if (i2 == 0) {
            this.backingMap.x(iM);
            this.size -= (long) i;
        } else {
            this.backingMap.B(iM, i2);
            this.size += (long) (i2 - i);
        }
        return true;
    }
}
