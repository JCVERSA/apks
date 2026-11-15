package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

public final class C2836rb implements Converter {
    public final Sc a;

    public C2836rb() {
        this(new Sc(new C2774on()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @NonNull
    public final byte[] fromModel(@NonNull C2749nn c2749nn) {
        return MessageNano.toByteArray((MessageNano) this.a.a.fromModel(c2749nn));
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public C2836rb(Sc sc) {
        this.a = sc;
    }

    @NonNull
    public final C2749nn a(@NonNull byte[] bArr) {
        throw new UnsupportedOperationException();
    }
}
