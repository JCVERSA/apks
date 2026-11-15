package com.yandex.mobile.ads.impl;

import java.util.Iterator;

public abstract class i82<E> implements Iterator<E> {
    @Override
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
