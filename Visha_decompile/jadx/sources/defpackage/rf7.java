package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.mozilla.javascript.ES6Iterator;

public final class rf7 extends ah {
    public final Object b;
    public final int c;

    public static final class a implements Iterator, qe5 {
        public boolean b = true;

        public a() {
        }

        @Override
        public boolean hasNext() {
            return this.b;
        }

        @Override
        public Object next() {
            if (!this.b) {
                throw new NoSuchElementException();
            }
            this.b = false;
            return rf7.this.k();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rf7(Object obj, int i) {
        super(null);
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        this.b = obj;
        this.c = i;
    }

    @Override
    public int b() {
        return 1;
    }

    @Override
    public void c(int i, Object obj) {
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        throw new IllegalStateException();
    }

    public final int f() {
        return this.c;
    }

    @Override
    public Object get(int i) {
        if (i == this.c) {
            return this.b;
        }
        return null;
    }

    @Override
    public Iterator iterator() {
        return new a();
    }

    public final Object k() {
        return this.b;
    }
}
