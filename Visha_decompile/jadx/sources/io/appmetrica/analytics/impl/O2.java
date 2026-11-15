package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateSerializer;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

public abstract class O2 implements ProtobufStateSerializer {
    @Override
    @NonNull
    public abstract MessageNano defaultValue();

    @NonNull
    public final byte[] a(@NonNull MessageNano messageNano) {
        return MessageNano.toByteArray(messageNano);
    }

    @Override
    @NonNull
    public final byte[] toByteArray(@NonNull Object obj) {
        return MessageNano.toByteArray((MessageNano) obj);
    }
}
