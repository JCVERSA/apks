package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.io.IOException;

public final class C3002y2 extends O2 {
    @Override
    @NonNull
    public final MessageNano defaultValue() {
        return new C2977x2();
    }

    @NonNull
    public final C2977x2 b() {
        return new C2977x2();
    }

    @Override
    @NonNull
    public final Object defaultValue() {
        return new C2977x2();
    }

    @Override
    @NonNull
    public final C2977x2 toState(@NonNull byte[] bArr) throws IOException {
        return (C2977x2) MessageNano.mergeFrom(new C2977x2(), bArr);
    }
}
