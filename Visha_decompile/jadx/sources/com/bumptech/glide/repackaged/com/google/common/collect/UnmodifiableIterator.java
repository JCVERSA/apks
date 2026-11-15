package com.bumptech.glide.repackaged.com.google.common.collect;

import java.util.Iterator;

public abstract class UnmodifiableIterator<E> implements Iterator<E> {
    @Override
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
