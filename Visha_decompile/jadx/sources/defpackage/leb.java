package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class leb implements Collection, qe5 {
    public final int[] b;

    public static final class a implements Iterator, qe5 {
        public final int[] b;
        public int c;

        public a(int[] iArr) {
            y45.j(iArr, "array");
            this.b = iArr;
        }

        public int b() {
            int i = this.c;
            int[] iArr = this.b;
            if (i >= iArr.length) {
                throw new NoSuchElementException(String.valueOf(this.c));
            }
            this.c = i + 1;
            return keb.b(iArr[i]);
        }

        @Override
        public boolean hasNext() {
            return this.c < this.b.length;
        }

        @Override
        public Object next() {
            return keb.a(b());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public leb(int[] iArr) {
        this.b = iArr;
    }

    public static final leb b(int[] iArr) {
        return new leb(iArr);
    }

    public static int[] c(int i) {
        return f(new int[i]);
    }

    public static int[] f(int[] iArr) {
        y45.j(iArr, "storage");
        return iArr;
    }

    public static boolean l(int[] iArr, int i) {
        return hi.N(iArr, i);
    }

    public static boolean m(int[] iArr, Collection collection) {
        y45.j(collection, "elements");
        Collection collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        for (Object obj : collection2) {
            if (!(obj instanceof keb) || !hi.N(iArr, ((keb) obj).g())) {
                return false;
            }
        }
        return true;
    }

    public static boolean n(int[] iArr, Object obj) {
        return (obj instanceof leb) && y45.e(iArr, ((leb) obj).w());
    }

    public static final int o(int[] iArr, int i) {
        return keb.b(iArr[i]);
    }

    public static int q(int[] iArr) {
        return iArr.length;
    }

    public static int r(int[] iArr) {
        return Arrays.hashCode(iArr);
    }

    public static boolean s(int[] iArr) {
        return iArr.length == 0;
    }

    public static Iterator t(int[] iArr) {
        return new a(iArr);
    }

    public static final void u(int[] iArr, int i, int i2) {
        iArr[i] = i2;
    }

    public static String v(int[] iArr) {
        return "UIntArray(storage=" + Arrays.toString(iArr) + ')';
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
        if (obj instanceof keb) {
            return k(((keb) obj).g());
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

    public boolean k(int i) {
        return l(this.b, i);
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

    public final int[] w() {
        return this.b;
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        y45.j(objArr, "array");
        return r71.b(this, objArr);
    }
}
