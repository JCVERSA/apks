package com.amazonaws.services.s3.internal.crypto;

@Deprecated
abstract class ContentCryptoScheme {

    static final ContentCryptoScheme f18058a = new AesCbc();

    static final ContentCryptoScheme f18059b = new AesGcm();

    static final ContentCryptoScheme f18060c = new AesCtr();

    ContentCryptoScheme() {
    }

    abstract int a();

    abstract String b();

    abstract int c();

    abstract String d();

    abstract int e();

    String f() {
        return null;
    }

    int g() {
        return 0;
    }

    public String toString() {
        return "cipherAlgo=" + b() + ", blockSizeInBytes=" + a() + ", ivLengthInBytes=" + c() + ", keyGenAlgo=" + d() + ", keyLengthInBits=" + e() + ", specificProvider=" + f() + ", tagLengthInBits=" + g();
    }
}
