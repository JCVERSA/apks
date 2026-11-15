package com.google.common.collect;

import java.util.NoSuchElementException;

public abstract class g extends r4 {

    private Object f29963a;

    protected g(Object obj) {
        this.f29963a = obj;
    }

    protected abstract Object a(Object obj);

    @Override
    public final boolean hasNext() {
        return this.f29963a != null;
    }

    @Override
    public final Object next() {
        Object obj = this.f29963a;
        if (obj == null) {
            throw new NoSuchElementException();
        }
        this.f29963a = a(obj);
        return obj;
    }
}
