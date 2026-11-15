package com.google.android.gms.internal.ads;

import defpackage.v2i;
import java.util.Iterator;
import java.util.NoSuchElementException;

enum zzfxe implements Iterator {
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
        v2i.m(false, "no calls to next() since the last call to remove()");
    }
}
