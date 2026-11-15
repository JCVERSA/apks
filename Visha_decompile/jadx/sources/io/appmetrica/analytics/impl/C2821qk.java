package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.MessageNano;

public final class C2821qk extends O2 {
    @Override
    public final MessageNano defaultValue() {
        return new C2771ok();
    }

    public final C2771ok b() {
        return new C2771ok();
    }

    @Override
    public final Object defaultValue() {
        return new C2771ok();
    }

    @Override
    public final C2771ok toState(byte[] bArr) {
        return (C2771ok) MessageNano.mergeFrom(new C2771ok(), bArr);
    }
}
