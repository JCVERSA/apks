package org.libtorrent4j;

public class SwigObject<T> {
    protected final T h;

    public SwigObject(T t) {
        this.h = t;
    }

    public final T swig() {
        return this.h;
    }
}
