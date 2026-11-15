package defpackage;

import java.util.Iterator;

public final class nn6 implements pc9 {
    public final pc9 a;
    public final pc9 b;
    public final s74 c;

    public static final class a implements Iterator, qe5 {
        public final Iterator b;
        public final Iterator c;

        public a() {
            this.b = nn6.this.a.iterator();
            this.c = nn6.this.b.iterator();
        }

        @Override
        public boolean hasNext() {
            return this.b.hasNext() && this.c.hasNext();
        }

        @Override
        public Object next() {
            return nn6.this.c.invoke(this.b.next(), this.c.next());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public nn6(pc9 pc9Var, pc9 pc9Var2, s74 s74Var) {
        y45.j(pc9Var, "sequence1");
        y45.j(pc9Var2, "sequence2");
        y45.j(s74Var, "transform");
        this.a = pc9Var;
        this.b = pc9Var2;
        this.c = s74Var;
    }

    @Override
    public Iterator iterator() {
        return new a();
    }
}
