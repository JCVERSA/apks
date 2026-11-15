package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import io.appmetrica.analytics.coreutils.internal.io.GZIPCompressor;
import java.util.Arrays;

public final class C2779p3 {
    public final C2754o3 a;
    public final GZIPCompressor b;

    public C2779p3() {
        this(new C2754o3(), new GZIPCompressor());
    }

    public final byte[] a(byte[] bArr) {
        try {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 16);
            C2754o3 c2754o3 = this.a;
            byte[] bytes = "hBnBQbZrmjPXEWVJ".getBytes();
            c2754o3.getClass();
            AESEncrypter aESEncrypter = new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, bytes, bArrCopyOfRange);
            if (bArr != null && bArr.length != 0) {
                return this.b.uncompress(aESEncrypter.decrypt(bArr, 16, bArr.length - 16));
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public C2779p3(C2754o3 c2754o3, GZIPCompressor gZIPCompressor) {
        this.a = c2754o3;
        this.b = gZIPCompressor;
    }
}
