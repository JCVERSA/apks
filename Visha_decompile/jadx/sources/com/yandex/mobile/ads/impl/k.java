package com.yandex.mobile.ads.impl;

import java.util.NoSuchElementException;

public abstract class k<T> extends i82<T> {
    private int b = 2;
    private T c;

    public abstract T a();

    public final void b() {
        this.b = 3;
    }

    @Override
    public final boolean hasNext() {
        int i = this.b;
        if (i == 4) {
            throw new IllegalStateException();
        }
        int iA = f9.a(i);
        if (iA == 0) {
            return true;
        }
        if (iA == 2) {
            return false;
        }
        this.b = 4;
        this.c = a();
        if (this.b == 3) {
            return false;
        }
        this.b = 1;
        return true;
    }

    @Override
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.b = 2;
        T t = this.c;
        this.c = null;
        return t;
    }
}
