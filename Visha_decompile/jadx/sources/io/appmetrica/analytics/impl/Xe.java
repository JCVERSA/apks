package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.io.IOException;

public final class Xe extends O2 {
    @Override
    @NonNull
    public final MessageNano defaultValue() {
        return new C2467cf();
    }

    @NonNull
    public final C2467cf b() {
        return new C2467cf();
    }

    @Override
    @NonNull
    public final Object defaultValue() {
        return new C2467cf();
    }

    @Override
    @NonNull
    public final C2467cf toState(@NonNull byte[] bArr) throws IOException {
        return (C2467cf) MessageNano.mergeFrom(new C2467cf(), bArr);
    }
}
