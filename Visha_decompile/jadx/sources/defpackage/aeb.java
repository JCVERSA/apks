package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class aeb implements Collection, qe5 {
    public final byte[] b;

    public static final class a implements Iterator, qe5 {
        public final byte[] b;
        public int c;

        public a(byte[] bArr) {
            y45.j(bArr, "array");
            this.b = bArr;
        }

        public byte b() {
            int i = this.c;
            byte[] bArr = this.b;
            if (i >= bArr.length) {
                throw new NoSuchElementException(String.valueOf(this.c));
            }
            this.c = i + 1;
            return zdb.b(bArr[i]);
        }

        @Override
        public boolean hasNext() {
            return this.c < this.b.length;
        }

        @Override
        public Object next() {
            return zdb.a(b());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public aeb(byte[] bArr) {
        this.b = bArr;
    }

    public static final aeb b(byte[] bArr) {
        return new aeb(bArr);
    }

    public static byte[] c(int i) {
        return f(new byte[i]);
    }

    public static byte[] f(byte[] bArr) {
        y45.j(bArr, "storage");
        return bArr;
    }

    public static boolean l(byte[] bArr, byte b) {
        return hi.L(bArr, b);
    }

    public static boolean m(byte[] bArr, Collection collection) {
        y45.j(collection, "elements");
        Collection collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        for (Object obj : collection2) {
            if (!(obj instanceof zdb) || !hi.L(bArr, ((zdb) obj).g())) {
                return false;
            }
        }
        return true;
    }

    public static boolean n(byte[] bArr, Object obj) {
        return (obj instanceof aeb) && y45.e(bArr, ((aeb) obj).w());
    }

    public static final byte o(byte[] bArr, int i) {
        return zdb.b(bArr[i]);
    }

    public static int q(byte[] bArr) {
        return bArr.length;
    }

    public static int r(byte[] bArr) {
        return Arrays.hashCode(bArr);
    }

    public static boolean s(byte[] bArr) {
        return bArr.length == 0;
    }

    public static Iterator t(byte[] bArr) {
        return new a(bArr);
    }

    public static final void u(byte[] bArr, int i, byte b) {
        bArr[i] = b;
    }

    public static String v(byte[] bArr) {
        return "UByteArray(storage=" + Arrays.toString(bArr) + ')';
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
        if (obj instanceof zdb) {
            return k(((zdb) obj).g());
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

    public boolean k(byte b) {
        return l(this.b, b);
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

    public final byte[] w() {
        return this.b;
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        y45.j(objArr, "array");
        return r71.b(this, objArr);
    }
}
