package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import java.util.HashMap;

public abstract class K4 extends AbstractC3038zd {
    public final Object f;

    public K4(int i, String str, Object obj, Pn pn, U2 u2) {
        super(i, str, pn, u2);
        this.f = obj;
    }

    @Override
    public final void a(@NonNull An an) {
        if (f()) {
            U2 u2 = this.d;
            int i = this.b;
            Cn cnA = u2.a(an, (Cn) ((HashMap) an.a.get(i)).get(this.a), this);
            if (cnA != null) {
                a(cnA);
            }
        }
    }

    public abstract void a(@NonNull Cn cn2);

    @NonNull
    public final Object g() {
        return this.f;
    }
}
