package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateSerializer;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

public final class F8 extends G8 implements ProtobufStateSerializer {
    public F8(@NonNull ProtobufStateSerializer<MessageNano> protobufStateSerializer, @NonNull AESEncrypter aESEncrypter) {
        super(protobufStateSerializer, aESEncrypter);
    }
}
