package defpackage;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public class egb extends AbstractList implements RandomAccess, pj5 {
    public final pj5 b;

    public class a implements ListIterator {
        public ListIterator b;
        public final int c;

        public a(int i) {
            this.c = i;
            this.b = egb.this.b.listIterator(i);
        }

        @Override
        public void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override
        public String next() {
            return (String) this.b.next();
        }

        @Override
        public String previous() {
            return (String) this.b.previous();
        }

        @Override
        public void set(String str) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean hasNext() {
            return this.b.hasNext();
        }

        @Override
        public boolean hasPrevious() {
            return this.b.hasPrevious();
        }

        @Override
        public int nextIndex() {
            return this.b.nextIndex();
        }

        @Override
        public int previousIndex() {
            return this.b.previousIndex();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public class b implements Iterator {
        public Iterator b;

        public b() {
            this.b = egb.this.b.iterator();
        }

        @Override
        public String next() {
            return (String) this.b.next();
        }

        @Override
        public boolean hasNext() {
            return this.b.hasNext();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public egb(pj5 pj5Var) {
        this.b = pj5Var;
    }

    @Override
    public String get(int i) {
        return (String) this.b.get(i);
    }

    @Override
    public void g(po0 po0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public po0 getByteString(int i) {
        return this.b.getByteString(i);
    }

    @Override
    public List getUnderlyingElements() {
        return this.b.getUnderlyingElements();
    }

    @Override
    public pj5 getUnmodifiableView() {
        return this;
    }

    @Override
    public Iterator iterator() {
        return new b();
    }

    @Override
    public ListIterator listIterator(int i) {
        return new a(i);
    }

    @Override
    public int size() {
        return this.b.size();
    }
}
