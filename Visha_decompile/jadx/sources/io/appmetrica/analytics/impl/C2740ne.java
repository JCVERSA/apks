package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

public final class C2740ne implements ProtobufConverter {
    @Override
    @NonNull
    public final Wl fromModel(@NonNull C2715me c2715me) {
        Wl wl = new Wl();
        wl.a = c2715me.a;
        wl.b = c2715me.b;
        return wl;
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        Wl wl = (Wl) obj;
        return new C2715me(wl.a, wl.b);
    }

    @NonNull
    public final C2715me a(@NonNull Wl wl) {
        return new C2715me(wl.a, wl.b);
    }
}
