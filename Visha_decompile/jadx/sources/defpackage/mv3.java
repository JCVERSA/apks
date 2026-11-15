package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class mv3 implements pc9 {
    public final pc9 a;
    public final boolean b;
    public final e74 c;

    public static final class a implements Iterator, qe5 {
        public final Iterator b;
        public int c = -1;
        public Object d;

        public a() {
            this.b = mv3.this.a.iterator();
        }

        public final void b() {
            while (this.b.hasNext()) {
                Object next = this.b.next();
                if (((Boolean) mv3.this.c.invoke(next)).booleanValue() == mv3.this.b) {
                    this.d = next;
                    this.c = 1;
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

    public mv3(pc9 pc9Var, boolean z, e74 e74Var) {
        y45.j(pc9Var, "sequence");
        y45.j(e74Var, "predicate");
        this.a = pc9Var;
        this.b = z;
        this.c = e74Var;
    }

    @Override
    public Iterator iterator() {
        return new a();
    }
}
