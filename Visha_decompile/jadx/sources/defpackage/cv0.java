package defpackage;

import java.util.Iterator;

public abstract class cv0 implements Iterator, qe5 {
    public abstract char b();

    @Override
    public Object next() {
        return Character.valueOf(b());
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
