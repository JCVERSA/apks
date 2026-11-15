package com.google.common.collect;

import defpackage.dgb;
import defpackage.r37;
import defpackage.xd8;
import java.util.NoSuchElementException;

public abstract class AbstractIterator extends dgb {
    public State b = State.NOT_READY;
    public Object c;

    public enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    public abstract Object a();

    public final Object b() {
        this.b = State.DONE;
        return null;
    }

    public final boolean c() {
        this.b = State.FAILED;
        this.c = a();
        if (this.b == State.DONE) {
            return false;
        }
        this.b = State.READY;
        return true;
    }

    @Override
    public final boolean hasNext() {
        xd8.u(this.b != State.FAILED);
        int iOrdinal = this.b.ordinal();
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
        this.b = State.NOT_READY;
        Object objA = r37.a(this.c);
        this.c = null;
        return objA;
    }
}
