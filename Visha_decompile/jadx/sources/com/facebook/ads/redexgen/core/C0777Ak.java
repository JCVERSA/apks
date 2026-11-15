package com.facebook.ads.redexgen.core;

import com.google.common.collect.ParametricNullness;
import java.util.Iterator;

public class C0777Ak<T> extends AbstractC2346pg<T> {
    public final Iterator A00;

    public C0777Ak(final Iterator val$iterator) {
        this.A00 = val$iterator;
    }

    @Override
    public final boolean hasNext() {
        return this.A00.hasNext();
    }

    @Override
    @ParametricNullness
    public final T next() {
        return (T) this.A00.next();
    }
}
