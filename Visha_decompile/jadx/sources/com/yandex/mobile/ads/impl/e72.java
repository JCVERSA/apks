package com.yandex.mobile.ads.impl;

import java.util.Iterator;
import java.util.Map;

abstract class e72<F, T> implements Iterator<T> {
    final Iterator<? extends F> b;

    public e72(Iterator<? extends F> it) {
        this.b = (Iterator) vj1.a(it);
    }

    @Override
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override
    public final T next() {
        return (T) ((Map.Entry) this.b.next()).getValue();
    }

    @Override
    public final void remove() {
        this.b.remove();
    }
}
