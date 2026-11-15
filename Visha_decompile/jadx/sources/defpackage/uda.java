package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class uda implements pc9 {
    public final pc9 a;
    public final e74 b;

    public static final class a implements Iterator, qe5 {
        public final Iterator b;
        public int c = -1;
        public Object d;

        public a() {
            this.b = uda.this.a.iterator();
        }

        private final void b() {
            if (this.b.hasNext()) {
                Object next = this.b.next();
                if (((Boolean) uda.this.b.invoke(next)).booleanValue()) {
                    this.c = 1;
                    this.d = next;
                    return;
                }
            }
            this.c = 0;
        }

        @Override
        public boolean hasNext() {
            if (this.c == -1) {
                b();
            }
            return this.c == 1;
        }

        @Override
        public Object next() {
            if (this.c == -1) {
                b();
            }
            if (this.c == 0) {
                throw new NoSuchElementException();
            }
            Object obj = this.d;
            this.d = null;
            this.c = -1;
            return obj;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public uda(pc9 pc9Var, e74 e74Var) {
        y45.j(pc9Var, "sequence");
        y45.j(e74Var, "predicate");
        this.a = pc9Var;
        this.b = e74Var;
    }

    @Override
    public Iterator iterator() {
        return new a();
    }
}
