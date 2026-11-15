package io.appmetrica.analytics.impl;

import android.os.Bundle;
import androidx.annotation.NonNull;

public final class C2736na extends R4 {
    public C2736na(O4 o4) {
        super(o4);
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6, @NonNull L4 l4) {
        Bundle bundle = c2408a6.m;
        this.a.a(bundle != null ? (C2513eb) bundle.getParcelable("io.appmetrica.analytics.impl.IdentifiersData") : null);
        return false;
    }
}
