package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

public final class C3028z3 implements ProtobufConverter {
    @NonNull
    public final Rl a(@NonNull C2978x3 c2978x3) {
        Rl rl = new Rl();
        rl.a = c2978x3.a;
        return rl;
    }

    @Override
    @NonNull
    public final Object fromModel(@NonNull Object obj) {
        Rl rl = new Rl();
        rl.a = ((C2978x3) obj).a;
        return rl;
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        return new C2978x3(((Rl) obj).a);
    }

    @NonNull
    public final C2978x3 a(@NonNull Rl rl) {
        return new C2978x3(rl.a);
    }
}
