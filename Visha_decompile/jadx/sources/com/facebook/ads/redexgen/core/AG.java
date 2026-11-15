package com.facebook.ads.redexgen.core;

import java.util.Set;
import javax.annotation.CheckForNull;

public class AG<E> extends C2125lm<E> implements Set<E> {
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AG != com.google.common.collect.Sets$FilteredSet<E> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.jB != com.google.common.base.Predicate<? super E> */
    public AG(Set<E> unfiltered, InterfaceC1978jB<? super E> predicate) {
        super(unfiltered, predicate);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AG != com.google.common.collect.Sets$FilteredSet<E> */
    @Override
    public final boolean equals(@CheckForNull Object object) {
        return AbstractC2315ou.A09(this, object);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AG != com.google.common.collect.Sets$FilteredSet<E> */
    @Override
    public final int hashCode() {
        return AbstractC2315ou.A00(this);
    }
}
