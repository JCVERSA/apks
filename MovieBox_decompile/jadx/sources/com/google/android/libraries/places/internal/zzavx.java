package com.google.android.libraries.places.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class zzavx implements Iterator {
    zzavx() {
    }

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
        throw new UnsupportedOperationException();
    }
}
