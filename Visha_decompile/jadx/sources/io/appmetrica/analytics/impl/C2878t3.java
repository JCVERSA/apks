package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public final class C2878t3 extends X2 {
    public C2878t3(int i, @NonNull String str, @NonNull PublicLogger publicLogger) {
        super(i, str, publicLogger);
    }

    @VisibleForTesting(otherwise = 3)
    public final int b() {
        return this.a;
    }

    @Override
    @Nullable
    public final byte[] a(@Nullable byte[] bArr) {
        if (bArr == null) {
            return bArr;
        }
        int length = bArr.length;
        int i = this.a;
        if (length <= i) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        this.c.warning("\"%s\" %s exceeded limit of %d bytes", this.b, bArr, Integer.valueOf(this.a));
        return bArr2;
    }

    @NonNull
    @VisibleForTesting(otherwise = 3)
    public final String a() {
        return this.b;
    }
}
