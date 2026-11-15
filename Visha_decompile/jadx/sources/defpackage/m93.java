package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.mozilla.javascript.ES6Iterator;

public final class m93 extends ah {
    public static final m93 b = new m93();

    public static final class a implements Iterator, qe5 {
        @Override
        public Void next() {
            throw new NoSuchElementException();
        }

        @Override
        public boolean hasNext() {
            return false;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public m93() {
        super(null);
    }

    @Override
    public int b() {
        return 0;
    }

    @Override
    public Void get(int i) {
        return null;
    }

    @Override
    public Iterator iterator() {
        return new a();
    }

    @Override
    public void c(int i, Void r2) {
        y45.j(r2, ES6Iterator.VALUE_PROPERTY);
        throw new IllegalStateException();
    }
}
