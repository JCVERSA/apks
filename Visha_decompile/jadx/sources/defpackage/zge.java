package defpackage;

import java.util.Iterator;

public abstract class zge implements Iterator {
    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
