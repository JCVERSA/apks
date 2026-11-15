package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;

public final class C2724mn implements Qn {
    public final L8 a;

    public C2724mn() {
        this(new L8());
    }

    @Override
    @NonNull
    public final byte[] a(@NonNull R8 r8, @NonNull C2469ch c2469ch) {
        byte[] bArrDecompressBase64GzipAsBytes = new byte[0];
        try {
            bArrDecompressBase64GzipAsBytes = Base64Utils.decompressBase64GzipAsBytes(r8.b);
        } catch (Throwable unused) {
        }
        byte[] bArrA = ((K8) this.a.a.a(r8.o)).a(bArrDecompressBase64GzipAsBytes);
        return bArrA == null ? new byte[0] : bArrA;
    }

    public C2724mn(L8 l8) {
        this.a = l8;
    }

    @NonNull
    @VisibleForTesting
    public final L8 a() {
        return this.a;
    }
}
