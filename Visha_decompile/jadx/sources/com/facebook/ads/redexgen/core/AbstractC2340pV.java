package com.facebook.ads.redexgen.core;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.Iterator;

@ElementTypesAreNonnullByDefault
public abstract class AbstractC2340pV<F, T> implements Iterator<T> {
    public final Iterator<? extends F> A00;

    @ParametricNullness
    public abstract T A01(@ParametricNullness F from);

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pV != com.google.common.collect.TransformedIterator<F, T> */
    public AbstractC2340pV(Iterator<? extends F> backingIterator) {
        this.A00 = (Iterator) AbstractC1977jA.A04(backingIterator);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pV != com.google.common.collect.TransformedIterator<F, T> */
    @Override
    public final boolean hasNext() {
        return this.A00.hasNext();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pV != com.google.common.collect.TransformedIterator<F, T> */
    @Override
    @ParametricNullness
    public final T next() {
        return A01(this.A00.next());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pV != com.google.common.collect.TransformedIterator<F, T> */
    @Override
    public final void remove() {
        this.A00.remove();
    }
}
