package com.facebook.ads.redexgen.core;

import java.util.NoSuchElementException;

public final class C0776Aj<T> extends AbstractC2346pg<T> {
    public T A00;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Aj != com.google.common.collect.Iterators$SingletonIterator<T> */
    public C0776Aj(T value) {
        this.A00 = value;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Aj != com.google.common.collect.Iterators$SingletonIterator<T> */
    @Override
    public final boolean hasNext() {
        return this.A00 != null;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Aj != com.google.common.collect.Iterators$SingletonIterator<T> */
    @Override
    public final T next() {
        T t = this.A00;
        this.A00 = null;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException();
    }
}
