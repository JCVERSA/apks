package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.io.IOException;

public final class C2454c2 extends O2 {
    @Override
    @NonNull
    public final MessageNano defaultValue() {
        return new C2429b2();
    }

    @NonNull
    public final C2429b2 b() {
        return new C2429b2();
    }

    @Override
    @NonNull
    public final Object defaultValue() {
        return new C2429b2();
    }

    @Override
    @NonNull
    public final C2429b2 toState(@NonNull byte[] bArr) throws IOException {
        return (C2429b2) MessageNano.mergeFrom(new C2429b2(), bArr);
    }
}
