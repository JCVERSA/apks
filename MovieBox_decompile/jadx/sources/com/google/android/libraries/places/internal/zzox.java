package com.google.android.libraries.places.internal;

import java.util.Iterator;

public abstract class zzox implements Iterator {
    protected zzox() {
    }

    @Override
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
