package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class cfb implements Collection, qe5 {
    public final short[] b;

    public static final class a implements Iterator, qe5 {
        public final short[] b;
        public int c;

        public a(short[] sArr) {
            y45.j(sArr, "array");
            this.b = sArr;
        }

        public short b() {
            int i = this.c;
            short[] sArr = this.b;
            if (i >= sArr.length) {
                throw new NoSuchElementException(String.valueOf(this.c));
            }
            this.c = i + 1;
            return bfb.b(sArr[i]);
        }

        @Override
        public boolean hasNext() {
            return this.c < this.b.length;
        }

        @Override
        public Object next() {
            return bfb.a(b());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public cfb(short[] sArr) {
        this.b = sArr;
    }

    public static final cfb b(short[] sArr) {
        return new cfb(sArr);
    }

    public static short[] c(int i) {
        return f(new short[i]);
    }

    public static short[] f(short[] sArr) {
        y45.j(sArr, "storage");
        return sArr;
    }

    public static boolean l(short[] sArr, short s) {
        return hi.Q(sArr, s);
    }

    public static boolean m(short[] sArr, Collection collection) {
        y45.j(collection, "elements");
        Collection collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        for (Object obj : collection2) {
            if (!(obj instanceof bfb) || !hi.Q(sArr, ((bfb) obj).g())) {
                return false;
            }
        }
        return true;
    }

    public static boolean n(short[] sArr, Object obj) {
        return (obj instanceof cfb) && y45.e(sArr, ((cfb) obj).w());
    }

    public static final short o(short[] sArr, int i) {
        return bfb.b(sArr[i]);
    }

    public static int q(short[] sArr) {
        return sArr.length;
    }

    public static int r(short[] sArr) {
        return Arrays.hashCode(sArr);
    }

    public static boolean s(short[] sArr) {
        return sArr.length == 0;
    }

    public static Iterator t(short[] sArr) {
        return new a(sArr);
    }

    public static final void u(short[] sArr, int i, short s) {
        sArr[i] = s;
    }

    public static String v(short[] sArr) {
        return "UShortArray(storage=" + Arrays.toString(sArr) + ')';
    }

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof bfb) {
            return k(((bfb) obj).g());
        }
        return false;
    }

    @Override
    public boolean containsAll(Collection collection) {
        y45.j(collection, "elements");
        return m(this.b, collection);
    }

    @Override
    public boolean equals(Object obj) {
        return n(this.b, obj);
    }

    @Override
    public int hashCode() {
        return r(this.b);
    }

    @Override
    public boolean isEmpty() {
        return s(this.b);
    }

    @Override
    public Iterator iterator() {
        return t(this.b);
    }

    public boolean k(short s) {
        return l(this.b, s);
    }

    @Override
    public int size() {
        return q(this.b);
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object[] toArray() {
        return r71.a(this);
    }

    public String toString() {
        return v(this.b);
    }

    public final short[] w() {
        return this.b;
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        y45.j(objArr, "array");
        return r71.b(this, objArr);
    }
}
