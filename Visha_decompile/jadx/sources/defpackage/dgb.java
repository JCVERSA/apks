package defpackage;

import java.util.Iterator;

public abstract class dgb implements Iterator {
    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
