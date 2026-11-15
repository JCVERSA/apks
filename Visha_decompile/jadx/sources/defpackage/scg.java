package defpackage;

import java.util.ListIterator;

public abstract class scg extends qbg implements ListIterator {
    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
