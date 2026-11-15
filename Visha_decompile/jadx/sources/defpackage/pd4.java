package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class pd4 implements pc9 {
    public final c74 a;
    public final e74 b;

    public static final class a implements Iterator, qe5 {
        public Object b;
        public int c = -2;

        public a() {
        }

        private final void b() {
            Object objInvoke;
            if (this.c == -2) {
                objInvoke = pd4.this.a.invoke();
            } else {
                e74 e74Var = pd4.this.b;
                Object obj = this.b;
                y45.g(obj);
                objInvoke = e74Var.invoke(obj);
            }
            this.b = objInvoke;
            this.c = objInvoke == null ? 0 : 1;
        }

        @Override
        public boolean hasNext() {
            if (this.c < 0) {
                b();
            }
            return this.c == 1;
        }

        @Override
        public Object next() {
            if (this.c < 0) {
                b();
            }
            if (this.c == 0) {
                throw new NoSuchElementException();
            }
            Object obj = this.b;
            y45.h(obj, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
            this.c = -1;
            return obj;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public pd4(c74 c74Var, e74 e74Var) {
        y45.j(c74Var, "getInitialValue");
        y45.j(e74Var, "getNextValue");
        this.a = c74Var;
        this.b = e74Var;
    }

    @Override
    public Iterator iterator() {
        return new a();
    }
}
