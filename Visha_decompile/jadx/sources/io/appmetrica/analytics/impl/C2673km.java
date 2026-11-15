package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

public final class C2673km implements ProtobufConverter {
    @NonNull
    public final Yl a(@NonNull C2648jm c2648jm) {
        Yl yl = new Yl();
        yl.a = c2648jm.a;
        return yl;
    }

    @Override
    @NonNull
    public final Object fromModel(@NonNull Object obj) {
        Yl yl = new Yl();
        yl.a = ((C2648jm) obj).a;
        return yl;
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        return new C2648jm(((Yl) obj).a);
    }

    @NonNull
    public final C2648jm a(@NonNull Yl yl) {
        return new C2648jm(yl.a);
    }
}
