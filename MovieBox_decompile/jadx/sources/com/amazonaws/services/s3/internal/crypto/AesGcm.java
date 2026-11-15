package com.amazonaws.services.s3.internal.crypto;

@Deprecated
class AesGcm extends ContentCryptoScheme {
    AesGcm() {
    }

    @Override
    int a() {
        return 16;
    }

    @Override
    String b() {
        return "AES/GCM/NoPadding";
    }

    @Override
    int c() {
        return 12;
    }

    @Override
    String d() {
        return "AES";
    }

    @Override
    int e() {
        return 256;
    }

    @Override
    String f() {
        return "BC";
    }

    @Override
    int g() {
        return 128;
    }
}
