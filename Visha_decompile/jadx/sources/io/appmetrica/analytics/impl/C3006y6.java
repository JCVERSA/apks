package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.crypto.CryptoProvider;
import io.appmetrica.analytics.coreapi.internal.crypto.Encrypter;
import io.appmetrica.analytics.coreutils.internal.encryption.AESRSAEncrypter;

public final class C3006y6 implements CryptoProvider {
    public final AESRSAEncrypter a = new AESRSAEncrypter();

    @Override
    public final Encrypter getAesRsaEncrypter() {
        return this.a;
    }
}
