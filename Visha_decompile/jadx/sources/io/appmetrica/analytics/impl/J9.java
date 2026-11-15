package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

public final class J9 implements ProtobufConverter {
    @Override
    public final Tl fromModel(I9 i9) {
        Tl tl = new Tl();
        if (i9 != null) {
            tl.a = i9.a;
        }
        return tl;
    }

    @Override
    public final Object toModel(Object obj) {
        return new I9(((Tl) obj).a);
    }

    public final I9 a(Tl tl) {
        return new I9(tl.a);
    }
}
