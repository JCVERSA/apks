package io.appmetrica.analytics.networktasks.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.encryption.AESRSAEncrypter;

public class AESRSARequestBodyEncrypter implements RequestBodyEncrypter {
    private final AESRSAEncrypter a;

    public AESRSARequestBodyEncrypter() {
        this(new AESRSAEncrypter());
    }

    @Override
    @Nullable
    public byte[] encrypt(@Nullable byte[] bArr) {
        return this.a.encrypt(bArr);
    }

    @Override
    @NonNull
    public RequestBodyEncryptionMode getEncryptionMode() {
        return RequestBodyEncryptionMode.AES_RSA;
    }

    public AESRSARequestBodyEncrypter(AESRSAEncrypter aESRSAEncrypter) {
        this.a = aESRSAEncrypter;
    }
}
