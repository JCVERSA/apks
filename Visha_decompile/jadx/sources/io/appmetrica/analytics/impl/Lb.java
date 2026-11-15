package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;

public final class Lb implements InterfaceC2728n2 {
    public final D4 a;

    public Lb(@NonNull D4 d4) {
        this.a = d4;
    }

    @Override
    @Nullable
    public final Cn a(@NonNull An an, @NonNull Cn cn2) {
        int i = an.b;
        int i2 = this.a.a;
        if (i == i2) {
            if (((Cn) ((HashMap) an.a.get(cn2.b)).get(new String(cn2.a))) != null) {
                ((HashMap) an.a.get(cn2.b)).put(new String(cn2.a), cn2);
            }
        } else if (i < i2) {
            ((HashMap) an.a.get(cn2.b)).put(new String(cn2.a), cn2);
            an.b++;
        }
        return cn2;
    }
}
