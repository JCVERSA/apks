package defpackage;

import java.util.Iterator;

public abstract class q15 implements Iterator, qe5 {
    @Override
    public Object next() {
        return Integer.valueOf(nextInt());
    }

    public abstract int nextInt();

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final Integer next() {
        return Integer.valueOf(nextInt());
    }
}
