package defpackage;

import java.util.Iterator;

public final class j7b implements pc9 {
    public final pc9 a;
    public final e74 b;

    public static final class a implements Iterator, qe5 {
        public final Iterator b;

        public a() {
            this.b = j7b.this.a.iterator();
        }

        @Override
        public boolean hasNext() {
            return this.b.hasNext();
        }

        @Override
        public Object next() {
            return j7b.this.b.invoke(this.b.next());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public j7b(pc9 pc9Var, e74 e74Var) {
        y45.j(pc9Var, "sequence");
        y45.j(e74Var, "transformer");
        this.a = pc9Var;
        this.b = e74Var;
    }

    public final pc9 d(e74 e74Var) {
        y45.j(e74Var, "iterator");
        return new cy3(this.a, this.b, e74Var);
    }

    @Override
    public Iterator iterator() {
        return new a();
    }
}
