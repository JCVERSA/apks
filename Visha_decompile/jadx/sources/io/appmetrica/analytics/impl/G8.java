package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.StateSerializer;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import java.io.IOException;

public class G8 implements StateSerializer {
    public final StateSerializer a;
    public final AESEncrypter b;

    public G8(@NonNull StateSerializer<Object> stateSerializer, @NonNull AESEncrypter aESEncrypter) {
        this.a = stateSerializer;
        this.b = aESEncrypter;
    }

    @Override
    @NonNull
    public final Object defaultValue() {
        return this.a.defaultValue();
    }

    @Override
    @NonNull
    public final byte[] toByteArray(@NonNull Object obj) {
        try {
            return this.b.encrypt(this.a.toByteArray(obj));
        } catch (Throwable unused) {
            return new byte[0];
        }
    }

    @Override
    @NonNull
    public final Object toState(@NonNull byte[] bArr) throws IOException {
        try {
            return this.a.toState(this.b.decrypt(bArr));
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }
}
