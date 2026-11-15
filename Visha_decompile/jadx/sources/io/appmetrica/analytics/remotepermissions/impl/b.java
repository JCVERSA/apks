package io.appmetrica.analytics.remotepermissions.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

public final class b implements Converter {
    public final c a = new c();

    public final byte[] a(a aVar) {
        return MessageNano.toByteArray(this.a.fromModel(aVar));
    }

    @Override
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.a.fromModel((a) obj));
    }

    @Override
    public final a toModel(byte[] bArr) {
        return this.a.toModel((f) MessageNano.mergeFrom(new f(), bArr));
    }
}
