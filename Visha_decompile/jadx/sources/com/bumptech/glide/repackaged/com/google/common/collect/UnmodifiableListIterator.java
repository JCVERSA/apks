package com.bumptech.glide.repackaged.com.google.common.collect;

import java.util.ListIterator;

public abstract class UnmodifiableListIterator<E> extends UnmodifiableIterator<E> implements ListIterator<E> {
    @Override
    @Deprecated
    public final void add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void set(E e) {
        throw new UnsupportedOperationException();
    }
}
