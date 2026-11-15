package com.google.android.gms.internal.fido;

import java.util.Iterator;

public abstract class zzaz implements Iterator {
    protected zzaz() {
    }

    @Override
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
