package com.yandex.mobile.ads.impl;

import java.util.Iterator;
import java.util.NoSuchElementException;

enum mq0 implements Iterator<Object> {
    INSTANCE;

    @Override
    public final boolean hasNext() {
        return false;
    }

    @Override
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override
    public final void remove() {
        throw new IllegalStateException("no calls to next() since the last call to remove()");
    }
}
