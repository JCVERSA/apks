package com.facebook.ads.redexgen.core;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.ListIterator;

@ElementTypesAreNonnullByDefault
public abstract class AF<E> extends AbstractC2346pg<E> implements ListIterator<E> {
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AF != com.google.common.collect.UnmodifiableListIterator<E> */
    @Override
    @Deprecated
    public final void add(@ParametricNullness E e) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AF != com.google.common.collect.UnmodifiableListIterator<E> */
    @Override
    @Deprecated
    public final void set(@ParametricNullness E e) {
        throw new UnsupportedOperationException();
    }
}
