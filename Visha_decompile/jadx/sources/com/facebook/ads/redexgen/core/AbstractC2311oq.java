package com.facebook.ads.redexgen.core;

import java.util.AbstractSet;
import java.util.Collection;

public abstract class AbstractC2311oq<E> extends AbstractSet<E> {
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oq != com.google.common.collect.Sets$ImprovedAbstractSet<E> */
    @Override
    public boolean removeAll(Collection<?> c) {
        return AbstractC2315ou.A0A(this, c);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oq != com.google.common.collect.Sets$ImprovedAbstractSet<E> */
    @Override
    public boolean retainAll(Collection<?> c) {
        return super.retainAll((Collection) AbstractC1977jA.A04(c));
    }
}
