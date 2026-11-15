package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class C2649jn implements InterfaceC2928v3 {

    @Nullable
    public final Object a;

    @NonNull
    public final InterfaceC2928v3 b;

    public C2649jn(@Nullable Object obj, @NonNull InterfaceC2928v3 interfaceC2928v3) {
        this.a = obj;
        this.b = interfaceC2928v3;
    }

    @Override
    public final int getBytesTruncated() {
        return this.b.getBytesTruncated();
    }

    @NonNull
    public final String toString() {
        return "TrimmingResult{value=" + this.a + ", metaInfo=" + this.b + '}';
    }
}
