package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;

public final class C2423al implements InterfaceC2728n2 {
    @Override
    @Nullable
    public final Cn a(@NonNull An an, @NonNull Cn cn2) {
        ((HashMap) an.a.get(cn2.b)).put(new String(cn2.a), cn2);
        return cn2;
    }
}
