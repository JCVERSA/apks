package defpackage;

import java.util.Iterator;

public final class k33 implements pc9, o33 {
    public final pc9 a;
    public final int b;

    public static final class a implements Iterator, qe5 {
        public final Iterator b;
        public int c;

        public a(k33 k33Var) {
            this.b = k33Var.a.iterator();
            this.c = k33Var.b;
        }

        public final void b() {
            while (this.c > 0 && this.b.hasNext()) {
                this.b.next();
                this.c--;
            }
        }

        @Override
        public boolean hasNext() {
            b();
            return this.b.hasNext();
        }

        @Override
        public Object next() {
            b();
            return this.b.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public k33(pc9 pc9Var, int i) {
        y45.j(pc9Var, "sequence");
        this.a = pc9Var;
        this.b = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i + '.').toString());
    }

    @Override
    public pc9 a(int i) {
        int i2 = this.b + i;
        return i2 < 0 ? new k33(this, i) : new k33(this.a, i2);
    }

    @Override
    public Iterator iterator() {
        return new a(this);
    }
}
