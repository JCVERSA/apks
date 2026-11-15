package org.apache.commons.lang3.concurrent;

import defpackage.wk5;
import java.util.concurrent.atomic.AtomicReference;

public abstract class AtomicInitializer<T> implements ConcurrentInitializer<T> {
    private final AtomicReference<T> reference = new AtomicReference<>();

    @Override
    public T get() throws ConcurrentException {
        T t = this.reference.get();
        if (t != null) {
            return t;
        }
        T tInitialize = initialize();
        return !wk5.a(this.reference, null, tInitialize) ? this.reference.get() : tInitialize;
    }

    public abstract T initialize() throws ConcurrentException;
}
