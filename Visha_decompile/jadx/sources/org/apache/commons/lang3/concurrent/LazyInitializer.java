package org.apache.commons.lang3.concurrent;

public abstract class LazyInitializer<T> implements ConcurrentInitializer<T> {
    private static final Object NO_INIT = new Object();
    private volatile T object = (T) NO_INIT;

    @Override
    public T get() throws ConcurrentException {
        T tInitialize = this.object;
        Object obj = NO_INIT;
        if (tInitialize == obj) {
            synchronized (this) {
                try {
                    tInitialize = this.object;
                    if (tInitialize == obj) {
                        tInitialize = initialize();
                        this.object = tInitialize;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return tInitialize;
    }

    public abstract T initialize() throws ConcurrentException;
}
