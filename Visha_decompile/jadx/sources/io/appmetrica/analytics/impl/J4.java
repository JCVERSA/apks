package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class J4 extends U2 {
    public J4(@NonNull InterfaceC2728n2 interfaceC2728n2) {
        super(interfaceC2728n2);
    }

    @Override
    public final Cn a(@NonNull An an, @Nullable Cn cn2, @NonNull InterfaceC2703m2 interfaceC2703m2) {
        if (cn2 == null || cn2.c.b) {
            return this.a.a(an, ((AbstractC3038zd) interfaceC2703m2).a());
        }
        cn2.c = new Dn();
        return cn2;
    }
}
