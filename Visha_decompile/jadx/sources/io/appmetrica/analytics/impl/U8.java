package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.io.IOException;

public final class U8 extends O2 {
    @Override
    @NonNull
    public final MessageNano defaultValue() {
        return new A9();
    }

    @NonNull
    public final A9 b() {
        return new A9();
    }

    @Override
    @NonNull
    public final Object defaultValue() {
        return new A9();
    }

    @Override
    @NonNull
    public final A9 toState(@NonNull byte[] bArr) throws IOException {
        return (A9) MessageNano.mergeFrom(new A9(), bArr);
    }
}
