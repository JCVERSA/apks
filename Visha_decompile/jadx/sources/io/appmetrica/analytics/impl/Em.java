package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class Em implements InterfaceC2624in {
    public final InterfaceC2624in a;
    public final Object b;

    public Em(@NonNull InterfaceC2624in interfaceC2624in, @Nullable Object obj) {
        this.a = interfaceC2624in;
        this.b = obj;
    }

    @Override
    @Nullable
    public final Object a(@Nullable Object obj) {
        return obj != this.a.a(obj) ? this.b : obj;
    }
}
