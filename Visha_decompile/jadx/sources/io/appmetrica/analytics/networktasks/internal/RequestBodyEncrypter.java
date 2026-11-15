package io.appmetrica.analytics.networktasks.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public interface RequestBodyEncrypter {
    @Nullable
    byte[] encrypt(byte[] bArr);

    @NonNull
    RequestBodyEncryptionMode getEncryptionMode();
}
