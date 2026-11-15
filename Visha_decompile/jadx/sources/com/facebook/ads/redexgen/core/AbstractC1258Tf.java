package com.facebook.ads.redexgen.core;

import com.facebook.ads.redexgen.core.C1256Td;

public abstract class AbstractC1258Tf<T extends C1256Td> {
    public abstract Class<T> A01();

    public abstract void A03(T t);

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Tf != com.facebook.ads.internal.events.EventSubscriber<T extends com.facebook.ads.redexgen.X.Td> */
    public final boolean A00(T event) {
        return true;
    }
}
