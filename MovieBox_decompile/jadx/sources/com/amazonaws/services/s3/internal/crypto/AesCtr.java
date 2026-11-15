package com.amazonaws.services.s3.internal.crypto;

@Deprecated
class AesCtr extends ContentCryptoScheme {
    AesCtr() {
    }

    @Override
    int a() {
        return ContentCryptoScheme.f18059b.a();
    }

    @Override
    String b() {
        return "AES/CTR/NoPadding";
    }

    @Override
    int c() {
        return 16;
    }

    @Override
    String d() {
        return ContentCryptoScheme.f18059b.d();
    }

    @Override
    int e() {
        return ContentCryptoScheme.f18059b.e();
    }
}
