package com.facebook.ads.redexgen.core;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.Comparator;

@ElementTypesAreNonnullByDefault
public abstract class AbstractC2291oV<T> implements Comparator<T> {
    @Override
    public abstract int compare(@ParametricNullness T left, @ParametricNullness T right);

    public static <C extends Comparable> AbstractC2291oV<C> A03() {
        return AQ.A02;
    }

    public static <T> AbstractC2291oV<T> A04(Comparator<T> comparator) {
        if (comparator instanceof AbstractC2291oV) {
            return (AbstractC2291oV) comparator;
        }
        return new B2(comparator);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.ip != com.google.common.base.Function<F, ? extends T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oV != com.google.common.collect.Ordering<T> */
    public final <F> AbstractC2291oV<F> A05(InterfaceC1957ip<F, ? extends T> function) {
        return new BA(function, this);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oV != com.google.common.collect.Ordering<T> */
    public <S extends T> AbstractC2291oV<S> A06() {
        return new AJ(this);
    }
}
