package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public class qd7 implements Iterable {
    public final List b = new ArrayList();
    public int c;
    public int d;
    public boolean e;

    public class b implements Iterator {
        public int b;
        public int c;
        public boolean d;

        public final void a() {
            if (this.d) {
                return;
            }
            this.d = true;
            qd7.this.m();
        }

        @Override
        public boolean hasNext() {
            int i = this.c;
            while (i < this.b && qd7.this.n(i) == null) {
                i++;
            }
            if (i < this.b) {
                return true;
            }
            a();
            return false;
        }

        @Override
        public Object next() {
            while (true) {
                int i = this.c;
                if (i >= this.b || qd7.this.n(i) != null) {
                    break;
                }
                this.c++;
            }
            int i2 = this.c;
            if (i2 >= this.b) {
                a();
                throw new NoSuchElementException();
            }
            qd7 qd7Var = qd7.this;
            this.c = i2 + 1;
            return qd7Var.n(i2);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public b() {
            qd7.this.o();
            this.b = qd7.this.k();
        }
    }

    public void clear() {
        this.d = 0;
        if (this.c == 0) {
            this.b.clear();
            return;
        }
        int size = this.b.size();
        this.e |= size != 0;
        for (int i = 0; i < size; i++) {
            this.b.set(i, null);
        }
    }

    @Override
    public Iterator iterator() {
        return new b();
    }

    public boolean j(Object obj) {
        if (obj == null || this.b.contains(obj)) {
            return false;
        }
        this.b.add(obj);
        this.d++;
        return true;
    }

    public final int k() {
        return this.b.size();
    }

    public final void l() {
        for (int size = this.b.size() - 1; size >= 0; size--) {
            if (this.b.get(size) == null) {
                this.b.remove(size);
            }
        }
    }

    public final void m() {
        int i = this.c - 1;
        this.c = i;
        if (i <= 0 && this.e) {
            this.e = false;
            l();
        }
    }

    public final Object n(int i) {
        return this.b.get(i);
    }

    public final void o() {
        this.c++;
    }

    public boolean p(Object obj) {
        int iIndexOf;
        if (obj == null || (iIndexOf = this.b.indexOf(obj)) == -1) {
            return false;
        }
        if (this.c == 0) {
            this.b.remove(iIndexOf);
        } else {
            this.e = true;
            this.b.set(iIndexOf, null);
        }
        this.d--;
        return true;
    }
}
