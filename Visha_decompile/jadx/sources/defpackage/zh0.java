package defpackage;

import java.util.Iterator;

public abstract class zh0 implements Iterator, qe5 {
    @Override
    public Object next() {
        return Boolean.valueOf(nextBoolean());
    }

    public abstract boolean nextBoolean();

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final Boolean next() {
        return Boolean.valueOf(nextBoolean());
    }
}
