package defpackage;

import java.util.Iterator;

public abstract class fr5 implements Iterator, qe5 {
    @Override
    public Object next() {
        return Long.valueOf(nextLong());
    }

    public abstract long nextLong();

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final Long next() {
        return Long.valueOf(nextLong());
    }
}
