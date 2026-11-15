package com.yandex.mobile.ads.impl;

import java.util.NoSuchElementException;

abstract class j<E> extends j82<E> {
    private final int b;
    private int c;

    public j(int i, int i2) {
        vj1.b(i2, i);
        this.b = i;
        this.c = i2;
    }

    public abstract E a(int i);

    @Override
    public final boolean hasNext() {
        return this.c < this.b;
    }

    @Override
    public final boolean hasPrevious() {
        return this.c > 0;
    }

    @Override
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.c;
        this.c = i + 1;
        return a(i);
    }

    @Override
    public final int nextIndex() {
        return this.c;
    }

    @Override
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.c - 1;
        this.c = i;
        return a(i);
    }

    @Override
    public final int previousIndex() {
        return this.c - 1;
    }
}
