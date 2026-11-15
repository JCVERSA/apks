package com.google.common.base;

import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class AbstractIterator implements Iterator {

    private State f29376a = State.NOT_READY;

    private Object f29377b;

    private enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    protected AbstractIterator() {
    }

    private boolean c() {
        this.f29376a = State.FAILED;
        this.f29377b = a();
        if (this.f29376a == State.DONE) {
            return false;
        }
        this.f29376a = State.READY;
        return true;
    }

    protected abstract Object a();

    protected final Object b() {
        this.f29376a = State.DONE;
        return null;
    }

    @Override
    public final boolean hasNext() {
        m.u(this.f29376a != State.FAILED);
        int iOrdinal = this.f29376a.ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal != 2) {
            return c();
        }
        return false;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f29376a = State.NOT_READY;
        Object objA = i.a(this.f29377b);
        this.f29377b = null;
        return objA;
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
