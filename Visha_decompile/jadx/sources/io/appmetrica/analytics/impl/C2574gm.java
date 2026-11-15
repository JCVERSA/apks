package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

public final class C2574gm implements ProtobufConverter {
    @Override
    public final Xl fromModel(C2549fm c2549fm) {
        Xl xl = new Xl();
        xl.a = c2549fm.a;
        return xl;
    }

    @Override
    public final Object toModel(Object obj) {
        return new C2549fm(((Xl) obj).a);
    }

    public final C2549fm a(Xl xl) {
        return new C2549fm(xl.a);
    }
}
