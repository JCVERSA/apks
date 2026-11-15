package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public final class bv8 extends k3 {
    public final List b;

    public static final class a implements ListIterator, qe5 {
        public final ListIterator b;

        public a(int i) {
            this.b = bv8.this.b.listIterator(e81.U(bv8.this, i));
        }

        @Override
        public void add(Object obj) {
            this.b.add(obj);
            this.b.previous();
        }

        @Override
        public boolean hasNext() {
            return this.b.hasPrevious();
        }

        @Override
        public boolean hasPrevious() {
            return this.b.hasNext();
        }

        @Override
        public Object next() {
            return this.b.previous();
        }

        @Override
        public int nextIndex() {
            return e81.T(bv8.this, this.b.previousIndex());
        }

        @Override
        public Object previous() {
            return this.b.next();
        }

        @Override
        public int previousIndex() {
            return e81.T(bv8.this, this.b.nextIndex());
        }

        @Override
        public void remove() {
            this.b.remove();
        }

        @Override
        public void set(Object obj) {
            this.b.set(obj);
        }
    }

    public bv8(List list) {
        y45.j(list, "delegate");
        this.b = list;
    }

    @Override
    public void add(int i, Object obj) {
        this.b.add(e81.U(this, i), obj);
    }

    @Override
    public void clear() {
        this.b.clear();
    }

    @Override
    public Object get(int i) {
        return this.b.get(e81.S(this, i));
    }

    @Override
    public int getLength() {
        return this.b.size();
    }

    @Override
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override
    public Object removeAt(int i) {
        return this.b.remove(e81.S(this, i));
    }

    @Override
    public Object set(int i, Object obj) {
        return this.b.set(e81.S(this, i), obj);
    }

    @Override
    public ListIterator listIterator(int i) {
        return new a(i);
    }
}
