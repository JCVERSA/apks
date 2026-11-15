package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class C6 implements ProtobufConverter {
    public final C2891tg a;

    public C6() {
        this(new C2891tg());
    }

    @Override
    @NonNull
    public final C2608i6 fromModel(@NonNull B6 b6) {
        C2608i6 c2608i6FromModel = this.a.fromModel(b6.a);
        c2608i6FromModel.g = 1;
        C2583h6 c2583h6 = new C2583h6();
        c2608i6FromModel.h = c2583h6;
        c2583h6.a = StringUtils.correctIllFormedString(b6.b);
        return c2608i6FromModel;
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public C6(C2891tg c2891tg) {
        this.a = c2891tg;
    }

    @NonNull
    public final B6 a(@NonNull C2608i6 c2608i6) {
        throw new UnsupportedOperationException();
    }
}
