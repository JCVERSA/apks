package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;

public final class C3047zm extends K4 {
    public final InterfaceC2624in g;

    public C3047zm(@NonNull String str, @NonNull String str2, @NonNull InterfaceC2624in interfaceC2624in, @NonNull Pn pn, @NonNull U2 u2) {
        super(0, str, str2, pn, u2);
        this.g = interfaceC2624in;
    }

    @Override
    public final void a(@NonNull Cn cn2) {
        String str = (String) this.g.a((String) this.f);
        cn2.d.a = str == null ? new byte[0] : str.getBytes();
    }

    @VisibleForTesting
    public final InterfaceC2624in h() {
        return this.g;
    }
}
