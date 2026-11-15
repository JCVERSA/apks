package com.google.common.collect;

import java.util.NoSuchElementException;

public abstract class AbstractIterator extends r4 {

    private State f29443a = State.NOT_READY;

    private Object f29444b;

    private enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    protected AbstractIterator() {
    }

    private boolean c() {
        this.f29443a = State.FAILED;
        this.f29444b = a();
        if (this.f29443a == State.DONE) {
            return false;
        }
        this.f29443a = State.READY;
        return true;
    }

    protected abstract Object a();

    protected final Object b() {
        this.f29443a = State.DONE;
        return null;
    }

    @Override
    public final boolean hasNext() {
        com.google.common.base.m.u(this.f29443a != State.FAILED);
        int iOrdinal = this.f29443a.ordinal();
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
        this.f29443a = State.NOT_READY;
        Object objA = m3.a(this.f29444b);
        this.f29444b = null;
        return objA;
    }
}
