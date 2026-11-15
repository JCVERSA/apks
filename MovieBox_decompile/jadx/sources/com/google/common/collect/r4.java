package com.google.common.collect;

import java.util.Iterator;

public abstract class r4 implements Iterator {
    protected r4() {
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
