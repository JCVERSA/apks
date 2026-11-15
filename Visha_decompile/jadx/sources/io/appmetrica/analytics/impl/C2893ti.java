package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;

public final class C2893ti implements InterfaceC2928v3 {

    @NonNull
    public final Object a;

    @NonNull
    public final InterfaceC2928v3 b;

    public C2893ti(@NonNull Object obj, @NonNull InterfaceC2928v3 interfaceC2928v3) {
        this.a = obj;
        this.b = interfaceC2928v3;
    }

    @Override
    public final int getBytesTruncated() {
        return this.b.getBytesTruncated();
    }

    @NonNull
    public final String toString() {
        return "Result{result=" + this.a + ", metaInfo=" + this.b + '}';
    }
}
