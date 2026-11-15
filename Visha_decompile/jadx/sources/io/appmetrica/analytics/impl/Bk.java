package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class Bk extends U2 {
    public Bk(@NonNull InterfaceC2728n2 interfaceC2728n2) {
        super(interfaceC2728n2);
    }

    @Override
    public final Cn a(@NonNull An an, @Nullable Cn cn2, @NonNull InterfaceC2703m2 interfaceC2703m2) {
        if (cn2 != null && !cn2.c.b) {
            return null;
        }
        Cn cnA = ((AbstractC3038zd) interfaceC2703m2).a();
        cnA.c.a = true;
        return this.a.a(an, cnA);
    }
}
