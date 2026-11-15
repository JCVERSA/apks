package defpackage;

import java.util.AbstractSet;

public abstract class h1d extends AbstractSet {
    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        if (!isEmpty()) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public boolean remove(Object obj) {
        if (contains(obj)) {
            throw new UnsupportedOperationException();
        }
        return false;
    }
}
