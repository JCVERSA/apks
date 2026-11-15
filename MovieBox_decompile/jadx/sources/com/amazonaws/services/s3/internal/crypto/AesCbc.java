package com.amazonaws.services.s3.internal.crypto;

@Deprecated
class AesCbc extends ContentCryptoScheme {
    AesCbc() {
    }

    @Override
    int a() {
        return 16;
    }

    @Override
    String b() {
        return "AES/CBC/PKCS5Padding";
    }

    @Override
    int c() {
        return 16;
    }

    @Override
    String d() {
        return "AES";
    }

    @Override
    int e() {
        return 256;
    }
}
