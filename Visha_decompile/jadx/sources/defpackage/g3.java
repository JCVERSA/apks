package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class g3 extends r2 implements List, qe5 {
    public static final a Companion = new a(null);
    private static final int maxArraySize = 2147483639;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(int i, int i2, int i3) {
            if (i < 0 || i2 > i3) {
                throw new IndexOutOfBoundsException("startIndex: " + i + ", endIndex: " + i2 + ", size: " + i3);
            }
            if (i <= i2) {
                return;
            }
            throw new IllegalArgumentException("startIndex: " + i + " > endIndex: " + i2);
        }

        public final void b(int i, int i2) {
            if (i < 0 || i >= i2) {
                throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
            }
        }

        public final void c(int i, int i2) {
            if (i < 0 || i > i2) {
                throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
            }
        }

        public final void d(int i, int i2, int i3) {
            if (i < 0 || i2 > i3) {
                throw new IndexOutOfBoundsException("fromIndex: " + i + ", toIndex: " + i2 + ", size: " + i3);
            }
            if (i <= i2) {
                return;
            }
            throw new IllegalArgumentException("fromIndex: " + i + " > toIndex: " + i2);
        }

        public final int e(int i, int i2) {
            int i3 = i + (i >> 1);
            if (i3 - i2 < 0) {
                i3 = i2;
            }
            int i4 = g3.maxArraySize;
            if (i3 - g3.maxArraySize <= 0) {
                return i3;
            }
            if (i2 > g3.maxArraySize) {
                i4 = Integer.MAX_VALUE;
            }
            return i4;
        }

        public final boolean f(Collection collection, Collection collection2) {
            y45.j(collection, "c");
            y45.j(collection2, "other");
            if (collection.size() != collection2.size()) {
                return false;
            }
            Iterator it = collection2.iterator();
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!y45.e(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }

        public final int g(Collection collection) {
            y45.j(collection, "c");
            Iterator it = collection.iterator();
            int iHashCode = 1;
            while (it.hasNext()) {
                Object next = it.next();
                iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
            }
            return iHashCode;
        }

        public a() {
        }
    }

    public class b implements Iterator, qe5 {
        public int b;

        public b() {
        }

        public final int b() {
            return this.b;
        }

        public final void c(int i) {
            this.b = i;
        }

        @Override
        public boolean hasNext() {
            return this.b < g3.this.size();
        }

        @Override
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            g3 g3Var = g3.this;
            int i = this.b;
            this.b = i + 1;
            return g3Var.get(i);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public class c extends b implements ListIterator, qe5 {
        public c(int i) {
            super();
            g3.Companion.c(i, g3.this.size());
            c(i);
        }

        @Override
        public void add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override
        public boolean hasPrevious() {
            return b() > 0;
        }

        @Override
        public int nextIndex() {
            return b();
        }

        @Override
        public Object previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            g3 g3Var = g3.this;
            c(b() - 1);
            return g3Var.get(b());
        }

        @Override
        public int previousIndex() {
            return b() - 1;
        }

        @Override
        public void set(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final class d extends g3 implements RandomAccess {
        public final g3 b;
        public final int c;
        public int d;

        public d(g3 g3Var, int i, int i2) {
            y45.j(g3Var, "list");
            this.b = g3Var;
            this.c = i;
            g3.Companion.d(i, i2, g3Var.size());
            this.d = i2 - i;
        }

        @Override
        public Object get(int i) {
            g3.Companion.b(i, this.d);
            return this.b.get(this.c + i);
        }

        @Override
        public int getSize() {
            return this.d;
        }
    }

    @Override
    public void add(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(int i, Collection<Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            return Companion.f(this, (Collection) obj);
        }
        return false;
    }

    public abstract Object get(int i);

    @Override
    public int hashCode() {
        return Companion.g(this);
    }

    public int indexOf(Object obj) {
        Iterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (y45.e(it.next(), obj)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override
    public Iterator<Object> iterator() {
        return new b();
    }

    public int lastIndexOf(Object obj) {
        ListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (y45.e(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override
    public ListIterator<Object> listIterator() {
        return new c(0);
    }

    @Override
    public Object remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object set(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public List<Object> subList(int i, int i2) {
        return new d(this, i, i2);
    }

    @Override
    public ListIterator<Object> listIterator(int i) {
        return new c(i);
    }
}
