package defpackage;

import java.util.Iterator;

public abstract class qbg implements Iterator {
    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
