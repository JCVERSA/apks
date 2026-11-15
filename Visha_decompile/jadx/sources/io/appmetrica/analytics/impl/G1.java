package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import java.io.File;

public final class G1 implements Consumer {
    public final I1 a;

    public G1(I1 i1) {
        this.a = i1;
    }

    @Override
    public final void consume(Object obj) {
        this.a.a((File) obj);
    }
}
