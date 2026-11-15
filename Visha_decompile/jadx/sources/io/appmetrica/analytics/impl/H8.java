package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class H8 implements Qn {
    public final L8 a;

    public H8() {
        this(new L8());
    }

    @Override
    @NonNull
    public final byte[] a(@NonNull R8 r8, @NonNull C2469ch c2469ch) {
        String str = r8.b;
        return ((K8) this.a.a.a(r8.o)).a(str != null ? StringUtils.getUTF8Bytes(str) : new byte[0]);
    }

    public H8(L8 l8) {
        this.a = l8;
    }
}
