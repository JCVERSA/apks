package io.appmetrica.analytics.impl;

import android.util.Base64;

public final class S9 implements K8 {
    @Override
    public final E8 a(C2408a6 c2408a6) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final byte[] a(byte[] bArr) {
        try {
            return Base64.decode(bArr, 0);
        } catch (Throwable unused) {
            return new byte[0];
        }
    }

    public final M8 a() {
        return M8.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER;
    }
}
