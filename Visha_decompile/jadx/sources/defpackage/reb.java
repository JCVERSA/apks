package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class reb implements Collection, qe5 {
    public final long[] b;

    public static final class a implements Iterator, qe5 {
        public final long[] b;
        public int c;

        public a(long[] jArr) {
            y45.j(jArr, "array");
            this.b = jArr;
        }

        public long b() {
            int i = this.c;
            long[] jArr = this.b;
            if (i >= jArr.length) {
                throw new NoSuchElementException(String.valueOf(this.c));
            }
            this.c = i + 1;
            return qeb.b(jArr[i]);
        }

        @Override
        public boolean hasNext() {
            return this.c < this.b.length;
        }

        @Override
        public Object next() {
            return qeb.a(b());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public reb(long[] jArr) {
        this.b = jArr;
    }

    public static final reb b(long[] jArr) {
        return new reb(jArr);
    }

    public static long[] c(int i) {
        return f(new long[i]);
    }

    public static long[] f(long[] jArr) {
        y45.j(jArr, "storage");
        return jArr;
    }

    public static boolean l(long[] jArr, long j) {
        return hi.O(jArr, j);
    }

    public static boolean m(long[] jArr, Collection collection) {
        y45.j(collection, "elements");
        Collection collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        for (Object obj : collection2) {
            if (!(obj instanceof qeb) || !hi.O(jArr, ((qeb) obj).g())) {
                return false;
            }
        }
        return true;
    }

    public static boolean n(long[] jArr, Object obj) {
        return (obj instanceof reb) && y45.e(jArr, ((reb) obj).w());
    }

    public static final long o(long[] jArr, int i) {
        return qeb.b(jArr[i]);
    }

    public static int q(long[] jArr) {
        return jArr.length;
    }

    public static int r(long[] jArr) {
        return Arrays.hashCode(jArr);
    }

    public static boolean s(long[] jArr) {
        return jArr.length == 0;
    }

    public static Iterator t(long[] jArr) {
        return new a(jArr);
    }

    public static final void u(long[] jArr, int i, long j) {
        jArr[i] = j;
    }

    public static String v(long[] jArr) {
        return "ULongArray(storage=" + Arrays.toString(jArr) + ')';
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
        if (obj instanceof qeb) {
            return k(((qeb) obj).g());
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

    public boolean k(long j) {
        return l(this.b, j);
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

    public final long[] w() {
        return this.b;
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        y45.j(objArr, "array");
        return r71.b(this, objArr);
    }
}
