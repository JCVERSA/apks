package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;

public final class C2433b6 extends K4 {
    public C2433b6(@NonNull String str, double d) {
        super(2, str, Double.valueOf(d), new C2936vb(), new J4(new Lb(new D4(100))));
    }

    @Override
    public final void a(@NonNull Cn cn2) {
        En en = cn2.d;
        en.c = ((Double) this.f).doubleValue() + en.c;
    }
}
