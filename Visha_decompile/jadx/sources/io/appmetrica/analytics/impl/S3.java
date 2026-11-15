package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.MessageNano;

public final class S3 extends O2 {
    @Override
    public final MessageNano defaultValue() {
        return new R3();
    }

    public final R3 b() {
        return new R3();
    }

    @Override
    public final Object defaultValue() {
        return new R3();
    }

    @Override
    public final R3 toState(byte[] bArr) {
        return (R3) MessageNano.mergeFrom(new R3(), bArr);
    }
}
