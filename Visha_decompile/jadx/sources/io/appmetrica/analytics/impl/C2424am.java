package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.io.IOException;

public final class C2424am extends O2 {
    @Override
    @NonNull
    public final Zl defaultValue() {
        Zl zl = new Zl();
        zl.i = new Ul();
        return zl;
    }

    @Override
    @NonNull
    public final Zl toState(@NonNull byte[] bArr) throws IOException {
        return (Zl) MessageNano.mergeFrom(new Zl(), bArr);
    }
}
