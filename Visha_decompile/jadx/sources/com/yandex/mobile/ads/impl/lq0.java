package com.yandex.mobile.ads.impl;

import java.util.NoSuchElementException;

final class lq0 extends i82<Object> {
    boolean b;
    final Object c;

    public lq0(Object obj) {
        this.c = obj;
    }

    @Override
    public final boolean hasNext() {
        return !this.b;
    }

    @Override
    public final Object next() {
        if (this.b) {
            throw new NoSuchElementException();
        }
        this.b = true;
        return this.c;
    }
}
