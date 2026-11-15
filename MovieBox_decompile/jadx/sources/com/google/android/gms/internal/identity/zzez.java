package com.google.android.gms.internal.identity;

import java.util.Iterator;

public abstract class zzez implements Iterator {
    protected zzez() {
    }

    @Override
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
