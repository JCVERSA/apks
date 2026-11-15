package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class cy3 implements pc9 {
    public final pc9 a;
    public final e74 b;
    public final e74 c;

    public static final class a implements Iterator, qe5 {
        public final Iterator b;
        public Iterator c;
        public int d;

        public a() {
            this.b = cy3.this.a.iterator();
        }

        public final boolean b() {
            Iterator it = this.c;
            if (it != null && it.hasNext()) {
                this.d = 1;
                return true;
            }
            while (this.b.hasNext()) {
                Iterator it2 = (Iterator) cy3.this.c.invoke(cy3.this.b.invoke(this.b.next()));
                if (it2.hasNext()) {
                    this.c = it2;
                    this.d = 1;
                    return true;
                }
            }
            this.d = 2;
            this.c = null;
            return false;
        }

        @Override
        public boolean hasNext() {
            int i = this.d;
            if (i == 1) {
                return true;
            }
            if (i == 2) {
                return false;
            }
            return b();
        }

        @Override
        public Object next() {
            int i = this.d;
            if (i == 2) {
                throw new NoSuchElementException();
            }
            if (i == 0 && !b()) {
                throw new NoSuchElementException();
            }
            this.d = 0;
            Iterator it = this.c;
            y45.g(it);
            return it.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public cy3(pc9 pc9Var, e74 e74Var, e74 e74Var2) {
        y45.j(pc9Var, "sequence");
        y45.j(e74Var, "transformer");
        y45.j(e74Var2, "iterator");
        this.a = pc9Var;
        this.b = e74Var;
        this.c = e74Var2;
    }

    @Override
    public Iterator iterator() {
        return new a();
    }
}
