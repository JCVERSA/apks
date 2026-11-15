package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;

public final class Xd extends K4 {
    public Xd(@NonNull String str, double d, @NonNull Pn pn, @NonNull U2 u2) {
        super(1, str, Double.valueOf(d), pn, u2);
    }

    @Override
    public final void a(@NonNull Cn cn2) {
        cn2.d.b = ((Double) this.f).doubleValue();
    }
}
